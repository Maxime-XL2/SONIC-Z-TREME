/*
 *     ƒ\ƒtƒgƒEƒFƒAƒ‰ƒCƒuƒ‰ƒŠ
 *
 *     Copyright (c) 1994 SEGA
 *
 *  Library: ‚b‚c’Ê?MƒCƒ“ƒ^ƒtƒF?[ƒX?iCDC?j
 *  Module : CDCƒ‰ƒCƒuƒ‰ƒŠ—pƒwƒbƒ_ƒtƒ@ƒCƒ‹
 *  File   : sega_cdc.h
 *  Date   : 1995-03-31
 *  Version: 1.20
 *  Author : M.M.
 *
 */

/* ‘½?dƒCƒ“ƒNƒ‹?[ƒh‚Ö‚Ì‘Î‰ž */
#ifndef SEGA_CDC_H
#define SEGA_CDC_H

/*******************************************************************
*       ƒCƒ“ƒNƒ‹?[ƒhƒtƒ@ƒCƒ‹
*******************************************************************/
#include    "sega_xpt.h"

/*******************************************************************
*       ’è?”ƒ}ƒNƒ?
*******************************************************************/

/* Š„‚è?ž‚Ý—vˆöƒŒƒWƒXƒ^ŠÖŒW?iHIRQREQ, HIRQMSK?j‚Ìƒrƒbƒg–¼ */
#define CDC_HIRQ_CMOK   0x0001  /* bit0 ?FƒRƒ}ƒ“ƒh”­?s‰Â”\ */
#define CDC_HIRQ_DRDY   0x0002  /* bit1 ?Fƒf?[ƒ^“]‘—?€”õŠ®—¹ */
#define CDC_HIRQ_CSCT   0x0004  /* bit2 ?F‚PƒZƒNƒ^“Ç‚Ý?ž‚ÝŠ®—¹ */
#define CDC_HIRQ_BFUL   0x0008  /* bit3 ?F‚b‚cƒoƒbƒtƒ@ƒtƒ‹ */
#define CDC_HIRQ_PEND   0x0010  /* bit4 ?F‚b‚c?Ä?¶‚Ì?I—¹ */
#define CDC_HIRQ_DCHG   0x0020  /* bit5 ?FƒfƒBƒXƒNŒðŠ·‚Ì”­?¶ */
#define CDC_HIRQ_ESEL   0x0040  /* bit6 ?FƒZƒŒƒNƒ^?Ý’è?ˆ—?‚Ì?I—¹ */
#define CDC_HIRQ_EHST   0x0080  /* bit7 ?FƒzƒXƒg“ü?o—Í?ˆ—?‚Ì?I—¹ */
#define CDC_HIRQ_ECPY   0x0100  /* bit8 ?F•¡ŽÊ?^ˆÚ“®?ˆ—?‚Ì?I—¹ */
#define CDC_HIRQ_EFLS   0x0200  /* bit9 ?Fƒtƒ@ƒCƒ‹ƒVƒXƒeƒ€?ˆ—?‚Ì?I—¹ */
#define CDC_HIRQ_SCDQ   0x0400  /* bit10?FƒTƒuƒR?[ƒh‚p‚Ì?v?X?VŠ®—¹ */
#define CDC_HIRQ_MPED   0x0800  /* bit11?FMPEGŠÖ˜A?ˆ—?‚Ì?I—¹ */
#define CDC_HIRQ_MPCM   0x1000  /* bit12?FMPEG“®?ì•s’è‹æŠÔ‚Ì?I—¹ */
#define CDC_HIRQ_MPST   0x2000  /* bit13?FMPEGŠ„‚è?ž‚ÝƒXƒe?[ƒ^ƒX‚Ì’Ê’m */
    
/* ƒoƒbƒtƒ@‹æ‰æ‚ÌƒZƒNƒ^”ÍˆÍ?iƒZƒNƒ^ˆÊ’u‚ÆƒZƒNƒ^?”?j‚Ì“ÁŽêŽw’è */
/* ?i‚¢‚¸‚ê‚à‰ºˆÊ16ƒrƒbƒg‚ª—LŒø‚Å?A“à•”“I‚É‚Í0xffff‚Æ“¯’l?j */
#define CDC_SPOS_END    -1  /* ‹æ‰æ?ÅŒã‚ÌƒZƒNƒ^ˆÊ’u‚ðŽ¦‚· */
#define CDC_SNUM_END    -1  /* Žw’è¾¸ÀˆÊ’u‚©‚ç‹æ‰æ?ÅŒã‚Ü‚Å‚Ì¾¸À?”‚ðŽ¦‚· */

/* ‚»‚Ì‘¼‚Ì“ÁŽêŽw’è */
#define CDC_PARA_DFL    0       /* ƒpƒ‰ƒ??[ƒ^‚Ì?È—ª’lŽw’è */
#define CDC_PARA_NOCHG  -1      /* ƒpƒ‰ƒ??[ƒ^‚Ì–¢•Ï?XŽw’è */
#define CDC_NUL_SEL     0xff    /* ƒZƒŒƒNƒ^”Ô?†‚Ì“ÁŽê’l */
#define CDC_NUL_FID     -1      /* ƒtƒ@ƒCƒ‹Ž¯•ÊŽq‚Ì“ÁŽê’l (0xffffff) */

/* ‚b‚cƒtƒ‰ƒO */
#define CDC_CDFLG_ROM   0x80    /* CD-ROMƒfƒR?[ƒh’† */

/* ƒn?[ƒhƒEƒFƒAƒtƒ‰ƒO?iƒn?[ƒhƒEƒFƒA?î•ñ“à?j */
#define CDC_HFLAG_MPEG  0x02    /* MPEG‚ ‚è */
#define CDC_HFLAG_HERR  0x80    /* ƒn?[ƒhƒEƒFƒAƒGƒ‰?[”­?¶ */

/* ?Ä?¶ƒ‚?[ƒh?i‚b‚c?Ä?¶ƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_PM_DFL          0x00    /* ?Ä?¶ƒ‚?[ƒh‚Ì?È—ª’l */
#define CDC_PM_REP_NOCHG    0x7f    /* ?Å‘åƒŠƒs?[ƒg‰ñ?”‚ð•Ï?X‚µ‚È‚¢ */
#define CDC_PM_PIC_NOCHG    0x80    /* ƒsƒbƒNƒAƒbƒvˆÊ’u‚ð•Ï?X‚µ‚È‚¢ */
#define CDC_PM_NOCHG        -1      /* ?Ä?¶ƒ‚?[ƒh‚ð•Ï?X‚µ‚È‚¢ (0xff) */

/* ƒTƒuƒ‚?[ƒh */
#define CDC_SM_EOR      0x01    /* ƒŒƒR?[ƒh?ÅŒã‚ÌƒZƒNƒ^ */
#define CDC_SM_VIDEO    0x02    /* ƒrƒfƒIƒZƒNƒ^ */
#define CDC_SM_AUDIO    0x04    /* ƒI?[ƒfƒBƒIƒZƒNƒ^ */
#define CDC_SM_DATA     0x08    /* ƒf?[ƒ^ƒZƒNƒ^ */
#define CDC_SM_TRIG     0x10    /* ƒgƒŠƒK‚n‚m */
#define CDC_SM_FORM     0x20    /* ƒtƒH?[ƒ€ƒrƒbƒg?i1:Form2,  0:Form1?j*/
#define CDC_SM_RT       0x40    /* ƒŠƒAƒ‹ƒ^ƒCƒ€ƒZƒNƒ^ */
#define CDC_SM_EOF      0x80    /* ƒtƒ@ƒCƒ‹?ÅŒã‚ÌƒZƒNƒ^ */

/* ƒtƒ@ƒCƒ‹ƒAƒgƒŠƒrƒ…?[ƒg?iƒtƒ@ƒCƒ‹?î•ñ“à?j */
#define CDC_ATR_DIRFG   0x02    /* ƒfƒBƒŒƒNƒgƒŠ‚Å‚ ‚é */
#define CDC_ATR_FORM1   0x08    /* Form1ƒZƒNƒ^‚ðŠÜ‚Þ */
#define CDC_ATR_FORM2   0x10    /* Form2ƒZƒNƒ^‚ðŠÜ‚Þ */
#define CDC_ATR_INTLV   0x20    /* ƒCƒ“ƒ^ƒŠ?[ƒuƒZƒNƒ^‚ðŠÜ‚Þ */
#define CDC_ATR_CDDA    0x40    /* CD-DAƒtƒ@ƒCƒ‹ */
#define CDC_ATR_DIRXA   0x80    /* ƒfƒBƒŒƒNƒgƒŠƒtƒ@ƒCƒ‹ */

