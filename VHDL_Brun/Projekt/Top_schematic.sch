<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_35">
        </signal>
        <signal name="RESET" />
        <signal name="rot_c" />
        <signal name="BTN_EAST" />
        <signal name="BTN_WEST" />
        <signal name="BTN_NORTH" />
        <signal name="BTN_SOUTH" />
        <signal name="XLXN_59" />
        <signal name="SYSTEM_CLK" />
        <signal name="XLXN_40(8:0)" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_22(7:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_18" />
        <signal name="XLXN_17" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_15(7:0)" />
        <signal name="rot_a" />
        <signal name="rot_b" />
        <signal name="LED0" />
        <signal name="LED1" />
        <signal name="LED2" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="rot_c" />
        <port polarity="Input" name="BTN_EAST" />
        <port polarity="Input" name="BTN_WEST" />
        <port polarity="Input" name="BTN_NORTH" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Input" name="SYSTEM_CLK" />
        <port polarity="Input" name="rot_a" />
        <port polarity="Input" name="rot_b" />
        <port polarity="Output" name="LED0" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="LED2" />
        <blockdef name="Counter256">
            <timestamp>2013-4-22T15:40:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="PWMEncoder">
            <timestamp>2013-4-22T15:40:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RGBEncoder">
            <timestamp>2013-4-22T15:40:41</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="RotaryDecoder">
            <timestamp>2013-4-22T15:47:41</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Counter360">
            <timestamp>2013-4-22T15:51:57</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="RotaryDecoder" name="XLXI_7">
            <blockpin signalname="rot_a" name="ROT_A" />
            <blockpin signalname="rot_b" name="ROT_B" />
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="XLXN_17" name="UP" />
            <blockpin signalname="XLXN_18" name="DOWN" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_5">
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_24(7:0)" name="VALUE(7:0)" />
            <blockpin signalname="LED2" name="PWM" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_4">
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_22(7:0)" name="VALUE(7:0)" />
            <blockpin signalname="LED1" name="PWM" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_3">
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_23(7:0)" name="VALUE(7:0)" />
            <blockpin signalname="LED0" name="PWM" />
        </block>
        <block symbolname="Counter360" name="XLXI_10">
            <blockpin signalname="BTN_NORTH" name="UP" />
            <blockpin signalname="BTN_SOUTH" name="DOWN" />
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_40(8:0)" name="VALUE(8:0)" />
        </block>
        <block symbolname="RGBEncoder" name="XLXI_6">
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="rot_c" name="BUTTON" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_16(7:0)" name="HUE(7:0)" />
            <blockpin signalname="XLXN_15(7:0)" name="SAT(7:0)" />
            <blockpin signalname="XLXN_40(8:0)" name="VAL(7:0)" />
            <blockpin signalname="XLXN_23(7:0)" name="R(7:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="G(7:0)" />
            <blockpin signalname="XLXN_24(7:0)" name="B(7:0)" />
        </block>
        <block symbolname="Counter256" name="XLXI_2">
            <blockpin signalname="BTN_EAST" name="UP" />
            <blockpin signalname="BTN_WEST" name="DOWN" />
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_15(7:0)" name="VALUE(7:0)" />
        </block>
        <block symbolname="Counter256" name="XLXI_1">
            <blockpin signalname="XLXN_17" name="UP" />
            <blockpin signalname="XLXN_18" name="DOWN" />
            <blockpin signalname="SYSTEM_CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_16(7:0)" name="VALUE(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RESET">
            <wire x2="784" y1="416" y2="416" x1="240" />
            <wire x2="784" y1="416" y2="848" x1="784" />
            <wire x2="784" y1="848" y2="1200" x1="784" />
            <wire x2="784" y1="1200" y2="1552" x1="784" />
            <wire x2="816" y1="1552" y2="1552" x1="784" />
            <wire x2="816" y1="1200" y2="1200" x1="784" />
            <wire x2="816" y1="848" y2="848" x1="784" />
            <wire x2="1296" y1="416" y2="416" x1="784" />
            <wire x2="2064" y1="416" y2="416" x1="1296" />
            <wire x2="2064" y1="416" y2="576" x1="2064" />
            <wire x2="2064" y1="576" y2="848" x1="2064" />
            <wire x2="2064" y1="848" y2="1120" x1="2064" />
            <wire x2="2080" y1="1120" y2="1120" x1="2064" />
            <wire x2="2080" y1="848" y2="848" x1="2064" />
            <wire x2="2080" y1="576" y2="576" x1="2064" />
            <wire x2="1296" y1="416" y2="880" x1="1296" />
            <wire x2="1504" y1="880" y2="880" x1="1296" />
        </branch>
        <branch name="rot_c">
            <wire x2="1488" y1="368" y2="368" x1="240" />
            <wire x2="1488" y1="368" y2="816" x1="1488" />
            <wire x2="1504" y1="816" y2="816" x1="1488" />
        </branch>
        <branch name="BTN_EAST">
            <wire x2="816" y1="1008" y2="1008" x1="240" />
        </branch>
        <branch name="BTN_WEST">
            <wire x2="816" y1="1072" y2="1072" x1="240" />
        </branch>
        <branch name="BTN_NORTH">
            <wire x2="816" y1="1360" y2="1360" x1="240" />
        </branch>
        <branch name="BTN_SOUTH">
            <wire x2="816" y1="1424" y2="1424" x1="240" />
        </branch>
        <branch name="SYSTEM_CLK">
            <wire x2="288" y1="480" y2="480" x1="240" />
            <wire x2="288" y1="480" y2="784" x1="288" />
            <wire x2="752" y1="480" y2="480" x1="288" />
            <wire x2="1456" y1="480" y2="480" x1="752" />
            <wire x2="2032" y1="480" y2="480" x1="1456" />
            <wire x2="2032" y1="480" y2="512" x1="2032" />
            <wire x2="2032" y1="512" y2="784" x1="2032" />
            <wire x2="2032" y1="784" y2="1056" x1="2032" />
            <wire x2="2080" y1="1056" y2="1056" x1="2032" />
            <wire x2="2080" y1="784" y2="784" x1="2032" />
            <wire x2="2080" y1="512" y2="512" x1="2032" />
            <wire x2="1456" y1="480" y2="752" x1="1456" />
            <wire x2="1504" y1="752" y2="752" x1="1456" />
            <wire x2="752" y1="480" y2="784" x1="752" />
            <wire x2="752" y1="784" y2="1136" x1="752" />
            <wire x2="816" y1="1136" y2="1136" x1="752" />
            <wire x2="752" y1="1136" y2="1488" x1="752" />
            <wire x2="816" y1="1488" y2="1488" x1="752" />
            <wire x2="816" y1="784" y2="784" x1="752" />
        </branch>
        <instance x="288" y="816" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2080" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2080" y="944" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2080" y="672" name="XLXI_3" orien="R0">
        </instance>
        <instance x="816" y="1584" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1504" y="1104" name="XLXI_6" orien="R0">
        </instance>
        <instance x="816" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <instance x="816" y="880" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_40(8:0)">
            <wire x2="1248" y1="1360" y2="1360" x1="1200" />
            <wire x2="1248" y1="1072" y2="1360" x1="1248" />
            <wire x2="1504" y1="1072" y2="1072" x1="1248" />
        </branch>
        <branch name="XLXN_24(7:0)">
            <wire x2="1936" y1="1072" y2="1072" x1="1888" />
            <wire x2="1936" y1="1072" y2="1184" x1="1936" />
            <wire x2="2080" y1="1184" y2="1184" x1="1936" />
        </branch>
        <branch name="XLXN_23(7:0)">
            <wire x2="1936" y1="752" y2="752" x1="1888" />
            <wire x2="1936" y1="640" y2="752" x1="1936" />
            <wire x2="2080" y1="640" y2="640" x1="1936" />
        </branch>
        <branch name="XLXN_22(7:0)">
            <wire x2="2080" y1="912" y2="912" x1="1888" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="704" y1="784" y2="784" x1="672" />
            <wire x2="816" y1="720" y2="720" x1="704" />
            <wire x2="704" y1="720" y2="784" x1="704" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="816" y1="656" y2="656" x1="672" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="1248" y1="656" y2="656" x1="1200" />
            <wire x2="1248" y1="656" y2="944" x1="1248" />
            <wire x2="1504" y1="944" y2="944" x1="1248" />
        </branch>
        <branch name="XLXN_15(7:0)">
            <wire x2="1504" y1="1008" y2="1008" x1="1200" />
        </branch>
        <branch name="rot_a">
            <wire x2="256" y1="656" y2="656" x1="240" />
            <wire x2="288" y1="656" y2="656" x1="256" />
        </branch>
        <branch name="rot_b">
            <wire x2="256" y1="720" y2="720" x1="240" />
            <wire x2="288" y1="720" y2="720" x1="256" />
        </branch>
        <iomarker fontsize="28" x="240" y="656" name="rot_a" orien="R180" />
        <iomarker fontsize="28" x="240" y="720" name="rot_b" orien="R180" />
        <iomarker fontsize="28" x="240" y="368" name="rot_c" orien="R180" />
        <iomarker fontsize="28" x="240" y="416" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="240" y="480" name="SYSTEM_CLK" orien="R180" />
        <iomarker fontsize="28" x="240" y="1008" name="BTN_EAST" orien="R180" />
        <iomarker fontsize="28" x="240" y="1072" name="BTN_WEST" orien="R180" />
        <iomarker fontsize="28" x="240" y="1360" name="BTN_NORTH" orien="R180" />
        <iomarker fontsize="28" x="240" y="1424" name="BTN_SOUTH" orien="R180" />
        <branch name="LED0">
            <wire x2="2496" y1="512" y2="512" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2496" y="512" name="LED0" orien="R0" />
        <branch name="LED1">
            <wire x2="2496" y1="784" y2="784" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2496" y="784" name="LED1" orien="R0" />
        <branch name="LED2">
            <wire x2="2496" y1="1056" y2="1056" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1056" name="LED2" orien="R0" />
    </sheet>
</drawing>