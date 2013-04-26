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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//boiler.bfh.ch/stolc2/VHDL/RGB/Projekt/Counter360.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3454299738_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4194598743_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;

LAB0:    xsi_set_current_line(54, ng0);
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
LAB3:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t0 + 3920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 6008);
    t6 = (t0 + 2288U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 9U);
    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 3792);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3856);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB13;

LAB14:    t4 = (unsigned char)0;

LAB15:    if (t4 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB24;

LAB25:    t4 = (unsigned char)0;

LAB26:    if (t4 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB19;

LAB20:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2288U);
    t7 = *((char **)t1);
    t1 = (t0 + 5964U);
    t8 = (t0 + 6017);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 8;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (8 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t0 + 2408U);
    t22 = *((char **)t19);
    t23 = *((int *)t22);
    t19 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t16, t8, t17, t23);
    t24 = ieee_p_1242562249_sub_3454299738_1035706684(IEEE_P_1242562249, t7, t1, t19, t16);
    if (t24 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 6026);
    t5 = (t0 + 2288U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 9U);

LAB17:    goto LAB8;

LAB10:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)2);
    t3 = t15;
    goto LAB12;

LAB13:    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t4 = t13;
    goto LAB15;

LAB16:    xsi_set_current_line(62, ng0);
    t26 = (t0 + 2288U);
    t27 = *((char **)t26);
    t26 = (t0 + 5964U);
    t28 = (t0 + 2408U);
    t29 = *((char **)t28);
    t30 = *((int *)t29);
    t28 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t25, t27, t26, t30);
    t31 = (t0 + 2288U);
    t32 = *((char **)t31);
    t31 = (t32 + 0);
    t33 = (t25 + 12U);
    t21 = *((unsigned int *)t33);
    t34 = (1U * t21);
    memcpy(t31, t28, t34);
    goto LAB17;

LAB19:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2288U);
    t7 = *((char **)t1);
    t1 = (t0 + 5964U);
    t8 = (t0 + 6035);
    t18 = (t16 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 8;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (8 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t24 = ieee_p_1242562249_sub_3454299738_1035706684(IEEE_P_1242562249, t7, t1, t8, t16);
    if (t24 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 6044);
    t5 = (t17 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 8;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t20 = (8 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t21;
    t6 = (t0 + 2408U);
    t7 = *((char **)t6);
    t23 = *((int *)t7);
    t6 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t16, t1, t17, t23);
    t8 = (t0 + 2288U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t18 = (t16 + 12U);
    t21 = *((unsigned int *)t18);
    t34 = (1U * t21);
    memcpy(t8, t6, t34);

LAB28:    goto LAB8;

LAB21:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)2);
    t3 = t15;
    goto LAB23;

LAB24:    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t4 = t13;
    goto LAB26;

LAB27:    xsi_set_current_line(69, ng0);
    t19 = (t0 + 2288U);
    t22 = *((char **)t19);
    t19 = (t0 + 5964U);
    t26 = (t0 + 2408U);
    t27 = *((char **)t26);
    t23 = *((int *)t27);
    t26 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t17, t22, t19, t23);
    t28 = (t0 + 2288U);
    t29 = *((char **)t28);
    t28 = (t29 + 0);
    t31 = (t17 + 12U);
    t21 = *((unsigned int *)t31);
    t34 = (1U * t21);
    memcpy(t28, t26, t34);
    goto LAB28;

}


extern void work_a_4194598743_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4194598743_3212880686_p_0};
	xsi_register_didat("work_a_4194598743_3212880686", "isim/Top_schematic_Top_schematic_sch_tb_isim_beh.exe.sim/work/a_4194598743_3212880686.didat");
	xsi_register_executes(pe);
}