/* ƒXƒ^ƒ“ƒoƒCƒ^ƒCƒ€ */
#define CDC_STNBY_MIN   60      /* ?Å?¬’l */
#define CDC_STNBY_MAX   900     /* ?Å‘å’l */

/* ƒTƒuƒR?[ƒhƒtƒ‰ƒO */
#define CDC_SCD_PACK    0x01    /* ƒpƒbƒNƒf?[ƒ^ƒGƒ‰?[ */
#define CDC_SCD_OVER    0x02    /* ƒI?[ƒo?[ƒ‰ƒ“ƒGƒ‰?[ */

/* ‚b‚cƒuƒ?ƒbƒN‚Ì“]‘—ƒ??[ƒh?” */
#define CDC_DEND_ERR    0xffffff    /* ƒf?[ƒ^“]‘—‚ÅƒGƒ‰?[‚ª”­?¶ */

/* ŽÀƒf?[ƒ^ƒTƒCƒY */
#define CDC_ACTSIZ_ERR  0xffffff    /* ŒvŽZ‚ðŽÀ?s‚Å‚«‚È‚©‚Á‚½ */

/* ƒtƒŒ?[ƒ€ƒAƒhƒŒƒXŒŸ?õŒ‹‰Ê?iƒZƒNƒ^ˆÊ’u‚ÆƒtƒŒ?[ƒ€ƒAƒhƒŒƒX?j */
#define CDC_SPOS_ERR    0xffff      /* ŒŸ?õ‚ÅƒGƒ‰?[‚ª”­?¶ */
#define CDC_FAD_ERR     0xffffff    /* ŒŸ?õ‚ðŽÀ?s‚Å‚«‚È‚©‚Á‚½ */

/* ƒ}ƒXƒNƒrƒbƒgƒpƒ^?[ƒ“ */
#define CDC_STC_MSK     0x0f    /* ƒXƒe?[ƒ^ƒXƒR?[ƒh */

/*******************************************************************
*       —ñ‹“’è?”
*******************************************************************/

/* ƒGƒ‰?[ƒR?[ƒh */
enum CdcErrCode {
    CDC_ERR_OK = OK,    /* ŠÖ?”‚ª?³?í?I—¹‚µ‚½ */

    CDC_ERR_CMDBUSY=-1, /* ƒRƒ}ƒ“ƒh?I—¹ƒtƒ‰ƒO‚ª‚P‚É‚È‚Á‚Ä‚¢‚È‚¢ */
    CDC_ERR_CMDNG  =-2, /* ƒRƒ}ƒ“ƒh”­?sŽž?ACMOKƒtƒ‰ƒO‚ª‚P‚É‚È‚Á‚Ä‚¢‚È‚¢ */
    CDC_ERR_TMOUT  =-3, /* ƒ^ƒCƒ€ƒAƒEƒg?iÚ½ÎßÝ½‘Ò‚¿?AÃÞ°À“]‘—?€”õ‘Ò‚¿?j*/
    CDC_ERR_PUT    =-4, /* ?‘‚«?ž‚Ý?€”õ‚Å‹ó‚«ƒZƒNƒ^‚ðŠm•Û‚Å‚«‚È‚©‚Á‚½ */
    CDC_ERR_REJECT =-5, /* ƒRƒ}ƒ“ƒh‚É‘Î‚·‚éƒŒƒXƒ|ƒ“ƒX‚ªREJECT‚Æ‚È‚Á‚½ */
    CDC_ERR_WAIT   =-6, /* ƒRƒ}ƒ“ƒh‚É‘Î‚·‚éƒŒƒXƒ|ƒ“ƒX‚ªWAIT‚Æ‚È‚Á‚½ */
    CDC_ERR_TRNS   =-7, /* ƒf?[ƒ^“]‘—ƒTƒCƒY‚ªˆÙ?í‚Å‚ ‚é */
    CDC_ERR_PERI   =-8  /* ’èŠúƒŒƒXƒ|ƒ“ƒX‚ðŽæ“¾‚Å‚«‚È‚©‚Á‚½ */
};

/* ƒXƒe?[ƒ^ƒX */
enum CdcStatus {
    /* ƒXƒe?[ƒ^ƒXƒR?[ƒh?i‚b‚cƒhƒ‰ƒCƒu?ó‘Ô?j */
    CDC_ST_BUSY     = 0x00,     /* ?ó‘Ô‘JˆÚ’† */
    CDC_ST_PAUSE    = 0x01,     /* ƒ|?[ƒY’†?iˆêŽž’âŽ~?j */
    CDC_ST_STANDBY  = 0x02,     /* ƒXƒ^ƒ“ƒoƒC?iƒhƒ‰ƒCƒu’âŽ~?ó‘Ô?j */
    CDC_ST_PLAY     = 0x03,     /* ‚b‚c?Ä?¶’† */
    CDC_ST_SEEK     = 0x04,     /* ƒV?[ƒN’† */
    CDC_ST_SCAN     = 0x05,     /* ƒXƒLƒƒƒ“?Ä?¶’† */
    CDC_ST_OPEN     = 0x06,     /* ƒgƒŒƒC‚ªŠJ‚¢‚Ä‚¢‚é */
    CDC_ST_NODISC   = 0x07,     /* ƒfƒBƒXƒN‚ª‚È‚¢ */
    CDC_ST_RETRY    = 0x08,     /* ƒŠ?[ƒhƒŠƒgƒ‰ƒC?ˆ—?’† */
    CDC_ST_ERROR    = 0x09,     /* ƒŠ?[ƒhƒf?[ƒ^ƒGƒ‰?[‚ª”­?¶‚µ‚½ */
    CDC_ST_FATAL    = 0x0a,     /* ’v–½“IƒGƒ‰?[‚ª”­?¶‚µ‚½ */

    /* ‚»‚Ì‘¼ */
    CDC_ST_PERI     = 0x20,     /* ’èŠúƒŒƒXƒ|ƒ“ƒX */
    CDC_ST_TRNS     = 0x40,     /* ƒf?[ƒ^“]‘——v‹?‚ ‚è */
    CDC_ST_WAIT     = 0x80,     /* WAIT */
    CDC_ST_REJECT   = 0xff      /* REJECT */
};

/* ˆÊ’uƒ^ƒCƒv?i?Ä?¶?AƒV?[ƒNŽž‚É‚¨‚¯‚é‚b‚cˆÊ’uƒpƒ‰ƒ??[ƒ^‚ÅŽw’è?j */
enum CdcPosType {
    CDC_PTYPE_DFL,          /* ?È—ª’l‚ÌŽw’è */
    CDC_PTYPE_FAD,          /* ƒtƒŒ?[ƒ€ƒAƒhƒŒƒXŽw’è */
    CDC_PTYPE_TNO,          /* ƒgƒ‰ƒbƒN?^ƒCƒ“ƒfƒbƒNƒXŽw’è */
    CDC_PTYPE_NOCHG,        /* –¢•Ï?X‚ÌŽw’è?i?Ý’è’l‚ð•Ï?X‚µ‚È‚¢?j */

    CDC_PTYPE_END
};

/* “]‘—?€”õ‘Ò‚¿ƒ^ƒCƒv?iƒf?[ƒ^“]‘—‚Ì?€”õ‘Ò‚¿‚ÅŽw’è?j */
enum CdcDrdyType {
    CDC_DRDY_GET,           /* ƒf?[ƒ^‚ðŽæ‚è?o‚·?iCDÌÞÛ¯¸?¨Î½Ä?j */
    CDC_DRDY_PUT,           /* ƒf?[ƒ^‚ð?‘‚«?ž‚Þ?iÎ½Ä?¨CDÌÞÛ¯¸?j */

    CDC_DRDY_END
};

/* ƒXƒLƒƒƒ“•ûŒü */
enum CdcScanDir {
    CDC_SCAN_FWD = 0x00,    /* ‘?‘—‚è?Ä?¶ */
    CDC_SCAN_RVS = 0x01     /* ‘?–ß‚µ?Ä?¶ */
};

