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
static const char *ng0 = "//boiler.bfh.ch/stolc2/VHDL/RGB/Projekt/PWMEncoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2995799307_3212880686_p_0(char *t0)
{
    char t11[16];
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
    char *t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    int t16;
    unsigned int t17;
    int t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(316, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(317, ng0);
    t1 = (t0 + 6820);
    t6 = (t0 + 3472);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(318, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 2088U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 8U);
    goto LAB3;

LAB5:    xsi_set_current_line(320, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5712U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t5, t2, 1);
    t7 = (t0 + 3472);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t6, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(323, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t2, t1, 1);
    t6 = (t0 + 2088U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (t11 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    memcpy(t6, t5, t14);
    xsi_set_current_line(325, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744U);
    t5 = (t0 + 6828);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 7;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t15 = (7 - 0);
    t13 = (t15 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(329, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5744U);
    t5 = (t0 + 1968U);
    t6 = *((char **)t5);
    t5 = (t0 + 1032U);
    t7 = *((char **)t5);
    t5 = (t0 + 5696U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t5);
    t16 = (t15 - 0);
    t13 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t15);
    t14 = (4U * t13);
    t17 = (0 + t14);
    t8 = (t6 + t17);
    t18 = *((int *)t8);
    t3 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, t18);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(332, ng0);
    t1 = (t0 + 3536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    xsi_set_current_line(326, ng0);
    t8 = (t0 + 6836);
    t10 = (t0 + 2088U);
    t12 = *((char **)t10);
    t10 = (t12 + 0);
    memcpy(t10, t8, 8U);
    goto LAB8;

LAB10:    xsi_set_current_line(330, ng0);
    t9 = (t0 + 3536);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB11;

}


extern void work_a_2995799307_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2995799307_3212880686_p_0};
	xsi_register_didat("work_a_2995799307_3212880686", "isim/Top_schematic_Top_schematic_sch_tb_isim_beh.exe.sim/work/a_2995799307_3212880686.didat");
	xsi_register_executes(pe);
}
