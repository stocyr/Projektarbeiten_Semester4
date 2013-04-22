<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15(7:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22(7:0)" />
        <signal name="XLXN_23(7:0)" />
        <signal name="XLXN_24(7:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40(8:0)" />
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
        <block symbolname="RGBEncoder" name="XLXI_6">
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_32" name="BUTTON" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_16(7:0)" name="HUE(7:0)" />
            <blockpin signalname="XLXN_15(7:0)" name="SAT(7:0)" />
            <blockpin signalname="XLXN_40(8:0)" name="VAL(7:0)" />
            <blockpin signalname="XLXN_23(7:0)" name="R(7:0)" />
            <blockpin signalname="XLXN_22(7:0)" name="G(7:0)" />
            <blockpin signalname="XLXN_24(7:0)" name="B(7:0)" />
        </block>
        <block symbolname="RotaryDecoder" name="XLXI_7">
            <blockpin signalname="XLXN_33" name="ROT_A" />
            <blockpin signalname="XLXN_34" name="ROT_B" />
            <blockpin signalname="XLXN_35" name="CLK" />
            <blockpin signalname="XLXN_17" name="UP" />
            <blockpin signalname="XLXN_18" name="DOWN" />
        </block>
        <block symbolname="Counter256" name="XLXI_1">
            <blockpin signalname="XLXN_17" name="UP" />
            <blockpin signalname="XLXN_18" name="DOWN" />
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_16(7:0)" name="VALUE(7:0)" />
        </block>
        <block symbolname="Counter256" name="XLXI_2">
            <blockpin signalname="XLXN_36" name="UP" />
            <blockpin signalname="XLXN_37" name="DOWN" />
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_15(7:0)" name="VALUE(7:0)" />
        </block>
        <block symbolname="Counter360" name="XLXI_10">
            <blockpin signalname="XLXN_38" name="UP" />
            <blockpin signalname="XLXN_39" name="DOWN" />
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_40(8:0)" name="VALUE(8:0)" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_3">
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_23(7:0)" name="VALUE(7:0)" />
            <blockpin name="PWM" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_4">
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_22(7:0)" name="VALUE(7:0)" />
            <blockpin name="PWM" />
        </block>
        <block symbolname="PWMEncoder" name="XLXI_5">
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_19" name="RESET" />
            <blockpin signalname="XLXN_24(7:0)" name="VALUE(7:0)" />
            <blockpin name="PWM" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="880" name="XLXI_1" orien="R0">
        </instance>
        <instance x="736" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1424" y="1104" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_15(7:0)">
            <wire x2="1424" y1="1008" y2="1008" x1="1120" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="1168" y1="656" y2="656" x1="1120" />
            <wire x2="1168" y1="656" y2="944" x1="1168" />
            <wire x2="1424" y1="944" y2="944" x1="1168" />
        </branch>
        <instance x="736" y="1584" name="XLXI_10" orien="R0">
        </instance>
        <instance x="208" y="816" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="736" y1="656" y2="656" x1="592" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="624" y1="784" y2="784" x1="592" />
            <wire x2="736" y1="720" y2="720" x1="624" />
            <wire x2="624" y1="720" y2="784" x1="624" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="704" y1="416" y2="416" x1="192" />
            <wire x2="704" y1="416" y2="848" x1="704" />
            <wire x2="704" y1="848" y2="1200" x1="704" />
            <wire x2="736" y1="1200" y2="1200" x1="704" />
            <wire x2="704" y1="1200" y2="1552" x1="704" />
            <wire x2="736" y1="1552" y2="1552" x1="704" />
            <wire x2="736" y1="848" y2="848" x1="704" />
            <wire x2="1216" y1="416" y2="416" x1="704" />
            <wire x2="1216" y1="416" y2="880" x1="1216" />
            <wire x2="1424" y1="880" y2="880" x1="1216" />
            <wire x2="1984" y1="416" y2="416" x1="1216" />
            <wire x2="1984" y1="416" y2="576" x1="1984" />
            <wire x2="1984" y1="576" y2="848" x1="1984" />
            <wire x2="2000" y1="848" y2="848" x1="1984" />
            <wire x2="1984" y1="848" y2="1120" x1="1984" />
            <wire x2="2000" y1="1120" y2="1120" x1="1984" />
            <wire x2="2000" y1="576" y2="576" x1="1984" />
        </branch>
        <instance x="2000" y="672" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2000" y="944" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2000" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_22(7:0)">
            <wire x2="2000" y1="912" y2="912" x1="1808" />
        </branch>
        <branch name="XLXN_23(7:0)">
            <wire x2="1856" y1="752" y2="752" x1="1808" />
            <wire x2="1856" y1="640" y2="752" x1="1856" />
            <wire x2="2000" y1="640" y2="640" x1="1856" />
        </branch>
        <branch name="XLXN_24(7:0)">
            <wire x2="1856" y1="1072" y2="1072" x1="1808" />
            <wire x2="1856" y1="1072" y2="1184" x1="1856" />
            <wire x2="2000" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="672" y1="480" y2="480" x1="192" />
            <wire x2="1376" y1="480" y2="480" x1="672" />
            <wire x2="1376" y1="480" y2="752" x1="1376" />
            <wire x2="1424" y1="752" y2="752" x1="1376" />
            <wire x2="1952" y1="480" y2="480" x1="1376" />
            <wire x2="1952" y1="480" y2="512" x1="1952" />
            <wire x2="2000" y1="512" y2="512" x1="1952" />
            <wire x2="1952" y1="512" y2="784" x1="1952" />
            <wire x2="2000" y1="784" y2="784" x1="1952" />
            <wire x2="1952" y1="784" y2="1056" x1="1952" />
            <wire x2="2000" y1="1056" y2="1056" x1="1952" />
            <wire x2="672" y1="480" y2="784" x1="672" />
            <wire x2="720" y1="784" y2="784" x1="672" />
            <wire x2="736" y1="784" y2="784" x1="720" />
            <wire x2="672" y1="784" y2="1136" x1="672" />
            <wire x2="736" y1="1136" y2="1136" x1="672" />
            <wire x2="672" y1="1136" y2="1152" x1="672" />
            <wire x2="672" y1="1152" y2="1488" x1="672" />
            <wire x2="736" y1="1488" y2="1488" x1="672" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1296" y1="368" y2="368" x1="192" />
            <wire x2="1296" y1="368" y2="816" x1="1296" />
            <wire x2="1424" y1="816" y2="816" x1="1296" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="208" y1="656" y2="656" x1="192" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="208" y1="720" y2="720" x1="192" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="208" y1="784" y2="784" x1="192" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="736" y1="1008" y2="1008" x1="192" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="736" y1="1072" y2="1072" x1="192" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="736" y1="1360" y2="1360" x1="192" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="736" y1="1424" y2="1424" x1="192" />
        </branch>
        <branch name="XLXN_40(8:0)">
            <wire x2="1168" y1="1360" y2="1360" x1="1120" />
            <wire x2="1168" y1="1072" y2="1360" x1="1168" />
            <wire x2="1424" y1="1072" y2="1072" x1="1168" />
        </branch>
    </sheet>
</drawing>