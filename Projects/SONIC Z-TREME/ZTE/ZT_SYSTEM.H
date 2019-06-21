

#ifndef SATURN_H
#define SATURN_H

/**
Timer system
**/
#define TIM_REG_T0C     ((volatile Uint32 *)0x25fe0090)
#define TIM_REG_T1S     ((volatile Uint32 *)0x25fe0094)
#define TIM_REG_T1MD    ((volatile Uint32 *)0x25fe0098)

#define TIM_B_TENB      (0)
#define TIM_B_T1MD      (8)

#define TIM_TENB_OFF    (0 << TIM_B_TENB)
#define TIM_TENB_ON     (1 << TIM_B_TENB)
#define TIM_T1MD_ALL_LINE   (0 << TIM_B_T1MD)
#define TIM_T1MD_CST_LINE   (1 << TIM_B_T1MD)

#define TIM_REG_TIER    ((volatile Uint8  *)0xfffffe10)
#define TIM_REG_TCSR    ((volatile Uint8  *)0xfffffe11)
#define TIM_REG_FRC_H   ((volatile Uint8  *)0xfffffe12)
#define TIM_REG_FRC_L   ((volatile Uint8  *)0xfffffe13)
#define TIM_REG_OCRX_H  ((volatile Uint8  *)0xfffffe14)
#define TIM_REG_OCRX_L  ((volatile Uint8  *)0xfffffe15)
#define TIM_REG_TCR     ((volatile Uint8  *)0xfffffe16)
#define TIM_REG_TOCR    ((volatile Uint8  *)0xfffffe17)
#define TIM_REG_ICRA_H  ((volatile Uint8  *)0xfffffe18)
#define TIM_REG_ICRA_L  ((volatile Uint8  *)0xfffffe19)

#define TIM_B_ICIAE     (7)
#define TIM_B_OCIAE     (3)
#define TIM_B_OCIBE     (2)
#define TIM_B_OVIE      (1)

#define TIM_B_ICFA      (7)
#define TIM_B_OCFA      (3)
#define TIM_B_OCFB      (2)
#define TIM_B_OVI       (1)
#define TIM_B_CCLRA     (0)

#define TIM_B_IEDGA     (7)
#define TIM_B_BUFEA     (3)
#define TIM_B_BUFEB     (2)
#define TIM_B_CKS1      (1)
#define TIM_B_CKS0      (0)

#define TIM_B_OCRS      (4)
#define TIM_B_OEA       (3)
#define TIM_B_OEB       (2)
#define TIM_B_OLVLA     (1)
#define TIM_B_OLVLB     (0)


#define TIM_M_ICIAE     (1 << TIM_B_ICIAE)
#define TIM_M_OCIAE     (1 << TIM_B_OCIAE)
#define TIM_M_OCIBE     (1 << TIM_B_OCIBE)
#define TIM_M_OVIE      (1 << TIM_B_OVIE )

#define TIM_M_ICFA      (1 << TIM_B_ICFA )
#define TIM_M_OCFA      (1 << TIM_B_OCFA )
#define TIM_M_OCFB      (1 << TIM_B_OCFB )
#define TIM_M_OVI       (1 << TIM_B_OVI  )
#define TIM_M_CCLRA     (1 << TIM_B_CCLRA)

#define TIM_M_IEDGA     (1 << TIM_B_IEDGA)
#define TIM_M_BUFEA     (1 << TIM_B_BUFEA)
#define TIM_M_BUFEB     (1 << TIM_B_BUFEB)
#define TIM_M_CKS       (3 << TIM_B_CKS0 )

#define TIM_M_OCRS      (1 << TIM_B_OCRS )
#define TIM_M_OEA       (1 << TIM_B_OEA  )
#define TIM_M_OEB       (1 << TIM_B_OEB  )
#define TIM_M_OLVLA     (1 << TIM_B_OLVLA)
#define TIM_M_OLVLB     (1 << TIM_B_OLVLB)

#define TIM_ICIAE_DIS   (0 << TIM_B_ICIAE)
#define TIM_ICIAE_ENA   (1 << TIM_B_ICIAE)

#define TIM_OCIAE_DIS   (0 << TIM_B_OCIAE)
#define TIM_OCIAE_ENA   (1 << TIM_B_OCIAE)

#define TIM_OCIBE_DIS   (0 << TIM_B_OCIBE)
#define TIM_OCIBE_ENA   (1 << TIM_B_OCIBE)

#define TIM_OVIE_DIS    (0 << TIM_B_OVIE)
#define TIM_OVIE_ENA    (1 << TIM_B_OVIE)

#define TIM_ICFA_CLR    (0 << TIM_B_ICFA)
#define TIM_ICFA_SET    (1 << TIM_B_ICFA)

#define TIM_OCFA_CLR    (0 << TIM_B_OCFA)
#define TIM_OCFA_SET    (1 << TIM_B_OCFA)

#define TIM_OCFB_CLR    (0 << TIM_B_OCFB)
#define TIM_OCFB_SET    (1 << TIM_B_OCFB)

