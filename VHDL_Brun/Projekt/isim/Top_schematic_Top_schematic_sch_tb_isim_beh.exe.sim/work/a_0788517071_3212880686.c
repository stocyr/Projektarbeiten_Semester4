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
static const char *ng0 = "D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/RGBEncoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1654287348_1035706684(char *, char *, int , char *, char *);
char *ieee_p_1242562249_sub_1808404841_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2547962040_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2778267465_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0788517071_3212880686_p_0(char *t0)
{
    char t16[16];
    char t17[16];
    char t18[16];
    char t33[16];
    char t34[16];
    char t35[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    char *t25;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1952U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 6779);
    t6 = (t0 + 2608U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t2 = (t0 + 6787);
    t4 = 1;
    if (8U == 8U)
        goto LAB10;

LAB11:    t4 = 0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6620U);
    t5 = ieee_p_1242562249_sub_1654287348_1035706684(IEEE_P_1242562249, t18, 255, t2, t1);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 6636U);
    t9 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t17, t5, t18, t7, t6);
    t10 = ieee_p_1242562249_sub_2547962040_1035706684(IEEE_P_1242562249, t16, t9, t17, 8);
    t11 = (t0 + 2608U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t16 + 12U);
    t8 = *((unsigned int *)t13);
    t19 = (1U * t8);
    memcpy(t11, t10, t19);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6604U);
    t5 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t16, t2, t1, 64);
    t6 = (t0 + 2728U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t9 = (t16 + 12U);
    t8 = *((unsigned int *)t9);
    t19 = (1U * t8);
    memcpy(t6, t5, t19);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t1 = (t0 + 6795);
    t20 = xsi_mem_cmp(t1, t2, 3U);
    if (t20 == 1)
        goto LAB17;

LAB24:    t6 = (t0 + 6798);
    t21 = xsi_mem_cmp(t6, t2, 3U);
    if (t21 == 1)
        goto LAB18;

LAB25:    t9 = (t0 + 6801);
    t22 = xsi_mem_cmp(t9, t2, 3U);
    if (t22 == 1)
        goto LAB19;

LAB26:    t11 = (t0 + 6804);
    t23 = xsi_mem_cmp(t11, t2, 3U);
    if (t23 == 1)
        goto LAB20;

LAB27:    t13 = (t0 + 6807);
    t24 = xsi_mem_cmp(t13, t2, 3U);
    if (t24 == 1)
        goto LAB21;

LAB28:    t15 = (t0 + 6810);
    t26 = xsi_mem_cmp(t15, t2, 3U);
    if (t26 == 1)
        goto LAB22;

LAB29:
LAB23:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 6813);
    t5 = (t0 + 4112);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 6821);
    t5 = (t0 + 4176);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 6829);
    t5 = (t0 + 4240);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB16:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(56, ng0);
    t10 = (t0 + 1352U);
    t11 = *((char **)t10);
    t10 = (t0 + 4112);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    t8 = 0;

LAB13:    if (t8 < 8U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t7 = (t5 + t8);
    t9 = (t2 + t8);
    if (*((unsigned char *)t7) != *((unsigned char *)t9))
        goto LAB11;

LAB15:    t8 = (t8 + 1);
    goto LAB13;

LAB17:    xsi_set_current_line(64, ng0);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t27 = (t0 + 4112);
    t29 = (t27 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t28, 8U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t10, t9);
    t12 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t11, t18, 64);
    t13 = (t0 + 2608U);
    t14 = *((char **)t13);
    t13 = (t0 + 6700U);
    t15 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t12, t17, t14, t13);
    t25 = (t0 + 4176);
    t27 = (t25 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t15, 8U);
    xsi_driver_first_trans_fast_port(t25);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2778267465_1035706684(IEEE_P_1242562249, t35, t10, t9, 64);
    t12 = ieee_p_1242562249_sub_1654287348_1035706684(IEEE_P_1242562249, t34, 64, t11, t35);
    t13 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t12, t34);
    t14 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t13, t18, 64);
    t15 = (t0 + 2608U);
    t25 = *((char **)t15);
    t15 = (t0 + 6700U);
    t27 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t14, t17, t25, t15);
    t28 = (t0 + 4112);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t27, 8U);
    xsi_driver_first_trans_fast_port(t28);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB19:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2778267465_1035706684(IEEE_P_1242562249, t34, t10, t9, 64);
    t12 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t11, t34);
    t13 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t12, t18, 64);
    t14 = (t0 + 2608U);
    t15 = *((char **)t14);
    t14 = (t0 + 6700U);
    t25 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t13, t17, t15, t14);
    t27 = (t0 + 4240);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 8U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB16;

LAB20:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2778267465_1035706684(IEEE_P_1242562249, t35, t10, t9, 64);
    t12 = ieee_p_1242562249_sub_1654287348_1035706684(IEEE_P_1242562249, t34, 64, t11, t35);
    t13 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t12, t34);
    t14 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t13, t18, 64);
    t15 = (t0 + 2608U);
    t25 = *((char **)t15);
    t15 = (t0 + 6700U);
    t27 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t14, t17, t25, t15);
    t28 = (t0 + 4176);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t27, 8U);
    xsi_driver_first_trans_fast_port(t28);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB21:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2778267465_1035706684(IEEE_P_1242562249, t34, t10, t9, 64);
    t12 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t11, t34);
    t13 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t12, t18, 64);
    t14 = (t0 + 2608U);
    t15 = *((char **)t14);
    t14 = (t0 + 6700U);
    t25 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t13, t17, t15, t14);
    t27 = (t0 + 4112);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 8U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB22:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4112);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t1 = (t0 + 4176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6636U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 6700U);
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t33, t2, t1, t6, t5);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t9 = (t0 + 6604U);
    t11 = ieee_p_1242562249_sub_2778267465_1035706684(IEEE_P_1242562249, t35, t10, t9, 64);
    t12 = ieee_p_1242562249_sub_1654287348_1035706684(IEEE_P_1242562249, t34, 64, t11, t35);
    t13 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t18, t7, t33, t12, t34);
    t14 = ieee_p_1242562249_sub_1808404841_1035706684(IEEE_P_1242562249, t17, t13, t18, 64);
    t15 = (t0 + 2608U);
    t25 = *((char **)t15);
    t15 = (t0 + 6700U);
    t27 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t14, t17, t25, t15);
    t28 = (t0 + 4240);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t27, 8U);
    xsi_driver_first_trans_fast_port(t28);
    goto LAB16;

LAB30:;
}


extern void work_a_0788517071_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0788517071_3212880686_p_0};
	xsi_register_didat("work_a_0788517071_3212880686", "isim/Top_schematic_Top_schematic_sch_tb_isim_beh.exe.sim/work/a_0788517071_3212880686.didat");
	xsi_register_executes(pe);
}