/* ƒZƒNƒ^’· */
enum CdcSctLen {
    CDC_SLEN_2048  = 0,     /* 2048ƒoƒCƒg‚Æ2324ƒoƒCƒg?iƒ†?[ƒUƒf?[ƒ^?j*/
    CDC_SLEN_2336  = 1,     /* 2336ƒoƒCƒg?iƒTƒuƒwƒbƒ_‚Ü‚Å?j*/
    CDC_SLEN_2340  = 2,     /* 2340ƒoƒCƒg?iƒwƒbƒ_‚Ü‚Å?j*/
    CDC_SLEN_2352  = 3,     /* 2352ƒoƒCƒg?iƒZƒNƒ^‘S‘Ì?j*/
    CDC_SLEN_NOCHG = -1     /* ?Ý’è‚ð•Ï?X‚µ‚È‚¢ (0xff) */
};

/* •¡ŽÊ?^ˆÚ“®ƒGƒ‰?[?î•ñ */
enum CdcCopyErr {
    CDC_COPY_OK   = 0,      /* ?³?í?I—¹ */
    CDC_COPY_NG   = 1,      /* ƒGƒ‰?[”­?¶ */
    CDC_COPY_BUSY = 0xff    /* •¡ŽÊ?^ˆÚ“®?ˆ—?’† */
};

/*******************************************************************
*       ?\‘¢‘ÌƒAƒNƒZƒX?ˆ—?ƒ}ƒNƒ?
*******************************************************************/

/* ‚b‚cƒXƒe?[ƒ^ƒX?î•ñ */
#define CDC_STAT_STATUS(stat)       ((stat)->status)
#define CDC_STAT_FLGREP(stat)       ((stat)->report.flgrep)
#define CDC_STAT_CTLADR(stat)       ((stat)->report.ctladr)
#define CDC_STAT_TNO(stat)          ((stat)->report.tno)
#define CDC_STAT_IDX(stat)          ((stat)->report.idx)
#define CDC_STAT_FAD(stat)          ((stat)->report.fad)

/* ƒn?[ƒhƒEƒFƒA?î•ñ */
#define CDC_HW_HFLAG(hw)            ((hw)->hflag)
#define CDC_HW_VER(hw)              ((hw)->ver)
#define CDC_HW_MPVER(hw)            ((hw)->mpver)
#define CDC_HW_DRV(hw)              ((hw)->drv)
#define CDC_HW_REV(hw)              ((hw)->rev)

/* ‚b‚cˆÊ’uƒpƒ‰ƒ??[ƒ^ */
#define CDC_POS_PTYPE(pos)          ((pos)->ptype)
#define CDC_POS_FAD(pos)            ((pos)->pbody.fad)
#define CDC_POS_TNO(pos)            ((pos)->pbody.trkidx.tno)
#define CDC_POS_IDX(pos)            ((pos)->pbody.trkidx.idx)

/* ‚b‚c?Ä?¶ƒpƒ‰ƒ??[ƒ^ */
#define CDC_PLY_START(ply)          ((ply)->start)
#define CDC_PLY_END(ply)            ((ply)->end)
#define CDC_PLY_PMODE(ply)          ((ply)->pmode)

#define CDC_PLY_STYPE(ply)          CDC_POS_PTYPE(&CDC_PLY_START(ply))
#define CDC_PLY_SFAD(ply)           CDC_POS_FAD(&CDC_PLY_START(ply))
#define CDC_PLY_STNO(ply)           CDC_POS_TNO(&CDC_PLY_START(ply))
#define CDC_PLY_SIDX(ply)           CDC_POS_IDX(&CDC_PLY_START(ply))

#define CDC_PLY_ETYPE(ply)          CDC_POS_PTYPE(&CDC_PLY_END(ply))
#define CDC_PLY_EFAS(ply)           CDC_POS_FAD(&CDC_PLY_END(ply))
#define CDC_PLY_ETNO(ply)           CDC_POS_TNO(&CDC_PLY_END(ply))
#define CDC_PLY_EIDX(ply)           CDC_POS_IDX(&CDC_PLY_END(ply))

/* ƒTƒuƒwƒbƒ_?ðŒ? */
#define CDC_SUBH_FN(subh)           ((subh)->fn)
#define CDC_SUBH_CN(subh)           ((subh)->cn)
#define CDC_SUBH_SMMSK(subh)        ((subh)->smmsk)
#define CDC_SUBH_SMVAL(subh)        ((subh)->smval)
#define CDC_SUBH_CIMSK(subh)        ((subh)->cimsk)
#define CDC_SUBH_CIVAL(subh)        ((subh)->cival)

/* ƒZƒNƒ^?î•ñ */
#define CDC_SCT_FAD(sct)            ((sct)->fad)
#define CDC_SCT_FN(sct)             ((sct)->fn)
#define CDC_SCT_CN(sct)             ((sct)->cn)
#define CDC_SCT_SM(sct)             ((sct)->sm)
#define CDC_SCT_CI(sct)             ((sct)->ci)

/* ƒtƒ@ƒCƒ‹?î•ñ */
#define CDC_FILE_FAD(file)          ((file)->fad)
#define CDC_FILE_SIZE(file)         ((file)->size)
#define CDC_FILE_UNIT(file)         ((file)->unit)
#define CDC_FILE_GAP(file)          ((file)->gap)
#define CDC_FILE_FN(file)           ((file)->fn)
#define CDC_FILE_ATR(file)          ((file)->atr)

/*******************************************************************
*       ?ˆ—?ƒ}ƒNƒ?
*******************************************************************/

/* ‚b‚cƒXƒe?[ƒ^ƒX?î•ñ‚©‚çƒXƒe?[ƒ^ƒXƒR?[ƒh‚ðŽæ“¾ */
#define CDC_GET_STC(stat)       (CDC_STAT_STATUS(stat) & CDC_STC_MSK)

/* ‚b‚cƒXƒe?[ƒ^ƒX?î•ñ‚©‚çƒŠƒs?[ƒg‰ñ?”‚ðŽæ“¾ */
#define CDC_GET_REPEAT(stat)    (CDC_STAT_FLGREP(stat) & 0x0f)

/* MPEG‚ªŽg—p‰Â”\‚©’²‚×‚é?iTRUE?FŽg—p‰Â”\?AFALSE?FŽg—p•s‰Â?j */
/* ’?ˆÓ?F‚±‚Ìƒ}ƒNƒ?‚Íƒ}ƒjƒ…ƒAƒ‹‚É‹L?q‚µ‚È‚¢ */
#define CDC_IS_MPEG_ENA(hw)     (CDC_HW_MPVER(hw) != 0)

/*******************************************************************
*       ƒf?[ƒ^Œ^‚Ì?éŒ¾
*******************************************************************/

/* ‚b‚cƒXƒe?[ƒ^ƒX?î•ñ?iƒXƒe?[ƒ^ƒX?{‚b‚cƒŒƒ|?[ƒg?j */
typedef struct {
    Uint8   status;         /* ƒXƒe?[ƒ^ƒX */
    struct {                /* ‚b‚cƒŒƒ|?[ƒg */
        Uint8   flgrep;     /* ‚b‚cƒtƒ‰ƒO‚ÆƒŠƒs?[ƒg‰ñ?” */
        Uint8   ctladr;     /* CONTROL/ADRƒoƒCƒg */
        Uint8   tno;        /* ƒgƒ‰ƒbƒN”Ô?† */
        Uint8   idx;        /* ƒCƒ“ƒfƒbƒNƒX”Ô?† */
        Sint32  fad;        /* ƒtƒŒ?[ƒ€ƒAƒhƒŒƒX */
    } report;
} CdcStat;

/* ƒn?[ƒhƒEƒFƒA?î•ñ */
typedef struct {
    Uint8   hflag;          /* ƒn?[ƒhƒEƒFƒAƒtƒ‰ƒO */
    Uint8   ver;            /* ‚b‚cƒuƒ?ƒbƒN‚Ìƒo?[ƒWƒ‡ƒ“?î•ñ */
    Uint8   mpver;          /* MPEG‚Ìƒo?[ƒWƒ‡ƒ“?î•ñ */
    Uint8   drv;            /* ‚b‚cƒhƒ‰ƒCƒu?î•ñ */
    Uint8   rev;            /* ‚b‚cƒuƒ?ƒbƒN‚ÌƒŠƒrƒWƒ‡ƒ“?î•ñ */
} CdcHw;

