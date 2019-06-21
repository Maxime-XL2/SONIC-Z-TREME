#include        "ZTE_DEF.H"

static	CdcPly	playdata;
static	CdcPos	posdata;

void loadSndDrv(void)
{
    Sint32 fid;
    void * ptr = (void*)LWRAM;
    fid = ztCDopen((Sint8*)"SDDRVS.TSK");
    ztCDload(fid, 0, ptr, 26610);

    ptr=(void*)(LWRAM+26610+2);
    fid = ztCDopen((Sint8*)"MAP.BIN");
    ztCDload(fid, 0, ptr, 10);

    SndIniDt sndInit;
    SND_INI_PRG_ADR(sndInit)=(Uint16*)LWRAM;
    SND_INI_PRG_SZ(sndInit)=(Uint16)(26610);

    SND_INI_ARA_ADR(sndInit)=(Uint16*)(LWRAM+26610+2);
    SND_INI_ARA_SZ(sndInit)=(Uint16)(10);
    SND_Init(&sndInit);
}

void loadSndData(void)
{
    SND_ChgMap(0);
    Sint32 fid;
    void * ptr = (void*)LWRAM;
    fid = ztCDopen((Sint8*)"TONE.BIN");
    ztCDload(fid, 0, ptr, 352514);
    SND_MoveData((Uint16*)ptr, (Uint32)352514, SND_KD_TONE, 0);
}

/** TODO : Change this implementation for something better and implement MIDI audio **/
void ztPlayCDDA(Sint32 startTrack, Sint32 endTrack)
{
    CDC_PLY_STYPE(&playdata) = CDC_PTYPE_TNO;
    CDC_PLY_STNO(&playdata) = startTrack+1;
    CDC_PLY_SIDX(&playdata) = 1;  //First track ID
    CDC_PLY_ETYPE(&playdata) = CDC_PTYPE_TNO;
    CDC_PLY_ETNO(&playdata) = endTrack+1;
    CDC_PLY_EIDX(&playdata) = 1;
    CDC_PLY_PMODE(&playdata) = CDC_PM_DFL + 15;
    CDC_CdPlay(&playdata);
}

void ztStopCDDA( void )
{
    CDC_POS_PTYPE( &posdata ) = CDC_PTYPE_DFL;	/* Stop Music. */
}


void ztInitSound()
{
    /*
    Sound map structure :
    Byte 0 : 0, using 3 bits for a sequence : 0x0K where K = bank ID, with 4 bits (so max 16 banks per map)
    Bytes 1, 2 and 3 : first 4 bits are unused, the remaining bits are the start of the bank's adress
    Byte 4 : first bit is 0, the rest is unused AFAIK
    Byte 5, 6 and 7 : area size
    */

    ztCDsetDir("SOUND");
    {

        loadSndDrv();
        loadSndData();

        CDC_CdInit(0x00,0x00,0x05,0x0f);

        SND_ChgMix(0, 0);
        SND_SetTlVl(15);

        SND_CtrlDirMidi(0x02, 0x00, MidiCtrlChg, 0x01, 0x20, 0x00);
        SND_CtrlDirMidi(0x02, 0x00, MidiPrgChg, 0x01, 0x00, 0x00);  //If you have more than 1 voice, you will need to do a program change at some point
        SND_SetCdDaLev(7,7);
        SND_SetCdDaPan(-15,15);
    }
    ztCDsetRoot();
}