#define TIM_OVF_CLR     (0 << TIM_B_OVI)
#define TIM_OVF_SET     (1 << TIM_B_OVI)

#define TIM_CCLRA_CLR   (0 << TIM_B_CCLRA)
#define TIM_CCLRA_SET   (1 << TIM_B_CCLRA)


#define TIM_IEDGA_UP_EG (1 << TIM_B_IEDGA)
#define TIM_IEDGA_DW_EG (0 << TIM_B_IEDGA)

#define TIM_BUFEA_NO_US (0 << TIM_B_BUFEA)
#define TIM_BUFEA_US    (1 << TIM_B_BUFEA)

#define TIM_BUFEB_NO_US (0 << TIM_B_BUFEB)
#define TIM_BUFEB_US    (1 << TIM_B_BUFEB)

#define TIM_CKS_8       ( 0 << TIM_B_CKS0)
#define TIM_CKS_32      ( 1 << TIM_B_CKS0)
#define TIM_CKS_128     ( 2 << TIM_B_CKS0)
#define TIM_CKS_OUT     ( 3 << TIM_B_CKS0)

#define TIM_OCRS_OCRA   ( 0 << TIM_B_OCRS)
#define TIM_OCRS_OCRB   ( 1 << TIM_B_OCRS)

#define TIM_OEA_DIS     ( 0 << TIM_B_OEA)
#define TIM_OEA_ENA     ( 1 << TIM_B_OEA)

#define TIM_OEB_DIS     ( 0 << TIM_B_OEB)
#define TIM_OEB_ENA     ( 1 << TIM_B_OEB)

#define TIM_OLVLA_0     ( 0 << TIM_B_OLVLA)
#define TIM_OLVLA_1     ( 1 << TIM_B_OLVLA)

#define TIM_OLVLB_0     ( 0 << TIM_B_OLVLB)
#define TIM_OLVLB_1     ( 1 << TIM_B_OLVLB)

#define TIM_POKE_B(adr, data)   (*((volatile Uint8 *)(adr)) = ((Uint8)(data)))
#define TIM_POKE_W(adr, data)   (*((volatile Uint16 *)(adr)) = ((Uint16)(data)))
#define TIM_POKE_L(adr, data)   (*((volatile Uint32 *)(adr)) = ((Uint32)(data)))

#define TIM_PEEK_B(adr)         (*((volatile Uint8 *)(adr)))
#define TIM_PEEK_W(adr)         (*((volatile Uint16 *)(adr)))
#define TIM_PEEK_L(adr)         (*((volatile Uint32 *)(adr)))

#define TIM_T0_ENABLE()\
    do{\
        INT_ChgMsk(INT_MSK_TIM0, INT_MSK_NULL);\
    }while(FALSE)

#define TIM_T0_DISABLE()\
    do{\
        INT_ChgMsk(INT_MSK_NULL, INT_MSK_TIM0);\
    }while(FALSE)


#define TIM_T1_ENABLE()\
    do{\
        INT_ChgMsk(INT_MSK_TIM1, INT_MSK_NULL);\
    }while(FALSE)


#define TIM_T1_DISABLE()\
    do{\
        INT_ChgMsk(INT_MSK_NULL, INT_MSK_TIM1);\
    }while(FALSE)


#define TIM_T0_SET_CMP(time_cmp)\
            TIM_POKE_L(TIM_REG_T0C, (time_cmp))


#define TIM_T1_SET_DATA(time_data)\
            TIM_POKE_L(TIM_REG_T1S, (time_data))


#define TIM_T1_SET_MODE(time_mode)\
            TIM_POKE_L(TIM_REG_T1MD, (time_mode))


#define TIM_T1_SET_MODE(time_mode)\
            TIM_POKE_L(TIM_REG_T1MD, (time_mode))

/*
#if 0
#define TIM_FRT_INIT(mode)\
            TIM_POKE_B(TIM_REG_TCR ,\
                       (TIM_PEEK_B(TIM_REG_TCR) & ~TIM_M_CKS) | (mode))
#else*/
#define TIM_FRT_INIT(mode)\
	do{\
		unsigned char _tcr = (unsigned char)(TIM_PEEK_B(TIM_REG_TCR) & ~TIM_M_CKS);\
		if( ( ( mode ) & TIM_M_CKS ) != TIM_M_CKS ){\
			_tcr |= ( ( mode ) & TIM_M_CKS );\
            TIM_POKE_B(TIM_REG_TCR , _tcr);\
		}\
	}while(0)
//#endif


#define TIM_FRT_SET_16(cnt)\
        do{\
            TIM_FRT_SET_FRC(cnt);\
        }while(FALSE)


#define TIM_FRT_GET_16()\
        TIM_FRT_GET_FRC()


#define TIM_FRT_DELAY_16(cnt)\
        do{\
            TIM_FRT_SET_16(0);\
            while((cnt) != TIM_FRT_GET_16());\
        }while(FALSE)


