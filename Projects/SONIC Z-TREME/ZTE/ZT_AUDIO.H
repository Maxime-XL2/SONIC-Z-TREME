#ifndef ZT_AUDIO_H
#define ZT_AUDIO_H

void ztInitSound();
void ztPlayCDDA(Sint32 startTrack, Sint32 endTrack);
void ztStopCDDA();

/** NOTE : The current function doesn't clear the channels after the playback, only after you play the sound again. There must be a setting in the tone editor I missed, but for now we just clear it first... **/
static inline void ztPlaySound(Uint8 SFX) //The direct Midi control is as follow : SndRet SND_CtrlDirMidi(SndSeqNum, SndSeqPri, Uint8 MidiCommand, Uint8 MidiChannel, Uint8 pitch, Uint8 velocity);
{
    SND_CtrlDirMidi(0x02, 0x00, MidiNoteOff, Channel1, SFX, 127); //Stop the note (clears the channel)
    SND_CtrlDirMidi(0x02, 0x00, MidiNoteOn, Channel1, SFX, 127); //Plays the note (it will stop playing once it's done, but won't clear the channel)
}


#endif // ZT_AUDIO_H
