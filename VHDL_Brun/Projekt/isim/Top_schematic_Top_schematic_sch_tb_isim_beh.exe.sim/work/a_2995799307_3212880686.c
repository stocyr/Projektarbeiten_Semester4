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
static const char *ng0 = "D:/BFH/Projektarbeiten_Semester4/VHDL_Brun/Projekt/PWMEncoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781471956_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2995799307_3212880686_p_0(char *t0)
{
    char t8[16];
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    int t21;

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
LAB3:    t1 = (t0 + 3352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(317, ng0);
    t1 = (t0 + 6832);
    t6 = (t0 + 2048U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(318, ng0);
    t1 = (t0 + 6840);
    t5 = (t0 + 1928U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 8U);
    goto LAB3;

LAB5:    xsi_set_current_line(320, ng0);
    t2 = (t0 + 2048U);
    t5 = *((char **)t2);
    t2 = (t0 + 5756U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t5, t2, 1);
    t7 = (t0 + 2048U);
    t9 = *((char **)t7);
    t7 = (t9 + 0);
    t10 = (t8 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    memcpy(t7, t6, t12);
    xsi_set_current_line(322, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t0 + 5756U);
    t5 = (t0 + 6848);
    t7 = (t8 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 7;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t13 = (7 - 0);
    t11 = (t13 * 1);
    t11 = (t11 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t11;
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t8);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(323, ng0);
    t9 = (t0 + 1928U);
    t10 = *((char **)t9);
    t9 = (t0 + 5740U);
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t10, t9, 1);
    t16 = (t0 + 1928U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t14 + 12U);
    t11 = *((unsigned int *)t18);
    t12 = (1U * t11);
    memcpy(t16, t15, t12);
    xsi_set_current_line(325, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t0 + 5740U);
    t5 = (t0 + 6856);
    t7 = (t8 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 7;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t13 = (7 - 0);
    t11 = (t13 * 1);
    t11 = (t11 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t11;
    t3 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t2, t1, t5, t8);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(329, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t0 + 5740U);
    t5 = (t0 + 1808U);
    t6 = *((char **)t5);
    t5 = (t0 + 1032U);
    t7 = *((char **)t5);
    t5 = (t0 + 5708U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t5);
    t19 = (t13 - 0);
    t11 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t13);
    t12 = (4U * t11);
    t20 = (0 + t12);
    t9 = (t6 + t20);
    t21 = *((int *)t9);
    t3 = ieee_p_1242562249_sub_1781471956_1035706684(IEEE_P_1242562249, t2, t1, t21);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(332, ng0);
    t1 = (t0 + 3432);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    goto LAB8;

LAB10:    xsi_set_current_line(326, ng0);
    t9 = (t0 + 6864);
    t15 = (t0 + 1928U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    memcpy(t15, t9, 8U);
    goto LAB11;

LAB13:    xsi_set_current_line(330, ng0);
    t10 = (t0 + 3432);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB14;

}


extern void work_a_2995799307_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2995799307_3212880686_p_0};
	xsi_register_didat("work_a_2995799307_3212880686", "isim/Top_schematic_Top_schematic_sch_tb_isim_beh.exe.sim/work/a_2995799307_3212880686.didat");
	xsi_register_executes(pe);
}