#define TIM_FRT_CNT_TO_MCR(count)\
    (\
    (((*(Uint16 *)0x25f80004 & 0x1) == 0x1) ?  \
     (((*(volatile unsigned int*)0x6000324) == 0) ? (Float32)0.037470726 : (Float32)0.035164835 ) :\
     (((*(volatile unsigned int*)0x6000324) == 0) ? (Float32)0.037210548 : (Float32)0.03492059 )) \
     * (count) * (8 << ((TIM_PEEK_B(TIM_REG_TCR) & TIM_M_CKS) << 1)))


#define TIM_FRT_MCR_TO_CNT(mcr)\
    ((mcr) /\
    (((*(volatile Uint16 *)0x25f80004 & 0x1) == 0x1) ?   \
     (((*(volatile unsigned int*)0x6000324) == 0) ? (Float32)0.037470726 : (Float32)0.035164835 ) :/\
     (((*(volatile unsigned int*)0x6000324) == 0) ? (Float32)0.037210548 : (Float32)0.03492059 )) \
    / (8 << ((TIM_PEEK_B(TIM_REG_TCR) & TIM_M_CKS) << 1)))

#define TIM_FRT_SET_TIER(reg)\
        TIM_POKE_B(TIM_REG_TIER, (reg))


#define TIM_FRT_SET_TCSR(reg)\
        TIM_POKE_B(TIM_REG_TCSR, (reg))


#define TIM_FRT_SET_FRC(reg)\
        do{\
            TIM_POKE_B(TIM_REG_FRC_H, ((reg) >> 8));\
            TIM_POKE_B(TIM_REG_FRC_L, (reg));\
        }while(FALSE)


#define TIM_FRT_SET_OCRA(reg)\
        do{\
            TIM_FRT_SET_TOCR(((TIM_FRT_GET_TOCR()) & ~TIM_M_OCRS) |\
            TIM_OCRS_OCRA);\
            TIM_POKE_B(TIM_REG_OCRX_H, ((reg) >> 8));\
            TIM_POKE_B(TIM_REG_OCRX_L, (reg));\
        }while(FALSE)


#define TIM_FRT_SET_OCRB(reg)\
        do{\
            TIM_FRT_SET_TOCR(((TIM_FRT_GET_TOCR()) & ~TIM_M_OCRS) |\
            TIM_OCRS_OCRB);\
            TIM_POKE_B(TIM_REG_OCRX_H, ((reg) >> 8));\
            TIM_POKE_B(TIM_REG_OCRX_L, (reg));\
        }while(FALSE)


#if 0
#define TIM_FRT_SET_TCR(reg)\
            TIM_POKE_B(TIM_REG_TCR, (reg))
#else
#define TIM_FRT_SET_TCR(reg)\
	do{\
		unsigned char _tcr;\
		if(((reg) & TIM_M_CKS ) != TIM_M_CKS ){\
			_tcr = (unsigned char)( (reg) & 0x83 );\
		}\
		else{\
			_tcr = (unsigned char)( (reg) & 0x80 );\
		}\
        TIM_POKE_B(TIM_REG_TCR, _tcr);\
	}while(0)
#endif


#define TIM_FRT_SET_TOCR(reg)\
            TIM_POKE_B(TIM_REG_TOCR, (reg))

#define TIM_FRT_GET_TIER()\
            TIM_PEEK_B(TIM_REG_TIER)


#define TIM_FRT_GET_TCSR()\
            TIM_PEEK_B(TIM_REG_TCSR)


#define TIM_FRT_GET_FRC()\
            (TIM_PEEK_B(TIM_REG_FRC_H) << 8 | TIM_PEEK_B(TIM_REG_FRC_L))


#define TIM_FRT_GET_OCRA(reg)\
        do{\
            TIM_FRT_SET_TOCR(((TIM_FRT_GET_TOCR()) & ~TIM_M_OCRS) |\
            TIM_OCRS_OCRA);\
            (reg) = (TIM_PEEK_B(TIM_REG_OCRX_H) << 8) |\
                                       TIM_PEEK_B(TIM_REG_OCRX_L);\
        }while(FALSE)

#define TIM_FRT_GET_OCRB(reg)\
        do{\
            TIM_FRT_SET_TOCR(((TIM_FRT_GET_TOCR()) & ~TIM_M_OCRS) |\
            TIM_OCRS_OCRB);\
            (reg) = (TIM_PEEK_B(TIM_REG_OCRX_H) << 8) |\
                                       TIM_PEEK_B(TIM_REG_OCRX_L);\
        }while(FALSE)


#define TIM_FRT_GET_TCR()\
            TIM_PEEK_B(TIM_REG_TCR)


#define TIM_FRT_GET_TOCR()\
            TIM_PEEK_B(TIM_REG_TOCR)


#define TIM_FRT_GET_ICRA()\
            ((TIM_PEEK_B(TIM_REG_ICRA_H) << 8) | TIM_PEEK_B(TIM_REG_ICRA_L))
/**
End of timer
**/


/** Functions **/
void    ztWait(unsigned int nbFrames);
void    ztInitTimer(unsigned char mode);
void    ztUpdateFramerate(void);
void    ztLoadLogo(void);


#endif // SATURN_H
