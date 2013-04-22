/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/Counter256.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3454299738_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3766616993_3212880686_p_0(char *t0)
{
    char t17[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned char t21;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 6374);
    t6 = (t0 + 3976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4040);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4104);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB13;

LAB14:    t4 = (unsigned char)0;

LAB15:    if (t4 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB26;

LAB27:    t4 = (unsigned char)0;

LAB28:    if (t4 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 6336U);
    t8 = (t0 + 6382);
    t10 = (t17 + 0U);
    t18 = (t10 + 0U);
    *((int *)t18) = 0;
    t18 = (t10 + 4U);
    *((int *)t18) = 7;
    t18 = (t10 + 8U);
    *((int *)t18) = 1;
    t19 = (7 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t10 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_1242562249_sub_3454299738_1035706684(IEEE_P_1242562249, t7, t1, t8, t17);
    if (t21 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB8;

LAB10:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)2);
    t3 = t16;
    goto LAB12;

LAB13:    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB15;

LAB16:    xsi_set_current_line(60, ng0);
    t18 = (t0 + 1832U);
    t23 = *((char **)t18);
    t18 = (t0 + 6336U);
    t24 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t22, t23, t18, 1);
    t25 = (t22 + 12U);
    t20 = *((unsigned int *)t25);
    t26 = (1U * t20);
    t27 = (8U != t26);
    if (t27 == 1)
        goto LAB19;

LAB20:    t28 = (t0 + 3976);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t24, 8U);
    xsi_driver_first_trans_fast(t28);
    goto LAB17;

LAB19:    xsi_size_not_matching(8U, t26, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 6336U);
    t8 = (t0 + 6390);
    t10 = (t17 + 0U);
    t18 = (t10 + 0U);
    *((int *)t18) = 0;
    t18 = (t10 + 4U);
    *((int *)t18) = 7;
    t18 = (t10 + 8U);
    *((int *)t18) = 1;
    t19 = (7 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t10 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_1242562249_sub_3454299738_1035706684(IEEE_P_1242562249, t7, t1, t8, t17);
    if (t21 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB8;

LAB23:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)2);
    t3 = t16;
    goto LAB25;

LAB26:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB28;

LAB29:    xsi_set_current_line(65, ng0);
    t18 = (t0 + 1832U);
    t23 = *((char **)t18);
    t18 = (t0 + 6336U);
    t24 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t22, t23, t18, 1);
    t25 = (t22 + 12U);
    t20 = *((unsigned int *)t25);
    t26 = (1U * t20);
    t27 = (8U != t26);
    if (t27 == 1)
        goto LAB32;

LAB33:    t28 = (t0 + 3976);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t24, 8U);
    xsi_driver_first_trans_fast(t28);
    goto LAB30;

LAB32:    xsi_size_not_matching(8U, t26, 0);
    goto LAB33;

}

static void work_a_3766616993_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4168);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3766616993_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3766616993_3212880686_p_0,(void *)work_a_3766616993_3212880686_p_1};
	xsi_register_didat("work_a_3766616993_3212880686", "isim/Top_schematic_Top_schematic_sch_tb_isim_beh.exe.sim/work/a_3766616993_3212880686.didat");
	xsi_register_executes(pe);
}