/* ‚b‚cˆÊ’uƒpƒ‰ƒ??[ƒ^ */
typedef struct {
    Sint32 ptype;           /* ˆÊ’uƒ^ƒCƒv?iˆÊ’uƒpƒ‰ƒ??[ƒ^‚ÌŽí—Þ‚ÌŽw’è?j*/
    union {
        Sint32 fad;         /* ƒtƒŒ?[ƒ€ƒAƒhƒŒƒX?AƒZƒNƒ^?” */
        struct {
            Uint8 tno;      /* ƒgƒ‰ƒbƒN”Ô?† */
            Uint8 idx;      /* ƒCƒ“ƒfƒbƒNƒX”Ô?† */
        } trkidx;
    } pbody;
} CdcPos;

/* ‚b‚c?Ä?¶ƒpƒ‰ƒ??[ƒ^ */
typedef struct {
    CdcPos  start;          /* ŠJŽnˆÊ’u */
    CdcPos  end;            /* ?I—¹ˆÊ’u */
    Uint8   pmode;          /* ?Ä?¶ƒ‚?[ƒh?iËß¯¸±¯ÌßˆÚ“®?AŒJ‚è•Ô‚µ‰ñ?”?j*/
} CdcPly;

/* ƒTƒuƒwƒbƒ_?ðŒ? */
typedef struct {
    Uint8   fn;             /* ƒtƒ@ƒCƒ‹”Ô?† */
    Uint8   cn;             /* ƒ`ƒƒƒlƒ‹”Ô?† */
    Uint8   smmsk;          /* ƒTƒuƒ‚?[ƒh‚Ìƒ}ƒXƒNƒpƒ^?[ƒ“ */
    Uint8   smval;          /* ƒTƒuƒ‚?[ƒh‚Ì”äŠr’l */
    Uint8   cimsk;          /* ƒR?[ƒfƒBƒ“ƒO?î•ñ‚Ìƒ}ƒXƒNƒpƒ^?[ƒ“ */
    Uint8   cival;          /* ƒR?[ƒfƒBƒ“ƒO?î•ñ‚Ì”äŠr’l */
} CdcSubh;

/* ƒZƒNƒ^?î•ñ */
typedef struct {
    Sint32  fad;            /* ƒtƒŒ?[ƒ€ƒAƒhƒŒƒX */
    Uint8   fn;             /* ƒtƒ@ƒCƒ‹”Ô?† */
    Uint8   cn;             /* ƒ`ƒƒƒlƒ‹”Ô?† */
    Uint8   sm;             /* ƒTƒuƒ‚?[ƒh */
    Uint8   ci;             /* ƒR?[ƒfƒBƒ“ƒO?î•ñ */
} CdcSct;

/* ƒtƒ@ƒCƒ‹?î•ñ */
typedef struct {
    Sint32  fad;            /* ƒtƒ@ƒCƒ‹?æ“ªƒtƒŒ?[ƒ€ƒAƒhƒŒƒX */
    Sint32  size;           /* ƒtƒ@ƒCƒ‹ƒTƒCƒY?iƒoƒCƒg?”?j */
    Uint8   unit;           /* ƒtƒ@ƒCƒ‹ƒ†ƒjƒbƒgƒTƒCƒY */
    Uint8   gap;            /* ƒMƒƒƒbƒvƒTƒCƒY */
    Uint8   fn;             /* ƒtƒ@ƒCƒ‹”Ô?† */
    Uint8   atr;            /* ƒtƒ@ƒCƒ‹ƒAƒgƒŠƒrƒ…?[ƒg */
} CdcFile;

/*******************************************************************
*       •Ï?”?éŒ¾
*******************************************************************/

/*******************************************************************
*       ŠÖ?”?éŒ¾
*******************************************************************/

/* cdc_cmn.c */
Sint32  CDC_GetCurStat(CdcStat *stat);
Sint32  CDC_GetLastStat(CdcStat *stat);
Sint32  CDC_GetHwInfo(CdcHw *hw);
Sint32  CDC_TgetToc(Uint32 *toc);
Sint32  CDC_GetSes(Sint32 sesno, Uint32 *ses);
Sint32  CDC_CdInit(Sint32 iflag, Sint32 stnby, Sint32 ecc, Sint32 retry);
Sint32  CDC_CdOpen(void);
Sint32  CDC_DataReady(Sint32 dtype);
Sint32  CDC_DataEnd(Sint32 *cdwnum);
Sint32  CDC_GetPeriStat(CdcStat *stat);

/* cdc_drv.c */
Sint32  CDC_CdPlay(CdcPly *ply);
Sint32  CDC_CdSeek(CdcPos *pos);
Sint32  CDC_CdScan(Sint32 scandir);

/* cdc_scd.c */
Sint32  CDC_TgetScdQch(Uint16 *qcode);
Sint32  CDC_TgetScdRwch(Uint16 *rwcode, Sint32 *scdflag);

/* cdc_dev.c */
Sint32  CDC_CdSetCon(Sint32 filtno);
Sint32  CDC_CdGetCon(Sint32 *filtno);
Sint32  CDC_CdGetLastBuf(Sint32 *bufno);

/* cdc_sel.c */
Sint32  CDC_SetFiltRange(Sint32 filtno, Sint32 fad, Sint32 fasnum);
Sint32  CDC_GetFiltRange(Sint32 filtno, Sint32 *fad, Sint32 *fasnum);
Sint32  CDC_SetFiltSubh(Sint32 filtno, CdcSubh *subh);
Sint32  CDC_GetFiltSubh(Sint32 filtno, CdcSubh *subh);
Sint32  CDC_SetFiltMode(Sint32 filtno, Sint32 fmode);
Sint32  CDC_GetFiltMode(Sint32 filtno, Sint32 *fmode);
Sint32  CDC_SetFiltCon(Sint32 filtno, Sint32 cflag, Sint32 bufno,
                       Sint32 flnout);
Sint32  CDC_GetFiltCon(Sint32 filtno, Sint32 *bufno, Sint32 *flnout);
Sint32  CDC_ResetSelector(Sint32 rflag, Sint32 bufno);

/* cdc_bif.c */
Sint32  CDC_GetBufSiz(Sint32 *totalsiz, Sint32 *bufnum, Sint32 *freesiz);
Sint32  CDC_GetSctNum(Sint32 bufno, Sint32 *snum);
Sint32  CDC_CalActSiz(Sint32 bufno, Sint32 spos, Sint32 snum);
Sint32  CDC_GetActSiz(Sint32 *actwnum);
Sint32  CDC_GetSctInfo(Sint32 bufno, Sint32 spos, CdcSct *sct);
Sint32  CDC_ExeFadSearch(Sint32 bufno, Sint32 spos, Sint32 fad);
Sint32  CDC_GetFadSearch(Sint32 *bufno, Sint32 *spos, Sint32 *fad);

/* cdc_bio.c */
Sint32  CDC_SetSctLen(Sint32 getslen, Sint32 putslen);
Sint32  CDC_GetSctData(Sint32 bufno, Sint32 spos, Sint32 snum);
Sint32  CDC_DelSctData(Sint32 bufno, Sint32 spos, Sint32 snum);
Sint32  CDC_GetdelSctData(Sint32 bufno, Sint32 spos, Sint32 snum);
Sint32  CDC_PutSctData(Sint32 filtno, Sint32 snum);
Sint32  CDC_CopySctData(Sint32 srcbn, Sint32 spos, Sint32 snum,
                        Sint32 dstfln);
Sint32  CDC_MoveSctData(Sint32 srcbn, Sint32 spos, Sint32 snum,
                        Sint32 dstfln);
Sint32  CDC_GetCopyErr(Sint32 *cpyerr);

/* cdc_cfs.c */
Sint32  CDC_ChgDir(Sint32 filtno, Sint32 fid);
Sint32  CDC_ReadDir(Sint32 filtno, Sint32 fid);
Sint32  CDC_GetFileScope(Sint32 *fid, Sint32 *infnum, Bool *drend);
Sint32  CDC_TgetFileInfo(Sint32 fid, CdcFile *file);
Sint32  CDC_ReadFile(Sint32 filtno, Sint32 fid, Sint32 offset);
Sint32  CDC_AbortFile(void);

/* cdc_reg.c */
Uint32  *CDC_GetDataPtr(void);
Sint32  CDC_GetHirqReq(void);
void    CDC_ClrHirqReq(Sint32 bitpat);
Sint32  CDC_GetHirqMsk(void);
void    CDC_SetHirqMsk(Sint32 bitpat);
Uint32  *CDC_GetMpegPtr(void);



/********************************************************************/
/********************************************************************/
/********************************************************************/
/*------------------------------------------------------------------*/
/*------------------------- ?sMPEGƒp?[ƒg?t -------------------------*/
/*------------------------------------------------------------------*/
/********************************************************************/
/********************************************************************/
/********************************************************************/



/*******************************************************************
*       ’è?”ƒ}ƒNƒ?
*******************************************************************/

/* ƒEƒBƒ“ƒhƒEƒTƒCƒY‚Æ?À•W‚Ì?Å‘å’l */
#define CDC_MPNT_NSX    352           /* NTSC’Ê?í‚w•ûŒüƒTƒCƒY(352) */
#define CDC_MPNT_NSY    240           /* NTSC’Ê?í‚x•ûŒüƒTƒCƒY(240) */
#define CDC_MPNT_NPX (CDC_MPNT_NSX-1) /* NTSC’Ê?í‚w•ûŒü?À•W  (351) */
#define CDC_MPNT_NPY (CDC_MPNT_NSY-1) /* NTSC’Ê?í‚x•ûŒü?À•W  (239) */

#define CDC_MPNT_HSX (2*CDC_MPNT_NSX) /* NTSC?‚?¸?×‚w•ûŒüƒTƒCƒY(704) */
#define CDC_MPNT_HSY (2*CDC_MPNT_NSY) /* NTSC?‚?¸?×‚x•ûŒüƒTƒCƒY(480) */
#define CDC_MPNT_HPX (CDC_MPNT_HSX-1) /* NTSC?‚?¸?×‚w•ûŒü?À•W  (703) */
#define CDC_MPNT_HPY (CDC_MPNT_HSY-1) /* NTSC?‚?¸?×‚x•ûŒü?À•W  (479) */

#define CDC_MPPL_NSX    352           /* PAL ’Ê?í‚w•ûŒüƒTƒCƒY(352) */
#define CDC_MPPL_NSY    288           /* PAL ’Ê?í‚x•ûŒüƒTƒCƒY(288) */
#define CDC_MPPL_NPX (CDC_MPPL_NSX-1) /* PAL ’Ê?í‚w•ûŒü?À•W  (351) */
#define CDC_MPPL_NPY (CDC_MPPL_NSY-1) /* PAL ’Ê?í‚x•ûŒü?À•W  (287) */

#define CDC_MPPL_HSX (2*CDC_MPPL_NSX) /* PAL ?‚?¸?×‚w•ûŒüƒTƒCƒY(704) */
#define CDC_MPPL_HSY (2*CDC_MPPL_NSY) /* PAL ?‚?¸?×‚x•ûŒüƒTƒCƒY(576) */
#define CDC_MPPL_HPX (CDC_MPPL_HSX-1) /* PAL ?‚?¸?×‚w•ûŒü?À•W  (703) */
#define CDC_MPPL_HPY (CDC_MPPL_HSY-1) /* PAL ?‚?¸?×‚x•ûŒü?À•W  (575) */

/* MPEG/Video“®?ì?ó‘Ô?iMPEG“®?ìƒXƒe?[ƒ^ƒX‚Ìbit0?`2?j */
#define CDC_MPASTV_STOP     0x01    /* ’âŽ~ */
#define CDC_MPASTV_PRE1     0x02    /* ?€”õ‚P */
#define CDC_MPASTV_PRE2     0x03    /* ?€”õ‚Q */
#define CDC_MPASTV_TRNS     0x04    /* “]‘—?i?Ä?¶?j */
#define CDC_MPASTV_CHG      0x05    /* ?Ø‚è‘Ö‚¦ */
#define CDC_MPASTV_RCV      0x06    /* •œŠˆ?ˆ—? */

/* MPEGƒfƒR?[ƒh?ó‘Ô?iMPEG“®?ìƒXƒe?[ƒ^ƒX‚Ìbit3?j */
#define CDC_MPASTD_STOP     0x08    /* MPEGƒfƒR?[ƒh’âŽ~ */

/* MPEG/Audio“®?ì?ó‘Ô?iMPEG“®?ìƒXƒe?[ƒ^ƒX‚Ìbit4?`6?j */
#define CDC_MPASTA_STOP     0x10    /* ’âŽ~ */
#define CDC_MPASTA_PRE1     0x20    /* ?€”õ‚P */
#define CDC_MPASTA_PRE2     0x30    /* ?€”õ‚Q */
#define CDC_MPASTA_TRNS     0x40    /* “]‘—?i?Ä?¶?j */
#define CDC_MPASTA_CHG      0x50    /* ?Ø‚è‘Ö‚¦ */
#define CDC_MPASTA_RCV      0x60    /* •œŠˆ?ˆ—? */

/* MPEG/AudioƒXƒe?[ƒ^ƒX */
#define CDC_MPSTA_DEC       0x01    /* ƒI?[ƒfƒBƒIƒfƒR?[ƒh“®?ìƒtƒ‰ƒO */
#define CDC_MPSTA_ILG       0x08    /* ƒI?[ƒfƒBƒIƒCƒŠ?[ƒKƒ‹ƒtƒ‰ƒO */
#define CDC_MPSTA_BEMPTY    0x10    /* ƒI?[ƒfƒBƒI—pƒoƒbƒtƒ@‹æ‰æ‹óƒtƒ‰ƒO */
#define CDC_MPSTA_ERR       0x20    /* ƒI?[ƒfƒBƒIƒGƒ‰?[ƒtƒ‰ƒO */
#define CDC_MPSTA_OUTL      0x40    /* ?¶ƒ`ƒƒƒ“ƒlƒ‹?o—Íƒtƒ‰ƒO */
#define CDC_MPSTA_OUTR      0x80    /* ‰Eƒ`ƒƒƒ“ƒlƒ‹?o—Íƒtƒ‰ƒO */

/* MPEG/VideoƒXƒe?[ƒ^ƒX */
#define CDC_MPSTV_DEC       0x0001  /* ƒrƒfƒIƒfƒR?[ƒh“®?ìƒtƒ‰ƒO */
#define CDC_MPSTV_DISP      0x0002  /* •\Ž¦ƒtƒ‰ƒO */
#define CDC_MPSTV_PAUSE     0x0004  /* ƒ|?[ƒYƒtƒ‰ƒO */
#define CDC_MPSTV_FREEZE    0x0008  /* ƒtƒŠ?[ƒYƒtƒ‰ƒO */
#define CDC_MPSTV_LSTPIC    0x0010  /* ?ÅŒãƒsƒNƒ`ƒƒ•\Ž¦ƒtƒ‰ƒO */
#define CDC_MPSTV_FIELD     0x0020  /* Šï?”ƒtƒB?[ƒ‹ƒhƒtƒ‰ƒO */
#define CDC_MPSTV_UPDPIC    0x0040  /* ƒsƒNƒ`ƒƒ?X?Vƒtƒ‰ƒO */
#define CDC_MPSTV_ERR       0x0080  /* ƒrƒfƒIƒGƒ‰?[ƒtƒ‰ƒO */
#define CDC_MPSTV_RDY       0x0100  /* ?o—Í?€”õŠ®—¹ƒtƒ‰ƒO */
#define CDC_MPSTV_1STPIC    0x0800  /* ?æ“ªƒsƒNƒ`ƒƒ•\Ž¦ƒtƒ‰ƒO */
#define CDC_MPSTV_BEMPTY    0x1000  /* ƒrƒfƒI—pƒoƒbƒtƒ@‹æ‰æ‹óƒtƒ‰ƒO */

/* MPEGŠ„‚è?ž‚Ý—vˆö */
#define CDC_MPINT_VSRDY  0x00000001 /* ƒrƒfƒIƒXƒgƒŠ?[ƒ€?€”õŠ®—¹ */
#define CDC_MPINT_VSCHG  0x00000002 /* ƒrƒfƒIƒXƒgƒŠ?[ƒ€?Ø‚è‘Ö‚¦Š®—¹ */
#define CDC_MPINT_VORDY  0x00000004 /* ƒrƒfƒI?o—Í?€”õŠ®—¹ */
#define CDC_MPINT_VOSTRT 0x00000008 /* ƒrƒfƒI?o—ÍŠJŽn */
#define CDC_MPINT_VDERR  0x00000010 /* ƒrƒfƒIƒfƒR?[ƒhƒGƒ‰?[ */
#define CDC_MPINT_VSERR  0x00000020 /* ƒrƒfƒIƒXƒgƒŠ?[ƒ€ƒf?[ƒ^ƒGƒ‰?[ */
#define CDC_MPINT_VBERR  0x00000040 /* ƒrƒfƒIƒoƒbƒtƒ@‹æ‰æ?Ú‘±ƒGƒ‰?[ */
#define CDC_MPINT_VNERR  0x00000080 /* ŽŸ”­ËÞÃÞµ½ÄØ°Ñ‚Ìƒf?[ƒ^ƒGƒ‰?[ */
#define CDC_MPINT_PSTRT  0x00000100 /* ƒsƒNƒ`ƒƒƒXƒ^?[ƒgŒŸ?o */
#define CDC_MPINT_GSTRT  0x00000200 /* GOPƒXƒ^?[ƒgŒŸ?o */
#define CDC_MPINT_SQEND  0x00000400 /* ƒV?[ƒPƒ“ƒXƒGƒ“ƒhŒŸ?o */
#define CDC_MPINT_SQSTRT 0x00000800 /* ƒV?[ƒPƒ“ƒXƒXƒ^?[ƒgŒŸ?o */
#define CDC_MPINT_VTRG   0x00001000 /* ƒrƒfƒIƒZƒNƒ^‚ÌƒgƒŠƒKƒrƒbƒgŒŸ?o */
#define CDC_MPINT_VEOR   0x00002000 /* ƒrƒfƒIƒZƒNƒ^‚ÌEORƒrƒbƒgŒŸ?o */
#define CDC_MPINT_ATRG   0x00004000 /* ƒI?[ƒfƒBƒIƒZƒNƒ^‚ÌÄØ¶ÞËÞ¯ÄŒŸ?o */
#define CDC_MPINT_AEOR   0x00008000 /* ƒI?[ƒfƒBƒIƒZƒNƒ^‚ÌEORƒrƒbƒgŒŸ?o */
#define CDC_MPINT_ASRDY  0x00010000 /* ƒI?[ƒfƒBƒIƒXƒgƒŠ?[ƒ€?€”õŠ®—¹ */
#define CDC_MPINT_ASCHG  0x00020000 /* ƒI?[ƒfƒBƒIƒXƒgƒŠ?[ƒ€?Ø‚è‘Ö‚¦Š®—¹ */
#define CDC_MPINT_AORDY  0x00040000 /* ƒI?[ƒfƒBƒI?o—Í?€”õŠ®—¹ */
#define CDC_MPINT_AOSTRT 0x00080000 /* ƒI?[ƒfƒBƒI?o—ÍŠJŽn */
#define CDC_MPINT_ADERR  0x00100000 /* ƒI?[ƒfƒBƒIƒfƒR?[ƒhƒGƒ‰?[ */
#define CDC_MPINT_ASERR  0x00200000 /* ƒI?[ƒfƒBƒIƒXƒgƒŠ?[ƒ€ƒf?[ƒ^ƒGƒ‰?[ */
#define CDC_MPINT_ABERR  0x00400000 /* ƒI?[ƒfƒBƒIƒoƒbƒtƒ@‹æ‰æ?Ú‘±ƒGƒ‰?[ */
#define CDC_MPINT_ANERR  0x00800000 /* ŽŸ”­µ°ÃÞ¨µ½ÄØ°Ñ‚Ìƒf?[ƒ^ƒGƒ‰?[ */

/* ?Ú‘±ƒ‚?[ƒh?iMPEGƒfƒR?[ƒ_?Ú‘±?æƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPCMOD_EOR      0x01    /* EORƒrƒbƒg‚Å?Ø‚è‘Ö‚¦‚é */
#define CDC_MPCMOD_SEC      0x02    /* ƒVƒXƒeƒ€ƒGƒ“ƒh(SEC)‚Å?Ø‚è‘Ö‚¦‚é */
#define CDC_MPCMOD_DEL      0x04    /* ƒZƒNƒ^‚Ì?Á‹Ž */
#define CDC_MPCMOD_IGPTS    0x08    /* PTSŽ¯•Ê‚ð‚µ‚È‚¢ */
#define CDC_MPCMOD_VCLR     0x10    /* VBV‚ÌƒNƒŠƒA */
#define CDC_MPCMOD_VWCLR    0x20    /* VBV+WBC‚ÌƒNƒŠƒA */
#define CDC_MPCMOD_BEF      0x40    /* Œã•û?i‚è‚Ì‘O‚Å?I—¹?ðŒ?”»’è */

/* ƒŒƒCƒ„Žw’è?iMPEGƒfƒR?[ƒ_?Ú‘±?æƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPLAY_SYS       0x00    /* ƒVƒXƒeƒ€ƒŒƒCƒ„ */
#define CDC_MPLAY_AUDIO     0x01    /* ƒI?[ƒfƒBƒIƒŒƒCƒ„ */
#define CDC_MPLAY_VIDEO     0x01    /* ƒrƒfƒIƒŒƒCƒ„ */

/* MPEG/Video‚ÌƒsƒNƒ`ƒƒƒT?[ƒ`Žw’è?iMPEGƒfƒR?[ƒ_?Ú‘±?æƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPSRCH_OFF      0x00    /* ƒsƒNƒ`ƒƒƒT?[ƒ`‚ð‚µ‚È‚¢ */
#define CDC_MPSRCH_VIDEO    0x80    /* ƒsƒNƒ`ƒƒƒT?[ƒ`‚ð‚·‚é */
#define CDC_MPSRCH_AV       0xc0    /* Ëß¸Á¬»°Á‚É?‡‚í‚¹µ°ÃÞ¨µÃÞ°À‚ð”jŠü */

/* ƒXƒgƒŠ?[ƒ€ƒ‚?[ƒh?iMPEGƒXƒgƒŠ?[ƒ€ƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPSMOD_SNSET    0x01    /* ƒXƒgƒŠ?[ƒ€”Ô?†‚Ì?Ý’è‚ð?s‚¤ */
#define CDC_MPSMOD_SNIDF    0x02    /* ƒXƒgƒŠ?[ƒ€”Ô?†‚ðŽ¯•Ê‚·‚é */
#define CDC_MPSMOD_CNSET    0x10    /* ƒ`ƒƒƒlƒ‹”Ô?†‚Ì?Ý’è‚ð?s‚¤ */
#define CDC_MPSMOD_CNIDF    0x20    /* ƒ`ƒƒƒlƒ‹”Ô?†‚ðŽ¯•Ê‚·‚é */

/* •âŠÔƒ‚?[ƒh?i‰æ–Ê“ÁŽêŒø‰Êƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPITP_YH        0x01    /* ‚x‚Ì?…•½•âŠÔ‚ð‚·‚é */
#define CDC_MPITP_CH        0x02    /* ‚b‚Ì?…•½•âŠÔ‚ð‚·‚é */
#define CDC_MPITP_YV        0x04    /* ‚x‚Ì?‚’¼•âŠÔ‚ð‚·‚é */
#define CDC_MPITP_CV        0x08    /* ‚b‚Ì?‚’¼•âŠÔ‚ð‚·‚é */

/* “§–¾ƒrƒbƒgƒ‚?[ƒh?i‰æ–Ê“ÁŽêŒø‰Êƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPTRP_DFL       0x00    /* ’Ê?í?i“§–¾ƒrƒbƒg?ˆ—?‚ð‚µ‚È‚¢?j */
#define CDC_MPTRP_64        0x01    /* ‹P“x64 */
#define CDC_MPTRP_128       0x02    /* ‹P“x128 */
#define CDC_MPTRP_256       0x03    /* ‹P“x256 */
#define CDC_MPTRP_MAG       0x04    /* “§–¾—Ìˆæ‚ÌŠg‘å‚ð‚·‚é */

/* ‚Ú‚©‚µƒ‚?[ƒh?i‰æ–Ê“ÁŽêŒø‰Êƒpƒ‰ƒ??[ƒ^“à?j */
#define CDC_MPSOFT_ON       0x01    /* ‚Ú‚©‚µ‚ð‚©‚¯‚é */

/* MPEG/Audio‚Ìƒ~ƒ…?[ƒg */
#define CDC_MPMUT_DFL       0x04    /* ?È—ª’l?iƒ~ƒ…?[ƒg‚µ‚È‚¢?j */
#define CDC_MPMUT_R         0x01    /* ‰Eƒ`ƒƒƒ“ƒlƒ‹‚Ìƒ~ƒ…?[ƒg‚ð‚·‚é */
#define CDC_MPMUT_L         0x02    /* ?¶ƒ`ƒƒƒ“ƒlƒ‹‚Ìƒ~ƒ…?[ƒg‚ð‚·‚é */

/*******************************************************************
*       —ñ‹“’è?”
*******************************************************************/

/* ƒGƒ‰?[ƒR?[ƒh */
enum CdcMpErrCode {
    CDC_ERR_MP_COMU = -20   /* MPCMƒtƒ‰ƒO‚ª‚P‚É‚È‚Á‚Ä‚¢‚È‚¢ */
};

/* ŽŸƒXƒgƒŠ?[ƒ€ƒtƒ‰ƒO?iŒ»ƒXƒgƒŠ?[ƒ€‚ÆŽŸƒXƒgƒŠ?[ƒ€‚ÌŽw’è?j */
enum CdcMpStf {
    CDC_MPSTF_CUR  = 0,     /* Œ»?Ý‚Ì?Ú‘±?æ?^ƒXƒgƒŠ?[ƒ€‚ÌŽw’è?i?æ”­?j */
    CDC_MPSTF_NEXT = 1      /* ?@ŽŸ‚Ì?Ú‘±?æ?^ƒXƒgƒŠ?[ƒ€‚ÌŽw’è?iŽŸ”­?j */
};

/* ƒsƒNƒ`ƒƒƒ^ƒCƒv?i‰ºˆÊ‚Rƒrƒbƒg‚ª—LŒø?j */
enum CdcMpPict {
    CDC_MPPICT_I = 0x01,    /* ‚hƒsƒNƒ`ƒƒ */
    CDC_MPPICT_P = 0x02,    /* ‚oƒsƒNƒ`ƒƒ */
    CDC_MPPICT_B = 0x03,    /* ‚aƒsƒNƒ`ƒƒ */
    CDC_MPPICT_D = 0x04     /* ‚cƒsƒNƒ`ƒƒ */
};

/* MPEG“®?ìƒ‚?[ƒh */
enum CdcMpAct {
    CDC_MPACT_NMOV = 0,     /* “®‰æ?Ä?¶ƒ‚?[ƒh */
    CDC_MPACT_NSTL = 1,     /* ?ÃŽ~‰æ?Ä?¶ƒ‚?[ƒh */
    CDC_MPACT_HMOV = 2,     /* ?‚?¸?×‚Ì“®‰æ?Ä?¶ƒ‚?[ƒh?i–¢‘Î‰ž?j */
    CDC_MPACT_HSTL = 3,     /* ?‚?¸?×‚Ì?ÃŽ~‰æ?Ä?¶ƒ‚?[ƒh */
    CDC_MPACT_SBUF = 4      /* MPEGƒZƒNƒ^ƒoƒbƒtƒ@ƒ‚?[ƒh */
};

/* ƒfƒR?[ƒhƒ^ƒCƒ~ƒ“ƒO */
enum CdcMpDec {
    CDC_MPDEC_VSYNC = 0,    /* VSYNC“¯Šú‚É‚æ‚éƒfƒR?[ƒh */
    CDC_MPDEC_HOST  = 1     /* ƒzƒXƒg“¯Šú‚É‚æ‚éƒfƒR?[ƒh */
};

/* ‰æ‘œƒf?[ƒ^‚Ì?o—Í?æ */
enum CdcMpOut {
    CDC_MPOUT_VDP2 = 0,     /* VDP2‚Ö?o—Í */
    CDC_MPOUT_HOST = 1      /* ƒzƒXƒg‚Ö?o—Í */
};

/* MPEG?Ä?¶ƒ‚?[ƒh */
enum CdcMpPly {
    CDC_MPPLY_SYNC = 0,     /* “¯Šú?Ä?¶ƒ‚?[ƒh */
    CDC_MPPLY_INDP = 1      /* “Æ—§?Ä?¶ƒ‚?[ƒh */
};

/* MPEGƒfƒR?[ƒ_‚Ì“]‘—ƒ‚?[ƒh */
enum CdcMpTrn {
    CDC_MPTRN_AUTO  = 0,    /* Ž©“®“]‘—ƒ‚?[ƒh */
    CDC_MPTRN_FORCE = 1     /* ‹­?§“]‘—ƒ‚?[ƒh */
};

/* MPEGƒfƒR?[ƒ_‚Ì?Ú‘±?Ø‚è‘Ö‚¦ƒtƒ‰ƒO */
enum CdcMpCof {
    CDC_MPCOF_ABT = 0,      /* ?Ø‚è—£‚µ?i‹­?§?I—¹?j */
    CDC_MPCOF_CHG = 1       /* ‹­?§?Ø‚è‘Ö‚¦ */
};

/* MPEG/Audio‚ÌƒNƒŠƒA•ûŽ® */
enum CdcMpCla {
    CDC_MPCLA_OFF = 0,      /* ƒNƒŠƒA‚µ‚È‚¢ */
    CDC_MPCLA_ON  = 1       /* ‘¦?À‚É‚PƒZƒNƒ^‚Ìƒoƒbƒtƒ@‚ðƒNƒŠƒA‚·‚é */
};

/* MPEG/Video‚ÌƒNƒŠƒA•ûŽ® */
enum CdcMpClv {
    CDC_MPCLV_FRM = 0,      /* ‘¦?À‚ÉVBV‚ÆMPEGÌÚ°ÑÊÞ¯Ì§‚ðƒNƒŠƒA‚·‚é */
    CDC_MPCLV_VBV = 2       /* ŽŸ‚ÌI‚Ü‚½‚ÍPËß¸Á¬½À°Ä‚ÅVBV‚ðƒNƒŠƒA‚·‚é */
};

/*******************************************************************
*       ?\‘¢‘ÌƒAƒNƒZƒX?ˆ—?ƒ}ƒNƒ?
*******************************************************************/

/* MPEGƒXƒe?[ƒ^ƒX?î•ñ */
#define CDC_MPSTAT_STS(mpstat)      ((mpstat)->status)
#define CDC_MPSTAT_AST(mpstat)      ((mpstat)->report.actst)
#define CDC_MPSTAT_PICT(mpstat)     ((mpstat)->report.pict)
#define CDC_MPSTAT_STA(mpstat)      ((mpstat)->report.stat_a)
#define CDC_MPSTAT_STV(mpstat)      ((mpstat)->report.stat_v)
#define CDC_MPSTAT_VCNT(mpstat)     ((mpstat)->report.vcnt)

/* ƒ^ƒCƒ€ƒR?[ƒh */
#define CDC_MPTC_HOUR(mptc)         ((mptc)->hour)
#define CDC_MPTC_MIN(mptc)          ((mptc)->min)
#define CDC_MPTC_SEC(mptc)          ((mptc)->sec)
#define CDC_MPTC_PIC(mptc)          ((mptc)->pic)

/* MPEGƒfƒR?[ƒ_?Ú‘±?æƒpƒ‰ƒ??[ƒ^ */
#define CDC_MPCON_CMOD(mpcon)       ((mpcon)->cmod)
#define CDC_MPCON_LAY(mpcon)        ((mpcon)->lay)
#define CDC_MPCON_BN(mpcon)         ((mpcon)->bn)

/* MPEGƒXƒgƒŠ?[ƒ€ƒpƒ‰ƒ??[ƒ^ */
#define CDC_MPSTM_SMOD(mpstm)       ((mpstm)->smod)
#define CDC_MPSTM_ID(mpstm)         ((mpstm)->id)
#define CDC_MPSTM_CN(mpstm)         ((mpstm)->cn)

/* ‰æ–Ê“ÁŽêŒø‰Êƒpƒ‰ƒ??[ƒ^ */
#define CDC_MPVEF_ITP(mpvef)        ((mpvef)->itp)
#define CDC_MPVEF_TRP(mpvef)        ((mpvef)->trp)
#define CDC_MPVEF_MOZH(mpvef)       ((mpvef)->moz_h)
#define CDC_MPVEF_MOZV(mpvef)       ((mpvef)->moz_v)
#define CDC_MPVEF_SOFTH(mpvef)      ((mpvef)->soft_h)
#define CDC_MPVEF_SOFTV(mpvef)      ((mpvef)->soft_v)

/*******************************************************************
*       ?ˆ—?ƒ}ƒNƒ?
*******************************************************************/

/* MPEGƒXƒe?[ƒ^ƒX?î•ñ‚©‚çƒXƒe?[ƒ^ƒXƒR?[ƒh‚ðŽæ“¾‚·‚é */
#define CDC_MPGET_STC(mpstat)   (CDC_MPSTAT_STS(mpstat) & CDC_STC_MSK)

/* MPEGƒXƒe?[ƒ^ƒX?î•ñ‚©‚çMPEG/Video“®?ì?ó‘Ô‚ðŽæ“¾‚·‚é */
#define CDC_MPGET_ASTV(mpstat)   (CDC_MPSTAT_AST(mpstat) & 0x07)

/* MPEGƒXƒe?[ƒ^ƒX?î•ñ‚©‚çMPEG/Audio“®?ì?ó‘Ô‚ðŽæ“¾‚·‚é */
#define CDC_MPGET_ASTA(mpstat)   (CDC_MPSTAT_AST(mpstat) & 0x70)

/*******************************************************************
*       ƒf?[ƒ^Œ^‚Ì?éŒ¾
*******************************************************************/

/* MPEGƒXƒe?[ƒ^ƒX?î•ñ?iƒXƒe?[ƒ^ƒX?{MPEGƒŒƒ|?[ƒg?j */
typedef struct {
    Uint8   status;         /* ƒXƒe?[ƒ^ƒX */
    struct {                /* MPEGƒŒƒ|?[ƒg */
        Uint8   actst;      /* MPEG“®?ìƒXƒe?[ƒ^ƒX */
        Uint8   pict;       /* ƒsƒNƒ`ƒƒ?î•ñ */
        Uint8   stat_a;     /* MPEG/AudioƒXƒe?[ƒ^ƒX */
        Uint16  stat_v;     /* MPEG/VideoƒXƒe?[ƒ^ƒX */
        Uint16  vcnt;       /* “®?ì‹æŠÔ?iVSYNC?jƒJƒEƒ“ƒ^ */
    } report;
} CdcMpStat;

/* ƒ^ƒCƒ€ƒR?[ƒh */
typedef struct {
    Uint8   hour;           /* ŽžŠÔ */
    Uint8   min;            /* •ª */
    Uint8   sec;            /* •b */
    Uint8   pic;            /* ƒsƒNƒ`ƒƒ */
} CdcMpTc;

/* MPEGƒfƒR?[ƒ_?Ú‘±?æƒpƒ‰ƒ??[ƒ^ */
typedef struct {
    Uint8   cmod;           /* ?Ú‘±ƒ‚?[ƒh */
    Uint8   lay;            /* ƒŒƒCƒ„Žw’è‚ÆƒsƒNƒ`ƒƒƒT?[ƒ`Žw’è */
    Uint8   bn;             /* ƒoƒbƒtƒ@‹æ‰æ”Ô?† */
} CdcMpCon;

/* MPEGƒXƒgƒŠ?[ƒ€ƒpƒ‰ƒ??[ƒ^ */
typedef struct {
    Uint8   smod;           /* ƒXƒgƒŠ?[ƒ€ƒ‚?[ƒh */
    Uint8   id;             /* ƒXƒgƒŠ?[ƒ€”Ô?† */
    Uint8   cn;             /* ƒ`ƒƒƒlƒ‹”Ô?† */
} CdcMpStm;

/* ‰æ–Ê“ÁŽêŒø‰Êƒpƒ‰ƒ??[ƒ^ */
typedef struct {
    Uint8   itp;            /* •âŠÔƒ‚?[ƒh */
    Uint8   trp;            /* “§–¾ƒrƒbƒgƒ‚?[ƒh */
    Uint8   moz_h;          /* ?…•½•ûŒüƒ‚ƒUƒCƒNƒ‚?[ƒh */
    Uint8   moz_v;          /* ?‚’¼•ûŒüƒ‚ƒUƒCƒNƒ‚?[ƒh */
    Uint8   soft_h;         /* ?…•½•ûŒü‚Ú‚©‚µƒ‚?[ƒh */
    Uint8   soft_v;         /* ?‚’¼•ûŒü‚Ú‚©‚µƒ‚?[ƒh */
} CdcMpVef;

/*******************************************************************
*       •Ï?”?éŒ¾
*******************************************************************/

/*******************************************************************
*       ŠÖ?”?éŒ¾
*******************************************************************/

/* cdc_mdc.c */
Sint32  CDC_MpGetCurStat(CdcMpStat *mpstat);
Sint32  CDC_MpGetLastStat(CdcMpStat *mpstat);
Sint32  CDC_MpGetInt(Sint32 *intreq);
Sint32  CDC_MpSetIntMsk(Sint32 intmsk);
Sint32  CDC_MpInit(Bool sw);
Sint32  CDC_MpSetMode(Sint32 actmod, Sint32 dectim, Sint32 out,
                      Sint32 scnmod);
Sint32  CDC_MpPlay(Sint32 plymod, Sint32 tmod_a, Sint32 tmod_v,
                   Sint32 dec_v);
Sint32  CDC_MpSetDec(Sint32 mute, Sint32 pautim, Sint32 frztim);
Sint32  CDC_MpOutDsync(Sint32 fbn);
Sint32  CDC_MpGetTc(Sint32 *bnk, Sint32 *pictyp, Sint32 *tr, CdcMpTc *mptc);
Sint32  CDC_MpGetPts(Sint32 *pts_a);

/* cdc_mst.c */
Sint32  CDC_MpSetCon(Sint32 next, CdcMpCon *mpcon_a, CdcMpCon *mpcon_v);
Sint32  CDC_MpGetCon(Sint32 next, CdcMpCon *mpcon_a, CdcMpCon *mpcon_v);
Sint32  CDC_MpChgCon(Sint32 chg_a, Sint32 chg_v,
                     Sint32 clr_a, Sint32 clr_v);
Sint32  CDC_MpSetStm(Sint32 next, CdcMpStm *mpstm_a, CdcMpStm *mpstm_v);
Sint32  CDC_MpGetStm(Sint32 next, CdcMpStm *mpstm_a, CdcMpStm *mpstm_v);
Sint32  CDC_MpGetPictSiz(Sint32 *siz_h, Sint32 *siz_v);

/* cdc_mwn.c */
Sint32  CDC_MpDisp(Bool dspsw, Sint32 fbn);
Sint32  CDC_MpSetWinFpos(Bool chgflg, Sint32 fpx, Sint32 fpy);
Sint32  CDC_MpSetWinFrat(Bool chgflg, Sint32 frx, Sint32 fry);
Sint32  CDC_MpSetWinDpos(Bool chgflg, Sint32 dpx, Sint32 dpy);
Sint32  CDC_MpSetWinDsiz(Bool chgflg, Sint32 dsx, Sint32 dsy);
Sint32  CDC_MpSetWinDofs(Bool chgflg, Sint32 dox, Sint32 doy);
Sint32  CDC_MpSetBcolor(Sint32 bcolor);
Sint32  CDC_MpSetFade(Sint32 gain_y, Sint32 gain_c);
Sint32  CDC_MpSetVeff(CdcMpVef *mpvef);

/* cdc_mfb.c */
Sint32  CDC_MpGetImg(Sint32 *dwnum);
Sint32  CDC_MpSetImgPos(Sint32 fbn, Sint32 ipx, Sint32 ipy);
Sint32  CDC_MpSetImgSiz(Sint32 fbn, Sint32 isx, Sint32 isy);
Sint32  CDC_MpReadImg(Sint32 srcfbn,
                      Sint32 fln_y, Sint32 fln_cr, Sint32 fln_cb);
Sint32  CDC_MpWriteImg(Sint32 bn_y, Sint32 bn_cr, Sint32 bn_cb,
                       Sint32 dstfbn, Sint32 clrmod);

/* cdc_mbu.c */
Sint32  CDC_MpReadSct(Sint32 srcmsp, Sint32 snum, Sint32 dstfln);
Sint32  CDC_MpWriteSct(Sint32 srcbn, Sint32 sp, Sint32 snum,
                       Sint32 dstmsp);

/* cdc_mls.c */
/* ’?ˆÓ?FˆÈ‰º‚ÌŠÖ?”‚Í”ñŒöŠJ‚Æ‚·‚é */
Sint32  CDC_MpGetLsi(Sint32 r_sw, Sint32 reg_no, Sint32 *rdata);
Sint32  CDC_MpSetLsi(Sint32 rwsw, Sint32 reg_no, Sint32 wdata,
                     Sint32 *rdata);

#endif  /* ifndef SEGA_CDC_H */
