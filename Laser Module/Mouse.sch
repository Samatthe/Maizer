<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="mike-temp">
<packages>
<package name="RFM69HCW-XXXS2">
<wire x1="-8" y1="8" x2="8" y2="8" width="0.2032" layer="21"/>
<wire x1="8" y1="8" x2="8" y2="-8" width="0.2032" layer="21"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.2032" layer="21"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.2032" layer="21"/>
<smd name="4" x="-7.5" y="1" dx="3" dy="1.2" layer="1"/>
<smd name="3" x="-7.5" y="3" dx="3" dy="1.2" layer="1"/>
<smd name="2" x="-7.5" y="5" dx="3" dy="1.2" layer="1"/>
<smd name="1" x="-7.5" y="7" dx="3" dy="1.2" layer="1"/>
<smd name="5" x="-7.5" y="-1" dx="3" dy="1.2" layer="1"/>
<smd name="6" x="-7.5" y="-3" dx="3" dy="1.2" layer="1"/>
<smd name="7" x="-7.5" y="-5" dx="3" dy="1.2" layer="1"/>
<smd name="8" x="-7.5" y="-7" dx="3" dy="1.2" layer="1"/>
<smd name="9" x="7.5" y="-7" dx="3" dy="1.2" layer="1"/>
<smd name="10" x="7.5" y="-5" dx="3" dy="1.2" layer="1"/>
<smd name="11" x="7.5" y="-3" dx="3" dy="1.2" layer="1"/>
<smd name="12" x="7.5" y="-1" dx="3" dy="1.2" layer="1"/>
<smd name="13" x="7.5" y="1" dx="3" dy="1.2" layer="1"/>
<smd name="14" x="7.5" y="3" dx="3" dy="1.2" layer="1"/>
<smd name="15" x="7.5" y="5" dx="3" dy="1.2" layer="1"/>
<smd name="16" x="7.5" y="7" dx="3" dy="1.2" layer="1"/>
<wire x1="-4" y1="6" x2="-4" y2="2" width="0.2032" layer="21"/>
<wire x1="-4" y1="2" x2="0" y2="2" width="0.2032" layer="21"/>
<wire x1="0" y1="2" x2="0" y2="6" width="0.2032" layer="21"/>
<wire x1="0" y1="6" x2="-4" y2="6" width="0.2032" layer="21"/>
<text x="-9" y="9" size="1.27" layer="25">&gt;NAME</text>
<text x="9" y="9" size="1.27" layer="27" align="bottom-right">&gt;VALUE</text>
<text x="-5.485" y="6.35" size="1.27" layer="21" ratio="15">1</text>
<wire x1="2" y1="3" x2="2" y2="5" width="0.2032" layer="21"/>
<wire x1="4" y1="5" x2="2" y2="5" width="0.2032" layer="21"/>
<wire x1="4" y1="3" x2="4" y2="5" width="0.2032" layer="21"/>
<wire x1="4" y1="3" x2="2" y2="3" width="0.2032" layer="21"/>
</package>
<package name="RFM69W-XXXS2">
<wire x1="-9.85" y1="8" x2="9.85" y2="8" width="0.2032" layer="21"/>
<wire x1="9.85" y1="8" x2="9.85" y2="-8" width="0.2032" layer="21"/>
<wire x1="9.85" y1="-8" x2="-9.85" y2="-8" width="0.2032" layer="21"/>
<wire x1="-9.85" y1="-8" x2="-9.85" y2="8" width="0.2032" layer="21"/>
<smd name="4" x="-9.35" y="1" dx="3" dy="1.2" layer="1"/>
<smd name="3" x="-9.35" y="3" dx="3" dy="1.2" layer="1"/>
<smd name="2" x="-9.35" y="5" dx="3" dy="1.2" layer="1"/>
<smd name="1" x="-9.35" y="7" dx="3" dy="1.2" layer="1"/>
<smd name="5" x="-9.35" y="-1" dx="3" dy="1.2" layer="1"/>
<smd name="6" x="-9.35" y="-3" dx="3" dy="1.2" layer="1"/>
<smd name="7" x="-9.35" y="-5" dx="3" dy="1.2" layer="1"/>
<smd name="8" x="-9.35" y="-7" dx="3" dy="1.2" layer="1"/>
<smd name="9" x="9.35" y="-7" dx="3" dy="1.2" layer="1"/>
<smd name="10" x="9.35" y="-5" dx="3" dy="1.2" layer="1"/>
<smd name="11" x="9.35" y="-3" dx="3" dy="1.2" layer="1"/>
<smd name="12" x="9.35" y="-1" dx="3" dy="1.2" layer="1"/>
<smd name="13" x="9.35" y="1" dx="3" dy="1.2" layer="1"/>
<smd name="14" x="9.35" y="3" dx="3" dy="1.2" layer="1"/>
<smd name="15" x="9.35" y="5" dx="3" dy="1.2" layer="1"/>
<smd name="16" x="9.35" y="7" dx="3" dy="1.2" layer="1"/>
<wire x1="-5" y1="-1" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-5" y1="-6" x2="0" y2="-6" width="0.2032" layer="21"/>
<wire x1="0" y1="-6" x2="0" y2="-1" width="0.2032" layer="21"/>
<wire x1="0" y1="-1" x2="-5" y2="-1" width="0.2032" layer="21"/>
<wire x1="-5" y1="7" x2="-5" y2="4" width="0.2032" layer="21"/>
<wire x1="-5" y1="4" x2="5" y2="4" width="0.2032" layer="21"/>
<wire x1="5" y1="4" x2="5" y2="7" width="0.2032" layer="21"/>
<wire x1="5" y1="7" x2="-5" y2="7" width="0.2032" layer="21"/>
<text x="-10" y="9" size="1.27" layer="25">&gt;NAME</text>
<text x="10" y="9" size="1.27" layer="27" align="bottom-right">&gt;VALUE</text>
<text x="-6.985" y="6.35" size="1.27" layer="21" ratio="15">1</text>
</package>
<package name="1X02">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X2">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-SMD">
<description>2mm SMD side-entry connector. tDocu layer indicates the actual physical plastic housing. +/- indicate SparkFun standard batteries and wiring.</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="0" size="0.4064" layer="27">&gt;Value</text>
<text x="2.159" y="-4.445" size="1.27" layer="51">+</text>
<text x="-2.921" y="-4.445" size="1.27" layer="51">-</text>
</package>
<package name="1X02_BIG">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
</package>
<package name="JST-2-SMD-VERT">
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="2.54" y="-5.08" size="1.27" layer="25">&gt;Name</text>
<text x="2.24" y="3.48" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SCREWTERMINAL-5MM-2">
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="MOLEX-1X2_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
</package>
<package name="1X02_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-2-PTH">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="21"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="21"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="1X02_XTRA_BIG">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
</package>
<package name="1X02_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2-NS">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-PTH-NS">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="JST-2-PTH-KIT">
<description>&lt;H3&gt;JST-2-PTH-KIT&lt;/h3&gt;
2-Pin JST, through-hole connector&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<polygon width="0.127" layer="30">
<vertex x="-0.9975" y="-0.6604" curve="-90.025935"/>
<vertex x="-1.6604" y="0" curve="-90.017354"/>
<vertex x="-1" y="0.6604" curve="-90"/>
<vertex x="-0.3396" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1" y="-0.2865" curve="-90.08005"/>
<vertex x="-1.2865" y="0" curve="-90.040011"/>
<vertex x="-1" y="0.2865" curve="-90"/>
<vertex x="-0.7135" y="0" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.0025" y="-0.6604" curve="-90.025935"/>
<vertex x="0.3396" y="0" curve="-90.017354"/>
<vertex x="1" y="0.6604" curve="-90"/>
<vertex x="1.6604" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1" y="-0.2865" curve="-90.08005"/>
<vertex x="0.7135" y="0" curve="-90.040011"/>
<vertex x="1" y="0.2865" curve="-90"/>
<vertex x="1.2865" y="0" curve="-90"/>
</polygon>
</package>
<package name="SPRINGTERMINAL-2.54MM-2">
<wire x1="-4.2" y1="7.88" x2="-4.2" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-4.2" y1="-2.8" x2="-4.2" y2="-4.72" width="0.254" layer="51"/>
<wire x1="-4.2" y1="-4.72" x2="3.44" y2="-4.72" width="0.254" layer="51"/>
<wire x1="3.44" y1="-4.72" x2="3.44" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.44" y1="7.88" x2="-4.2" y2="7.88" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="1"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="1"/>
<wire x1="-4.2" y1="-2.8" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<wire x1="3.44" y1="4" x2="3.44" y2="1" width="0.254" layer="21"/>
<wire x1="3.44" y1="7.88" x2="3.44" y2="6" width="0.254" layer="21"/>
<wire x1="3.44" y1="-0.9" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.9"/>
<pad name="P$2" x="0" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="P$3" x="2.54" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="2" x="2.54" y="0" drill="1.1" diameter="1.9"/>
</package>
</packages>
<symbols>
<symbol name="RFM69H">
<pin name="RESET" x="-15.24" y="-10.16" length="middle" direction="in"/>
<pin name="DIO0" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="DIO1" x="15.24" y="10.16" length="middle" rot="R180"/>
<pin name="DIO2" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="DIO3" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="DIO4" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="DIO5" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="3.3V" x="-15.24" y="12.7" length="middle" direction="pwr"/>
<pin name="GND@1" x="15.24" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="ANT" x="15.24" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="GND@2" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="SCK" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="MISO" x="-15.24" y="5.08" length="middle"/>
<pin name="MOSI" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="NSS" x="-15.24" y="-2.54" length="middle" direction="in"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="-10.16" y="16.51" size="1.778" layer="95" ratio="12">&gt;NAME</text>
<text x="-10.16" y="-15.875" size="1.778" layer="96" ratio="12">&gt;VALUE</text>
</symbol>
<symbol name="M02">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RFM69H" prefix="U">
<gates>
<gate name="G$1" symbol="RFM69H" x="0" y="-2.54"/>
</gates>
<devices>
<device name="CW" package="RFM69HCW-XXXS2">
<connects>
<connect gate="G$1" pin="3.3V" pad="13"/>
<connect gate="G$1" pin="ANT" pad="9"/>
<connect gate="G$1" pin="DIO0" pad="14"/>
<connect gate="G$1" pin="DIO1" pad="15"/>
<connect gate="G$1" pin="DIO2" pad="16"/>
<connect gate="G$1" pin="DIO3" pad="11"/>
<connect gate="G$1" pin="DIO4" pad="12"/>
<connect gate="G$1" pin="DIO5" pad="7"/>
<connect gate="G$1" pin="GND@1" pad="1"/>
<connect gate="G$1" pin="GND@2" pad="8 10"/>
<connect gate="G$1" pin="MISO" pad="2"/>
<connect gate="G$1" pin="MOSI" pad="3"/>
<connect gate="G$1" pin="NSS" pad="5"/>
<connect gate="G$1" pin="RESET" pad="6"/>
<connect gate="G$1" pin="SCK" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="RFM69W-XXXS2">
<connects>
<connect gate="G$1" pin="3.3V" pad="8"/>
<connect gate="G$1" pin="ANT" pad="10"/>
<connect gate="G$1" pin="DIO0" pad="2"/>
<connect gate="G$1" pin="DIO1" pad="3"/>
<connect gate="G$1" pin="DIO2" pad="4"/>
<connect gate="G$1" pin="DIO3" pad="5"/>
<connect gate="G$1" pin="DIO4" pad="6"/>
<connect gate="G$1" pin="DIO5" pad="7"/>
<connect gate="G$1" pin="GND@1" pad="9"/>
<connect gate="G$1" pin="GND@2" pad="11"/>
<connect gate="G$1" pin="MISO" pad="13"/>
<connect gate="G$1" pin="MOSI" pad="14"/>
<connect gate="G$1" pin="NSS" pad="15"/>
<connect gate="G$1" pin="RESET" pad="1"/>
<connect gate="G$1" pin="SCK" pad="12"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M02" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Header 2&lt;/b&gt;
Standard 2-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08233 with associated crimp pins and housings.</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROCKER" package="R_SW_TH">
<connects>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM-NO_SILK" package="SCREWTERMINAL-3.5MM-2-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JST-2-PTH-NO_SILK" package="JST-2-PTH-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2-KIT" package="JST-2-PTH-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-2.54-RA" package="SPRINGTERMINAL-2.54MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="3.3V">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3.3V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="V_BATT">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V_BATT" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="V_USB">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V_USB" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="3.3V" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V_BATT" prefix="SUPPLY">
<description>&lt;b&gt;V_BATT&lt;/b&gt;&lt;br&gt;
Generic symbol for the battery input to a system.</description>
<gates>
<gate name="G$1" symbol="V_BATT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V_USB" prefix="SUPPLY">
<gates>
<gate name="G$1" symbol="V_USB" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603-CAP@1">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="1210">
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-CAP@2">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.027940625" x2="0" y2="-0.027940625" width="0.381" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-SMALL">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="0.508" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="0.254" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CAP-PTH-SMALL2">
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-LARGE">
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-4.826" y="0" drill="0.9" diameter="1.905"/>
<pad name="2" x="4.572" y="0" drill="0.9" diameter="1.905"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="GRM43D">
<wire x1="2.25" y1="1.6" x2="1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="1.6" x2="-2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="2.25" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.6" x2="2.25" y2="1.6" width="0.127" layer="51"/>
<wire x1="1.1" y1="1.6" x2="1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="-1.6" width="0.127" layer="51"/>
<wire x1="-2.3" y1="1.8" x2="2.3" y2="1.8" width="0.127" layer="21"/>
<wire x1="-2.3" y1="-1.8" x2="2.3" y2="-1.8" width="0.127" layer="21"/>
<smd name="A" x="1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<smd name="C" x="-1.927" y="0" dx="3.2" dy="1.65" layer="1" rot="R90"/>
<text x="-2" y="2" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-2" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-2.2" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="2.2" y2="1.6" layer="51"/>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-5MM">
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.7" diameter="1.651"/>
<pad name="2" x="2.5" y="0" drill="0.7" diameter="1.651"/>
<text x="-0.762" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.016" y="-1.524" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="AXIAL-5MM">
<wire x1="-1.14" y1="0.762" x2="1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0.762" x2="1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="-0.762" x2="-1.14" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="-0.762" x2="-1.14" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.14" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.14" y1="0" x2="1.394" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.14" y1="0" x2="-1.394" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-2.5" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.5" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.17" size="0.4" layer="25">&gt;Name</text>
<text x="-1.032" y="-0.208" size="0.4" layer="21" ratio="15">&gt;Value</text>
</package>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="CTZ3">
<description>CTZ3 Series land pattern for variable capacitor - CTZ3E-50C-W1-PF</description>
<wire x1="-1.6" y1="1.4" x2="-1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-2.25" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1.6" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.4" x2="-1" y2="2.2" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.4" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="-1" y1="2.2" x2="1" y2="2.2" width="0.127" layer="51"/>
<wire x1="0" y1="0.8" x2="0" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.8" y1="0" x2="0.8" y2="0" width="0.127" layer="51"/>
<wire x1="-1.05" y1="2.25" x2="-1.7" y2="1.45" width="0.127" layer="21"/>
<wire x1="-1.7" y1="1.45" x2="-1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-1.7" y1="-2.35" x2="-1.05" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.05" y1="2.25" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-2.35" width="0.127" layer="21"/>
<wire x1="1.7" y1="-2.35" x2="1.05" y2="-2.35" width="0.127" layer="21"/>
<smd name="+" x="0" y="2.05" dx="1.5" dy="1.2" layer="1"/>
<smd name="-" x="0" y="-2.05" dx="1.5" dy="1.2" layer="1"/>
<text x="-2" y="3" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2" y="-3.4" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
<package name="CAP-PTH-SMALLEZ">
<description>This is the "EZ" version of the .1" spaced ceramic thru-hole cap.&lt;br&gt;
It has reduced top mask to make it harder to put the component on the wrong side of the board.</description>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="0.7" diameter="1.651" stop="no"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" stop="no"/>
<text x="-1.27" y="1.905" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.6096" layer="27">&gt;Value</text>
<circle x="0" y="0" radius="0.898025" width="0" layer="30"/>
<circle x="2.54" y="0" radius="0.915809375" width="0" layer="30"/>
<circle x="0" y="0" radius="0.40160625" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.40160625" width="0" layer="29"/>
</package>
<package name="1206-CAP">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
</package>
<package name="0805-CAP">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<rectangle x1="0.508" y1="-0.635" x2="1.016" y2="0.635" layer="51"/>
<rectangle x1="-1.016" y1="-0.635" x2="-0.508" y2="0.635" layer="51" rot="R180"/>
</package>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="0.1UF-25V(+80/-20%)(0603)" prefix="C" uservalue="yes">
<description>CAP-00810&lt;br&gt;
Ceramic&lt;br&gt;
Standard decoupling cap</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="0603-CAP@1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00810"/>
<attribute name="VALUE" value="0.1uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10UF50V20%(1210)" prefix="C" uservalue="yes">
<description>CAP-09824</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-09824"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF-16V-10%(0603)" prefix="C" uservalue="yes">
<description>CAP-00868</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00868"/>
<attribute name="VALUE" value="1.0uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor&lt;/b&gt;
Standard 0603 ceramic capacitor, and 0.1" leaded capacitor.</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="CAP-PTH-SMALL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH2" package="CAP-PTH-SMALL2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="CAP-PTH-LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="GRM43D">
<connects>
<connect gate="G$1" pin="1" pad="A"/>
<connect gate="G$1" pin="2" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-CAP" package="0603-CAP@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402-CAP" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH1" package="CAP-PTH-5MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="AXIAL-5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ASMD" package="CTZ3">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="CAP-PTH-SMALLEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF50V10%(1206)" prefix="C" uservalue="yes">
<description>CAP-09822</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1206-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-09822"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10UF10V10%(0805)" prefix="C" uservalue="yes">
<description>CAP-11330</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-11330" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0.1UF-16V(+-10%)(0402)" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-12416"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF-25V-+80/-20(0805)" prefix="C" uservalue="yes">
<description>CAP-11625</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="&quot;" package="0805-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-11625"/>
<attribute name="VALUE" value="1.0uF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2.2UF-10V-20%(0603)" prefix="C" uservalue="yes">
<description>CAP-07888</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-07888" constant="no"/>
<attribute name="VALUE" value="2.2uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603-RES">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
</package>
<package name="0603-RES@2">
<wire x1="-1.6002" y1="0.6858" x2="1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="0.6858" x2="1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="-0.6858" x2="-1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="-1.6002" y1="-0.6858" x2="-1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.1905" y1="-0.381" x2="0.1905" y2="0.381" layer="21"/>
</package>
<package name="0603-RES@1">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
</package>
<package name="1206">
<wire x1="-2.4003" y1="1.1049" x2="2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="-1.1049" x2="-2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-2.4003" y1="-1.1049" x2="-2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="1.1049" x2="2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.5621" x2="3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="1.5621" x2="3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="-1.5621" x2="-3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="-3.302" y1="-1.5621" x2="-3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.4986" y1="0.8128" x2="1.4986" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="0.8128" x2="1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="-0.8128" x2="-1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="-0.8128" x2="-1.4986" y2="0.8128" width="0.0508" layer="39"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762" diameter="1.6764"/>
<pad name="2" x="2.5" y="0" drill="0.762" diameter="1.6764"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<wire x1="-3.9116" y1="-1.8034" x2="3.9116" y2="-1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="-1.8034" x2="3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="1.8034" x2="-3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="-3.9116" y1="1.8034" x2="-3.9116" y2="-1.8034" width="0.0508" layer="39"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="0402-RES">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.2065" y1="0.6477" x2="1.2065" y2="0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="0.6477" x2="1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="-0.6477" x2="-1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="-1.2065" y1="-0.6477" x2="-1.2065" y2="0.6477" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="180OHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-08788</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08788" constant="no"/>
<attribute name="VALUE" value="180" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10KOHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-00824</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603-RES@1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-00824"/>
<attribute name="VALUE" value="10K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603-RES@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="4.7KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-07857</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07857" constant="no"/>
<attribute name="VALUE" value="4.7K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-00824</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-00824"/>
<attribute name="VALUE" value="10K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="100KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-07828</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07828"/>
<attribute name="VALUE" value="100k" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-07856</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES@2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07856"/>
<attribute name="VALUE" value="1K" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="330OHM1/10W1%(0603)" prefix="R" uservalue="yes">
<description>RES-00818</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-00818"/>
<attribute name="VALUE" value="330" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-LED">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find discrete LEDs for illumination or indication, but no displays.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="LED-0603">
<wire x1="0.46" y1="0.17" x2="0" y2="0.17" width="0.2032" layer="21"/>
<wire x1="-0.46" y1="0.17" x2="0" y2="0.17" width="0.2032" layer="21"/>
<wire x1="0" y1="0.17" x2="0.2338" y2="-0.14" width="0.2032" layer="21"/>
<wire x1="-0.0254" y1="0.1546" x2="-0.2184" y2="-0.14" width="0.2032" layer="21"/>
<smd name="C" x="0" y="0.877" dx="1" dy="1" layer="1" roundness="30"/>
<smd name="A" x="0" y="-0.877" dx="1" dy="1" layer="1" roundness="30"/>
<text x="-0.6985" y="-0.889" size="0.4064" layer="25" rot="R90">&gt;NAME</text>
<text x="1.0795" y="-1.016" size="0.4064" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="LED-1206">
<wire x1="-1" y1="1" x2="-2.4" y2="1" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="1" x2="-2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-1" x2="-1" y2="-1" width="0.2032" layer="21"/>
<wire x1="1" y1="1" x2="2.4" y2="1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1" x2="2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1" x2="1" y2="-1" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0.7" x2="0.3" y2="0" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0" x2="0.3" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0" x2="-0.3" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.3" y1="0.6" x2="-0.3" y2="-0.6" width="0.2032" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="0" width="0.2032" layer="21"/>
<smd name="A" x="-1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<smd name="C" x="1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<text x="-0.889" y="1.397" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.778" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="LUXEON-REBEL">
<smd name="ANODE" x="-1.39" y="2.63" dx="1.91" dy="2.03" layer="1" roundness="50"/>
<smd name="CATHODE" x="1.39" y="2.63" dx="1.91" dy="2.03" layer="1" roundness="50"/>
<smd name="P$3" x="0" y="-1.42" dx="4.68" dy="3.03" layer="1" roundness="50"/>
<text x="-2.54" y="3.175" size="0.508" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="0.508" layer="27">&gt;VALUE</text>
</package>
<package name="LED-1206-BOTTOM">
<wire x1="-2" y1="0.4" x2="-2" y2="-0.4" width="0.127" layer="49"/>
<wire x1="-2.4" y1="0" x2="-1.6" y2="0" width="0.127" layer="49"/>
<wire x1="1.6" y1="0" x2="2.4" y2="0" width="0.127" layer="49"/>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.127" layer="49"/>
<wire x1="-0.381" y1="0" x2="-0.381" y2="0.635" width="0.127" layer="49"/>
<wire x1="-0.381" y1="0.635" x2="0.254" y2="0" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="-0.381" y2="-0.635" width="0.127" layer="49"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.635" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="49"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="49"/>
<rectangle x1="-0.75" y1="-0.75" x2="0.75" y2="0.75" layer="51"/>
<smd name="A" x="-1.8" y="0" dx="1.5" dy="1.6" layer="1"/>
<smd name="C" x="1.8" y="0" dx="1.5" dy="1.6" layer="1"/>
<hole x="0" y="0" drill="2.3"/>
<polygon width="0" layer="51">
<vertex x="1.1" y="-0.5"/>
<vertex x="1.1" y="0.5"/>
<vertex x="1.6" y="0.5"/>
<vertex x="1.6" y="0.25" curve="90"/>
<vertex x="1.4" y="0.05"/>
<vertex x="1.4" y="-0.05" curve="90"/>
<vertex x="1.6" y="-0.25"/>
<vertex x="1.6" y="-0.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.1" y="0.5"/>
<vertex x="-1.1" y="-0.5"/>
<vertex x="-1.6" y="-0.5"/>
<vertex x="-1.6" y="-0.25" curve="90"/>
<vertex x="-1.4" y="-0.05"/>
<vertex x="-1.4" y="0.05" curve="90"/>
<vertex x="-1.6" y="0.25"/>
<vertex x="-1.6" y="0.5"/>
</polygon>
<wire x1="1.016" y1="1.016" x2="2.7686" y2="1.016" width="0.127" layer="21"/>
<wire x1="2.7686" y1="1.016" x2="2.7686" y2="-1.016" width="0.127" layer="21"/>
<wire x1="2.7686" y1="-1.016" x2="1.016" y2="-1.016" width="0.127" layer="21"/>
<wire x1="2.9972" y1="0" x2="3.3528" y2="0" width="0.127" layer="21"/>
<wire x1="-1.016" y1="-1.016" x2="-2.7686" y2="-1.016" width="0.127" layer="21"/>
<wire x1="-2.7686" y1="-1.016" x2="-2.7686" y2="1.016" width="0.127" layer="21"/>
<wire x1="-2.7686" y1="1.016" x2="-1.016" y2="1.016" width="0.127" layer="21"/>
<wire x1="-2.9972" y1="0" x2="-3.3528" y2="0" width="0.127" layer="21"/>
<wire x1="-3.175" y1="0.1778" x2="-3.175" y2="-0.1778" width="0.127" layer="21"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED-GREEN" prefix="D" uservalue="yes">
<description>&lt;B&gt;Various green LEDs&lt;br&gt;&lt;br&gt;&lt;/B&gt;
Green LEDs used in SFE Production&lt;br&gt;&lt;br&gt;
0603- DIO-00821&lt;br&gt;
LARGE- DIO-00862&lt;br&gt;
LILYPAD- DIO-09910&lt;br&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00821" constant="no"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="LILYPAD" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09910"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="LARGE" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00862" constant="no"/>
<attribute name="VALUE" value="GREEN" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206-BOTTOM" package="LED-1206-BOTTOM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-11076" constant="no"/>
<attribute name="VALUE" value="Green" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-RED" prefix="D" uservalue="yes">
<description>Assorted Red LEDs&lt;br&gt;
LilyPad 1206- DIO-09912&lt;br&gt;
1206- DIO-00809&lt;br&gt;
0603- DIO-00819&lt;br&gt;
"SMART" means more efficient and expensive</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00819"/>
<attribute name="VALUE" value="RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00809"/>
<attribute name="VALUE" value="RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="LILYPAD" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09912"/>
<attribute name="VALUE" value="RED" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603-SMART" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-11154" constant="no"/>
<attribute name="VALUE" value="Red" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-BLUE" prefix="D" uservalue="yes">
<description>&lt;H3&gt;Blue LEDs for production use&lt;/H3&gt;&lt;p&gt;
Various blue LEDs stocked by SparkFun production&lt;br&gt;
0603 - DIO-08575&lt;br&gt;
Rebel - DIO-09553&lt;br&gt;
1206 - DIO-09911</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="2.54"/>
</gates>
<devices>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-08575"/>
<attribute name="VALUE" value="BLUE"/>
</technology>
</technologies>
</device>
<device name="1206" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09911"/>
<attribute name="VALUE" value="BLUE" constant="no"/>
</technology>
</technologies>
</device>
<device name="REBEL" package="LUXEON-REBEL">
<connects>
<connect gate="G$1" pin="A" pad="ANODE"/>
<connect gate="G$1" pin="C" pad="CATHODE"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09553"/>
<attribute name="VALUE" value="BLUE"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-WHITE" prefix="D" uservalue="yes">
<description>White SMD LEDs&lt;br&gt;
LilyPad 1206- DIO-09955</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09955" constant="no"/>
<attribute name="VALUE" value="WHITE" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09004"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Sensors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find sensors- accelerometers, gyros, compasses, magnetometers, light sensors, imagers, temp sensors, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SC70">
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.625" x2="1" y2="-0.625" width="0.127" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.127" layer="51"/>
<smd name="1" x="-0.65" y="-0.825" dx="0.4" dy="0.75" layer="1" cream="no"/>
<smd name="2" x="0" y="-0.825" dx="0.4" dy="0.75" layer="1" cream="no"/>
<smd name="3" x="0.65" y="-0.825" dx="0.4" dy="0.75" layer="1" cream="no"/>
<smd name="4" x="0.65" y="0.825" dx="0.4" dy="0.75" layer="1" cream="no"/>
<smd name="5" x="-0.65" y="0.825" dx="0.4" dy="0.75" layer="1" cream="no"/>
<text x="-0.889" y="1.524" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.254" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.85" y1="0.45" x2="-0.45" y2="1.2" layer="31"/>
<rectangle x1="0.45" y1="0.45" x2="0.85" y2="1.2" layer="31"/>
<rectangle x1="-0.8382" y1="-1.1684" x2="-0.508" y2="-0.4826" layer="31"/>
<rectangle x1="-0.1651" y1="-1.1684" x2="0.1651" y2="-0.4826" layer="31"/>
<rectangle x1="0.508" y1="-1.1684" x2="0.8382" y2="-0.4826" layer="31"/>
</package>
</packages>
<symbols>
<symbol name="HALL-EFFECT">
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-6.35" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-6.35" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-1.27" x2="-6.35" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-3.81" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-1.27" y2="3.81" width="0.254" layer="94"/>
<wire x1="-4.318" y1="0.762" x2="-5.842" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-4.318" y1="-0.762" x2="-5.842" y2="0.762" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-0.508" x2="-0.508" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-0.508" x2="-0.508" y2="0.508" width="0.254" layer="94"/>
<wire x1="-0.508" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0.508" y2="0.508" width="0.254" layer="94"/>
<wire x1="0.508" y1="0.508" x2="1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="-0.508" x2="1.27" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0.508" y1="0.508" x2="0.508" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0.508" y1="-0.508" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-0.508" y2="-0.508" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="3.048" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="-10.16" y="5.588" size="1.778" layer="95">&gt;Name</text>
<text x="-10.16" y="-7.62" size="1.778" layer="96">&gt;Value</text>
<pin name="GND" x="-12.7" y="-2.54" length="short"/>
<pin name="OUT" x="12.7" y="0" length="short" rot="R180"/>
<pin name="VCC" x="-12.7" y="2.54" length="short"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HALL-EFFECT">
<description>Hall effect sensor in SC70 package</description>
<gates>
<gate name="G$1" symbol="HALL-EFFECT" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="SC70">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="OUT" pad="5"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-09214"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Electromechanical">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find anything that moves- switches, relays, buttons, potentiometers. Also, anything that goes on a board but isn't electrical in nature- screws, standoffs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="TACTILE-PTH">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="TACTILE_SWITCH_SMD-2">
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<wire x1="-2.25" y1="2.25" x2="2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="2.25" x2="2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="-2.25" x2="-2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-2.25" x2="-2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="-2.2" y1="0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="1.3" y1="2.2" x2="-1.3" y2="2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="-2.2" x2="1.3" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="0.8" x2="1.8" y2="0.8" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="1.8" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.8" x2="-2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="2" x="2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="3" x="-2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="4" x="-2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE-PTH-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<wire x1="-6" y1="5" x2="-5" y2="6" width="0.2032" layer="21" curve="-90"/>
<wire x1="5" y1="6" x2="6" y2="5" width="0.2032" layer="21" curve="-90"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21" curve="-90"/>
<wire x1="-5" y1="-6" x2="-6" y2="-5" width="0.2032" layer="21" curve="-90"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<pad name="4" x="-6.25" y="2.5" drill="1.2" diameter="2.159"/>
<pad name="2" x="-6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="1" x="6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="3" x="6.25" y="2.5" drill="1.2" diameter="2.159"/>
</package>
<package name="TACTILE-SWITCH-1101NE">
<description>SparkFun SKU# COM-08229</description>
<wire x1="-3" y1="1.1" x2="-3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="3" y1="1.1" x2="3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="-2.75" y1="1.75" x2="-3" y2="1.5" width="0.2032" layer="21" curve="90"/>
<wire x1="-2.75" y1="1.75" x2="2.75" y2="1.75" width="0.2032" layer="21"/>
<wire x1="2.75" y1="1.75" x2="3" y2="1.5" width="0.2032" layer="21" curve="-90"/>
<wire x1="3" y1="-1.5" x2="2.75" y2="-1.75" width="0.2032" layer="21" curve="-90"/>
<wire x1="2.75" y1="-1.75" x2="-2.75" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-3" y1="-1.5" x2="-2.75" y2="-1.75" width="0.2032" layer="21" curve="90"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-3" y1="1.1" x2="-3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="1.1" x2="3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="-1.5" x2="3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="-1.5" y2="-0.75" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-0.75" x2="-1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-2" y1="0" x2="-1" y2="0" width="0.127" layer="51"/>
<wire x1="-1" y1="0" x2="0.1" y2="0.5" width="0.127" layer="51"/>
<wire x1="0.3" y1="0" x2="2" y2="0" width="0.127" layer="51"/>
<smd name="1" x="-3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<smd name="2" x="3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<text x="-3" y="2" size="0.762" layer="25">&gt;NAME</text>
<text x="-3" y="-2.7" size="0.762" layer="27">&gt;VALUE</text>
</package>
<package name="REED_SWITCH_PTH">
<wire x1="-6.985" y1="-0.635" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-0.635" x2="-6.985" y2="0" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0.635" x2="6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="6.985" y1="0.635" x2="6.985" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-7.62" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="7.62" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE_SWITCH_TALL">
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.254" layer="21"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.254" layer="21"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.254" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.75" width="0.254" layer="21"/>
<smd name="A1" x="-3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="A2" x="3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B1" x="-3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B2" x="3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
</package>
<package name="REED_SWITCH_PLASTIC">
<wire x1="-7.5" y1="-1.65" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="-1.65" x2="-7.5" y2="0" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="1.65" x2="7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="7.5" y1="1.65" x2="7.5" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.72" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.72" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE-PTH-SIDEEZ">
<wire x1="1.5" y1="-3.8" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="3.5" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="3.5" x2="3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3.65" y1="3.5" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="3" y2="2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="2" x2="3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="1" x2="-3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.65" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.65" y1="-2" x2="3.65" y2="1" width="0.2032" layer="21"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.2032" layer="21"/>
<pad name="ANCHOR1" x="-3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="ANCHOR2" x="3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="1" x="-2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<pad name="2" x="2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<circle x="2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="1.143" width="0" layer="30"/>
<circle x="2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="-2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="3.5" y="2.5" radius="1.143" width="0" layer="30"/>
</package>
<package name="TACTILE_SWITCH_SMD-3">
<wire x1="-2.04" y1="-0.44" x2="-2.04" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="1.14" x2="1.04" y2="1.14" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="0.8" width="0.15" layer="21"/>
<smd name="1" x="-1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="2" x="1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="3" x="-1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="4" x="1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<wire x1="2.06" y1="-0.44" x2="2.06" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="-1.16" x2="1.04" y2="-1.16" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-SMD-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<smd name="4" x="-6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="2" x="-6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="1" x="6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="3" x="6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<wire x1="-6" y1="-5" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="-6" y2="5" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-PTH-EZ">
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<polygon width="0.127" layer="30">
<vertex x="-3.2664" y="3.142"/>
<vertex x="-3.2589" y="3.1445" curve="89.986886"/>
<vertex x="-4.1326" y="2.286"/>
<vertex x="-4.1351" y="2.2657" curve="90.00652"/>
<vertex x="-3.2563" y="1.392"/>
<vertex x="-3.2487" y="1.3869" curve="90.006616"/>
<vertex x="-2.3826" y="2.2403"/>
<vertex x="-2.3775" y="2.2683" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2462" y="2.7026"/>
<vertex x="-3.2589" y="2.7051" curve="90.026544"/>
<vertex x="-3.6881" y="2.2733"/>
<vertex x="-3.6881" y="2.2632" curve="89.974074"/>
<vertex x="-3.2562" y="1.8213"/>
<vertex x="-3.2259" y="1.8186" curve="90.051271"/>
<vertex x="-2.8093" y="2.2658"/>
<vertex x="-2.8093" y="2.2606" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="3.1395"/>
<vertex x="3.2486" y="3.142" curve="89.986886"/>
<vertex x="2.3749" y="2.2835"/>
<vertex x="2.3724" y="2.2632" curve="90.00652"/>
<vertex x="3.2512" y="1.3895"/>
<vertex x="3.2588" y="1.3844" curve="90.006616"/>
<vertex x="4.1249" y="2.2378"/>
<vertex x="4.13" y="2.2658" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="2.7001"/>
<vertex x="3.2486" y="2.7026" curve="90.026544"/>
<vertex x="2.8194" y="2.2708"/>
<vertex x="2.8194" y="2.2607" curve="89.974074"/>
<vertex x="3.2513" y="1.8188"/>
<vertex x="3.2816" y="1.8161" curve="90.051271"/>
<vertex x="3.6982" y="2.2633"/>
<vertex x="3.6982" y="2.2581" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.2613" y="-1.3868"/>
<vertex x="-3.2538" y="-1.3843" curve="89.986886"/>
<vertex x="-4.1275" y="-2.2428"/>
<vertex x="-4.13" y="-2.2631" curve="90.00652"/>
<vertex x="-3.2512" y="-3.1368"/>
<vertex x="-3.2436" y="-3.1419" curve="90.006616"/>
<vertex x="-2.3775" y="-2.2885"/>
<vertex x="-2.3724" y="-2.2605" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2411" y="-1.8262"/>
<vertex x="-3.2538" y="-1.8237" curve="90.026544"/>
<vertex x="-3.683" y="-2.2555"/>
<vertex x="-3.683" y="-2.2656" curve="89.974074"/>
<vertex x="-3.2511" y="-2.7075"/>
<vertex x="-3.2208" y="-2.7102" curve="90.051271"/>
<vertex x="-2.8042" y="-2.263"/>
<vertex x="-2.8042" y="-2.2682" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="-1.3843"/>
<vertex x="3.2486" y="-1.3818" curve="89.986886"/>
<vertex x="2.3749" y="-2.2403"/>
<vertex x="2.3724" y="-2.2606" curve="90.00652"/>
<vertex x="3.2512" y="-3.1343"/>
<vertex x="3.2588" y="-3.1394" curve="90.006616"/>
<vertex x="4.1249" y="-2.286"/>
<vertex x="4.13" y="-2.258" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="-1.8237"/>
<vertex x="3.2486" y="-1.8212" curve="90.026544"/>
<vertex x="2.8194" y="-2.253"/>
<vertex x="2.8194" y="-2.2631" curve="89.974074"/>
<vertex x="3.2513" y="-2.705"/>
<vertex x="3.2816" y="-2.7077" curve="90.051271"/>
<vertex x="3.6982" y="-2.2605"/>
<vertex x="3.6982" y="-2.2657" curve="90.012964"/>
</polygon>
</package>
<package name="TACTILE-SWITCH-SMD">
<wire x1="-1.54" y1="-2.54" x2="-2.54" y2="-1.54" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-1.24" x2="-2.54" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.54" x2="-1.54" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-1.54" y1="2.54" x2="1.54" y2="2.54" width="0.2032" layer="21"/>
<wire x1="1.54" y1="2.54" x2="2.54" y2="1.54" width="0.2032" layer="51"/>
<wire x1="2.54" y1="1.24" x2="2.54" y2="-1.24" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.54" x2="1.54" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="1.54" y1="-2.54" x2="-1.54" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="-2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="2" x="2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="3" x="-2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="4" x="2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<hole x="0" y="0.9" drill="0.7"/>
<hole x="0" y="-0.9" drill="0.7"/>
<smd name="1" x="-1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<wire x1="-2" y1="1.2" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="2" y2="1.2" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.2" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-1.5" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.7" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="0.7" y2="-2.1" width="0.127" layer="21"/>
<wire x1="0.7" y1="-2.1" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<text x="-2" y="1.7" size="0.8128" layer="25" ratio="15">&gt;NAME</text>
</package>
<package name="SWITCH-SPDT">
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="0" y="-2.54" drill="1.016" diameter="1.8796"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="AYZ0202">
<description>&lt;b&gt;DPDT Slide Switch SMD&lt;/b&gt;
www.SparkFun.com SKU : Comp-SMDS</description>
<wire x1="-3.6" y1="1.75" x2="-3.6" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-3.6" y1="-1.75" x2="3.6" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="3.6" y1="-1.75" x2="3.6" y2="1.75" width="0.2032" layer="21"/>
<wire x1="3.6" y1="1.75" x2="-3.6" y2="1.75" width="0.2032" layer="21"/>
<smd name="3" x="2.5" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="2" x="0" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="1" x="-2.5" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="6" x="2.5" y="-2.825" dx="1" dy="1.15" layer="1"/>
<smd name="5" x="0" y="-2.825" dx="1" dy="1.15" layer="1"/>
<smd name="4" x="-2.5" y="-2.825" dx="1" dy="1.15" layer="1"/>
<text x="-2.54" y="1.143" size="0.4064" layer="25">&gt;Name</text>
<text x="0.508" y="1.143" size="0.4064" layer="27">&gt;Value</text>
<hole x="1.5" y="0" drill="0.85"/>
<hole x="-1.5" y="0" drill="0.85"/>
</package>
<package name="SWITCHE-DPDT">
<wire x1="8" y1="3.25" x2="-8" y2="3.25" width="0.127" layer="51"/>
<wire x1="-8" y1="3.25" x2="-8" y2="-3.25" width="0.127" layer="51"/>
<wire x1="-8" y1="-3.25" x2="8" y2="-3.25" width="0.127" layer="51"/>
<wire x1="8" y1="-3.25" x2="8" y2="3.25" width="0.127" layer="51"/>
<wire x1="-6" y1="3.25" x2="6" y2="3.25" width="0.2032" layer="21"/>
<wire x1="8" y1="1" x2="8" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-3.25" x2="-6" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-8" y1="-1" x2="-8" y2="1" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.5" y="3" drill="1.5" diameter="2.54"/>
<pad name="P$2" x="-7.5" y="-3" drill="1.5" diameter="2.54"/>
<pad name="P$3" x="7.5" y="3" drill="1.5" diameter="2.54"/>
<pad name="P$4" x="7.5" y="-3" drill="1.5" diameter="2.54"/>
<pad name="1" x="-4" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="2" x="0" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="3" x="4" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="4" x="-4" y="-1.25" drill="0.7" diameter="1.6764"/>
<pad name="5" x="0" y="-1.25" drill="0.7" diameter="1.6764"/>
<pad name="6" x="4" y="-1.25" drill="0.7" diameter="1.6764"/>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SWITCH-SPDT-SMD">
<wire x1="-4.5" y1="1.75" x2="-4.5" y2="-1.75" width="0.127" layer="51"/>
<wire x1="-4.5" y1="-1.75" x2="4.5" y2="-1.75" width="0.127" layer="51"/>
<wire x1="4.5" y1="-1.75" x2="4.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="4.5" y1="1.75" x2="2" y2="1.75" width="0.127" layer="51"/>
<wire x1="2" y1="1.75" x2="0.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="1.75" x2="-4.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="1.75" x2="0.5" y2="3.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="3.75" x2="2" y2="3.75" width="0.127" layer="51"/>
<wire x1="2" y1="3.75" x2="2" y2="1.75" width="0.127" layer="51"/>
<wire x1="-4" y1="-1.75" x2="-4.5" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="-1.75" x2="-4.5" y2="1.75" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.75" x2="4.5" y2="1.75" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.75" x2="4.5" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.75" x2="4" y2="-1.75" width="0.2032" layer="21"/>
<smd name="1" x="-2.5" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<smd name="2" x="0" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<smd name="3" x="2.5" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<text x="-1.27" y="0.635" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-1.27" size="0.6096" layer="27">&gt;Value</text>
<hole x="-3.55" y="0" drill="0.9"/>
<hole x="3.55" y="0" drill="0.9"/>
</package>
<package name="SWITCH-SPDT_LOCK.007S">
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.7178" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="0" y="-2.7178" drill="1.016" diameter="1.8796"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="-0.3048" x2="0.2286" y2="0.3048" layer="51"/>
<rectangle x1="-0.2286" y1="2.2352" x2="0.2286" y2="2.8448" layer="51"/>
<rectangle x1="-0.2286" y1="-2.8448" x2="0.2286" y2="-2.2352" layer="51"/>
</package>
<package name="SWITCH-SPDT_KIT">
<description>&lt;h3&gt;SWITCH-SPDT_KIT&lt;/h3&gt;
Through-hole SPDT Switch&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.7178" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="3" x="0" y="-2.7178" drill="1.016" diameter="1.8796" stop="no"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="-0.3048" x2="0.2286" y2="0.3048" layer="51"/>
<rectangle x1="-0.2286" y1="2.2352" x2="0.2286" y2="2.8448" layer="51"/>
<rectangle x1="-0.2286" y1="-2.8448" x2="0.2286" y2="-2.2352" layer="51"/>
<polygon width="0.127" layer="30">
<vertex x="-0.0178" y="1.8414" curve="-90.039946"/>
<vertex x="-0.8787" y="2.6975" curve="-90"/>
<vertex x="-0.0026" y="3.5916" curve="-90.006409"/>
<vertex x="0.8738" y="2.6975" curve="-90.03214"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.0051" y="-3.5967" curve="-90.006558"/>
<vertex x="-0.8788" y="-2.7431" curve="-90.037923"/>
<vertex x="0.0128" y="-1.8363" curve="-90.006318"/>
<vertex x="0.8814" y="-2.7432" curve="-90.038792"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.0102" y="-0.8738" curve="-90.019852"/>
<vertex x="-0.8762" y="-0.0203" curve="-90.019119"/>
<vertex x="0.0153" y="0.8789" curve="-90"/>
<vertex x="0.8739" y="-0.0077" curve="-90.038897"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0" y="2.2758" curve="-90.012891"/>
<vertex x="-0.4445" y="2.7" curve="-90"/>
<vertex x="0" y="3.1673" curve="-90"/>
<vertex x="0.4419" y="2.7102" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.0026" y="-3.1648" curve="-90.012891"/>
<vertex x="-0.4419" y="-2.7406" curve="-90"/>
<vertex x="0.0026" y="-2.2733" curve="-90"/>
<vertex x="0.4445" y="-2.7304" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.0102" y="-0.4471" curve="-90.012891"/>
<vertex x="-0.4343" y="-0.0229" curve="-90"/>
<vertex x="0.0102" y="0.4444" curve="-90"/>
<vertex x="0.4521" y="-0.0127" curve="-90.012967"/>
</polygon>
</package>
<package name="SWITCH-SPST-SMD-A">
<wire x1="-3.35" y1="1.3" x2="-3.35" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-3.35" y1="-1.3" x2="3.35" y2="-1.3" width="0.127" layer="51"/>
<wire x1="3.35" y1="-1.3" x2="3.35" y2="1.3" width="0.127" layer="51"/>
<wire x1="3.35" y1="1.3" x2="-0.1" y2="1.3" width="0.127" layer="51"/>
<wire x1="-0.1" y1="1.3" x2="-1.4" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.4" y1="1.3" x2="-3.35" y2="1.3" width="0.127" layer="51"/>
<wire x1="-0.1" y1="1.3" x2="-0.1" y2="2.8" width="0.127" layer="51"/>
<wire x1="-0.1" y1="2.8" x2="-1.4" y2="2.8" width="0.127" layer="51"/>
<wire x1="-1.4" y1="2.8" x2="-1.4" y2="1.3" width="0.127" layer="51"/>
<wire x1="-3.35" y1="0.3" x2="-3.35" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="3.35" y1="0.3" x2="3.35" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="2.7" y1="1.3" x2="-2.7" y2="1.3" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1.3" x2="0" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="2" x="-0.75" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="3" x="2.25" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="GND1" x="-3.65" y="1" dx="1" dy="0.6" layer="1"/>
<smd name="GND2" x="-3.65" y="-1.1" dx="1" dy="0.8" layer="1"/>
<smd name="GND3" x="3.65" y="1" dx="1" dy="0.6" layer="1"/>
<smd name="GND4" x="3.65" y="-1.1" dx="1" dy="0.8" layer="1"/>
<text x="-1.27" y="0.635" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-1.27" size="0.6096" layer="27">&gt;Value</text>
<hole x="-1.5" y="0" drill="0.9"/>
<hole x="1.5" y="0" drill="0.9"/>
</package>
<package name="TACTILE_SWITCH_SMD_4.6X2.8MM">
<description>&lt;h3&gt;4.6 x 2.8mm Tactile Switch&lt;/h3&gt;

&lt;p&gt;&lt;a href="http://www.digikey.com/product-detail/en/KMR231NG%20LFS/CKN10246CT-ND/2176497"&gt;Example&lt;/a&gt;&lt;/p&gt;</description>
<smd name="3" x="2.05" y="0.8" dx="0.9" dy="1" layer="1"/>
<smd name="2" x="2.05" y="-0.8" dx="0.9" dy="1" layer="1"/>
<smd name="1" x="-2.05" y="-0.8" dx="0.9" dy="1" layer="1"/>
<smd name="4" x="-2.05" y="0.8" dx="0.9" dy="1" layer="1"/>
<wire x1="-2.1" y1="1.4" x2="-2.1" y2="-1.4" width="0.127" layer="51"/>
<wire x1="2.1" y1="-1.4" x2="2.1" y2="1.4" width="0.127" layer="51"/>
<wire x1="-2.1" y1="1.4" x2="2.1" y2="1.4" width="0.127" layer="51"/>
<wire x1="-2.1" y1="-1.4" x2="2.1" y2="-1.4" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.805" width="0.127" layer="21"/>
<wire x1="1.338" y1="-1.4" x2="-1.338" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-1.338" y1="1.4" x2="1.338" y2="1.4" width="0.2032" layer="21"/>
<wire x1="-2.1" y1="0.13" x2="-2.1" y2="-0.13" width="0.2032" layer="21"/>
<wire x1="2.1" y1="-0.13" x2="2.1" y2="0.13" width="0.2032" layer="21"/>
<text x="-2.54" y="1.524" size="0.8128" layer="25">&gt;Name</text>
<text x="-2.54" y="-1.524" size="0.8128" layer="27" align="top-left">&gt;Value</text>
<rectangle x1="-2.3" y1="0.5" x2="-2.1" y2="1.1" layer="51"/>
<rectangle x1="-2.3" y1="-1.1" x2="-2.1" y2="-0.5" layer="51"/>
<rectangle x1="2.1" y1="-1.1" x2="2.3" y2="-0.5" layer="51" rot="R180"/>
<rectangle x1="2.1" y1="0.5" x2="2.3" y2="1.1" layer="51" rot="R180"/>
</package>
<package name="TRACKBALL">
<wire x1="-1.5" y1="4.5" x2="1.5" y2="4.5" width="0.127" layer="51"/>
<wire x1="1.5" y1="-4.5" x2="-1.5" y2="-4.5" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="-4.5" width="0.127" layer="51"/>
<wire x1="-4.5" y1="-2" x2="-2.5" y2="-2" width="0.127" layer="47"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-4.5" width="0.127" layer="47"/>
<wire x1="-2.5" y1="-4.5" x2="-4.5" y2="-4.5" width="0.127" layer="47"/>
<wire x1="-4.5" y1="-4.5" x2="-4.5" y2="-2" width="0.127" layer="47"/>
<wire x1="-5.5" y1="1.5" x2="-5.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-5.5" y1="-1.5" x2="-4" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-4" y1="-1.5" x2="-3" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-3" y1="-1.5" x2="-1.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="5.5" y1="1.5" x2="5.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="5.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="-3" width="0.127" layer="51"/>
<wire x1="1.5" y1="-3" x2="1.5" y2="-4" width="0.127" layer="51"/>
<wire x1="1.5" y1="-4" x2="1.5" y2="-4.5" width="0.127" layer="51"/>
<wire x1="-2" y1="4.5" x2="-2" y2="2.5" width="0.127" layer="47"/>
<wire x1="-2" y1="2.5" x2="-4.5" y2="2.5" width="0.127" layer="47"/>
<wire x1="-4.5" y1="2.5" x2="-4.5" y2="4.5" width="0.127" layer="47"/>
<wire x1="-4.5" y1="4.5" x2="-2" y2="4.5" width="0.127" layer="47"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="3" width="0.127" layer="51"/>
<wire x1="-1.5" y1="3" x2="-1.5" y2="4" width="0.127" layer="51"/>
<wire x1="-1.5" y1="4" x2="-1.5" y2="4.5" width="0.127" layer="51"/>
<wire x1="-1.5" y1="1.5" x2="-5.5" y2="1.5" width="0.127" layer="51"/>
<wire x1="5.5" y1="1.5" x2="4" y2="1.5" width="0.127" layer="51"/>
<wire x1="4" y1="1.5" x2="3" y2="1.5" width="0.127" layer="51"/>
<wire x1="3" y1="1.5" x2="1.5" y2="1.5" width="0.127" layer="51"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="4.5" width="0.127" layer="51"/>
<wire x1="4.5" y1="2" x2="2.5" y2="2" width="0.127" layer="47"/>
<wire x1="2.5" y1="2" x2="2.5" y2="4.5" width="0.127" layer="47"/>
<wire x1="2.5" y1="4.5" x2="4.5" y2="4.5" width="0.127" layer="47"/>
<wire x1="4.5" y1="4.5" x2="4.5" y2="2" width="0.127" layer="47"/>
<wire x1="2" y1="-4.5" x2="2" y2="-2.5" width="0.127" layer="47"/>
<wire x1="2" y1="-2.5" x2="4.5" y2="-2.5" width="0.127" layer="47"/>
<wire x1="4.5" y1="-2.5" x2="4.5" y2="-4.5" width="0.127" layer="47"/>
<wire x1="4.5" y1="-4.5" x2="2" y2="-4.5" width="0.127" layer="47"/>
<wire x1="-4" y1="-1.5" x2="-4" y2="-2" width="0.127" layer="51"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="-2" width="0.127" layer="51"/>
<wire x1="-1.5" y1="3" x2="-2" y2="3" width="0.127" layer="51"/>
<wire x1="-2" y1="4" x2="-1.5" y2="4" width="0.127" layer="51"/>
<wire x1="2" y1="-3" x2="1.5" y2="-3" width="0.127" layer="51"/>
<wire x1="2" y1="-4" x2="1.5" y2="-4" width="0.127" layer="51"/>
<wire x1="4" y1="2" x2="4" y2="1.5" width="0.127" layer="51"/>
<wire x1="3" y1="2" x2="3" y2="1.5" width="0.127" layer="51"/>
<wire x1="4.7" y1="1.5" x2="4.7" y2="-1.5" width="0.127" layer="47"/>
<wire x1="4.7" y1="-1.5" x2="3.3" y2="-1.5" width="0.127" layer="47"/>
<wire x1="3.3" y1="-1.5" x2="3.3" y2="1.5" width="0.127" layer="47"/>
<wire x1="3.3" y1="1.5" x2="4.7" y2="1.5" width="0.127" layer="47"/>
<wire x1="-4.7" y1="-1.5" x2="-4.7" y2="1.5" width="0.127" layer="47"/>
<wire x1="-4.7" y1="1.5" x2="-3.3" y2="1.5" width="0.127" layer="47"/>
<wire x1="-3.3" y1="1.5" x2="-3.3" y2="-1.5" width="0.127" layer="47"/>
<wire x1="-3.3" y1="-1.5" x2="-4.7" y2="-1.5" width="0.127" layer="47"/>
<wire x1="-1.5" y1="4.4" x2="1.5" y2="4.4" width="0.127" layer="47"/>
<wire x1="1.5" y1="4.4" x2="1.5" y2="3" width="0.127" layer="47"/>
<wire x1="1.5" y1="3" x2="-1.5" y2="3" width="0.127" layer="47"/>
<wire x1="-1.5" y1="3" x2="-1.5" y2="4.4" width="0.127" layer="47"/>
<wire x1="-1.5" y1="-3" x2="1.5" y2="-3" width="0.127" layer="47"/>
<wire x1="1.5" y1="-3" x2="1.5" y2="-4.4" width="0.127" layer="47"/>
<wire x1="1.5" y1="-4.4" x2="-1.5" y2="-4.4" width="0.127" layer="47"/>
<wire x1="-1.5" y1="-4.4" x2="-1.5" y2="-3" width="0.127" layer="47"/>
<circle x="0" y="0" radius="1.5" width="0.127" layer="51"/>
<rectangle x1="-4.7" y1="-1.5" x2="-3.3" y2="1.5" layer="39"/>
<rectangle x1="-1.5" y1="3" x2="1.5" y2="4.4" layer="39"/>
<rectangle x1="3.3" y1="-1.5" x2="4.7" y2="1.5" layer="39"/>
<rectangle x1="-1.5" y1="-4.4" x2="1.5" y2="-3" layer="39"/>
<rectangle x1="2" y1="-4.5" x2="4.5" y2="-2.5" layer="101"/>
<rectangle x1="-4.5" y1="-4.5" x2="-2.5" y2="-2" layer="101"/>
<rectangle x1="-4.5" y1="2.5" x2="-2" y2="4.5" layer="101"/>
<rectangle x1="2.5" y1="2" x2="4.5" y2="4.5" layer="101"/>
<hole x="-4" y="0" drill="0.9"/>
<hole x="4" y="0" drill="0.9"/>
</package>
</packages>
<symbols>
<symbol name="SWITCH-MOMENTARY-2">
<wire x1="1.905" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="2"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="TOGGLE">
<wire x1="0" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.175" y2="-2.54" width="0.127" layer="94"/>
<wire x1="2.54" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0.2032" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0.2032" layer="94"/>
<circle x="0" y="0" radius="0.3592" width="0.2032" layer="94"/>
<text x="-1.905" y="-6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="S" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="O" x="5.08" y="2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="TRACKBALL">
<wire x1="-7.62" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<text x="-5.08" y="-0.762" size="1.27" layer="94">TRACKBALL</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SWITCH-MOMENTARY-2" prefix="S">
<description>Various NO switches- pushbuttons, reed, etc</description>
<gates>
<gate name="G$1" symbol="SWITCH-MOMENTARY-2" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="TACTILE-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" SWCH-08441" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-2" package="TACTILE_SWITCH_SMD-2">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-09213"/>
</technology>
</technologies>
</device>
<device name="12MM" package="TACTILE-PTH-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-09185" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-1101NE" package="TACTILE-SWITCH-1101NE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-00815" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH_REED" package="REED_SWITCH_PTH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-4" package="TACTILE_SWITCH_TALL">
<connects>
<connect gate="G$1" pin="1" pad="A2"/>
<connect gate="G$1" pin="2" pad="B2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-11966" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH_REED2" package="REED_SWITCH_PLASTIC">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-10467" constant="no"/>
</technology>
</technologies>
</device>
<device name="SIDE_EZ" package="TACTILE-PTH-SIDEEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-3" package="TACTILE_SWITCH_SMD-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-12MM" package="TACTILE-SMD-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_EZ" package="TACTILE-PTH-EZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08247" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-REDUNDANT" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08247" constant="no"/>
</technology>
</technologies>
</device>
<device name="TACTILE-SWITCH-SMD-RIGHT-ANGLE" package="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-12265" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-4.6X2.8MM" package="TACTILE_SWITCH_SMD_4.6X2.8MM">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-13065"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWITCH-SPDT" prefix="S" uservalue="yes">
<description>&lt;b&gt;SPDT Switch&lt;/b&gt;&lt;br&gt;
Simple slide switch, Spark Fun Electronics SKU : COM-00102&lt;br&gt;
DPDT SMT slide switch, AYZ0202, SWCH-08179</description>
<gates>
<gate name="1" symbol="TOGGLE" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="SWITCH-SPDT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08261"/>
</technology>
</technologies>
</device>
<device name="SMD" package="AYZ0202">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08179" constant="no"/>
<attribute name="SF_ID" value="COM-00597" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="SWITCHE-DPDT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="R_SW_TH">
<connects>
<connect gate="1" pin="O" pad="P$1"/>
<connect gate="1" pin="P" pad="P$2"/>
<connect gate="1" pin="S" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="SWITCH-SPDT-SMD">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_LOCK" package="SWITCH-SPDT_LOCK.007S">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="SWITCH-SPDT_KIT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08261" constant="no"/>
</technology>
</technologies>
</device>
<device name="-SMD-A" package="SWITCH-SPST-SMD-A">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-10651"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TRACKBALL">
<description>Mechanical footprint for trackball</description>
<gates>
<gate name="G$1" symbol="TRACKBALL" x="0" y="0"/>
</gates>
<devices>
<device name="MECH" package="TRACKBALL">
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-09237"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="battery-management-temp">
<packages>
<package name="PDSO-N12">
<wire x1="1.25" y1="2" x2="-1.25" y2="2" width="0.127" layer="51"/>
<wire x1="-1.25" y1="2" x2="-1.25" y2="-2" width="0.127" layer="51"/>
<wire x1="-1.25" y1="-2" x2="1.25" y2="-2" width="0.127" layer="51"/>
<wire x1="1.25" y1="-2" x2="1.25" y2="2" width="0.127" layer="51"/>
<smd name="1" x="-1" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="2" x="-0.6" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="3" x="-0.2" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="4" x="0.2" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="5" x="0.6" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="6" x="1" y="-1.975" dx="0.2" dy="0.85" layer="1" cream="no"/>
<smd name="7" x="1" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="8" x="0.6" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="9" x="0.2" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="10" x="-0.2" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="11" x="-0.6" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="12" x="-1" y="1.975" dx="0.2" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="EP" x="0" y="0" dx="1.95" dy="1.95" layer="1" cream="no"/>
<polygon width="0.0127" layer="1">
<vertex x="1.65" y="1.225"/>
<vertex x="-1.65" y="1.225"/>
<vertex x="-1.65" y="0.975"/>
<vertex x="-0.975" y="0.975"/>
<vertex x="-0.975" y="-0.975"/>
<vertex x="-1.65" y="-0.975"/>
<vertex x="-1.65" y="-1.225"/>
<vertex x="1.65" y="-1.225"/>
<vertex x="1.65" y="-0.975"/>
<vertex x="0.975" y="-0.975"/>
<vertex x="0.975" y="0.975"/>
<vertex x="1.65" y="0.975"/>
</polygon>
<smd name="EP1" x="-1.15" y="1.1" dx="1" dy="0.25" layer="1" cream="no"/>
<smd name="EP3" x="1.15" y="-1.1" dx="1" dy="0.25" layer="1" rot="R180" cream="no"/>
<smd name="EP2" x="-1.15" y="-1.1" dx="1" dy="0.25" layer="1" cream="no"/>
<smd name="EP4" x="1.15" y="1.1" dx="1" dy="0.25" layer="1" rot="R180" cream="no"/>
<wire x1="-1.35" y1="2" x2="-1.35" y2="1.4" width="0.2032" layer="21"/>
<wire x1="1.35" y1="-2" x2="1.35" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="1.35" y1="2" x2="1.35" y2="1.4" width="0.2032" layer="21"/>
<wire x1="-1.35" y1="0.8" x2="-1.35" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="1.35" y1="-0.8" x2="1.35" y2="0.8" width="0.2032" layer="21"/>
<circle x="-1.55" y="-2.2" radius="0.22360625" width="0" layer="21"/>
<wire x1="-1.35" y1="-2" x2="-1.35" y2="-1.4" width="0.2032" layer="21"/>
<text x="-1.905" y="0" size="0.4572" layer="25" rot="R90" align="bottom-center">&gt;Name</text>
<text x="1.778" y="0" size="0.4572" layer="27" rot="R90" align="top-center">&gt;Value</text>
<rectangle x1="-0.9" y1="0.1" x2="-0.1" y2="1.1" layer="31"/>
<rectangle x1="0.1" y1="-1.1" x2="0.9" y2="-0.1" layer="31" rot="R180"/>
<rectangle x1="0.1" y1="0.1" x2="0.9" y2="1.1" layer="31" rot="R180"/>
<rectangle x1="-0.9" y1="-1.1" x2="-0.1" y2="-0.1" layer="31"/>
<rectangle x1="-1.625" y1="0.975" x2="-1.1" y2="1.225" layer="31"/>
<rectangle x1="1.1" y1="-1.225" x2="1.625" y2="-0.975" layer="31" rot="R180"/>
<rectangle x1="1.1" y1="0.975" x2="1.625" y2="1.225" layer="31" rot="R180"/>
<rectangle x1="-1.625" y1="-1.225" x2="-1.1" y2="-0.975" layer="31"/>
<rectangle x1="-1.75" y1="0.875" x2="1.75" y2="1.325" layer="29"/>
<rectangle x1="-1.75" y1="-1.325" x2="1.75" y2="-0.875" layer="29" rot="R180"/>
<wire x1="-1.35" y1="2" x2="-1.25" y2="2" width="0.2032" layer="21"/>
<wire x1="1.35" y1="-2" x2="1.25" y2="-2" width="0.2032" layer="21"/>
<wire x1="1.35" y1="2" x2="1.25" y2="2" width="0.127" layer="21"/>
<wire x1="-1.35" y1="-2" x2="-1.25" y2="-2" width="0.127" layer="21"/>
<rectangle x1="0.1" y1="1.575" x2="0.3" y2="2.375" layer="31"/>
<rectangle x1="0.5" y1="1.575" x2="0.7" y2="2.375" layer="31"/>
<rectangle x1="0.5" y1="1.575" x2="0.7" y2="2.375" layer="31"/>
<rectangle x1="0.9" y1="1.575" x2="1.1" y2="2.375" layer="31"/>
<rectangle x1="-0.3" y1="1.575" x2="-0.1" y2="2.375" layer="31"/>
<rectangle x1="-0.7" y1="1.575" x2="-0.5" y2="2.375" layer="31"/>
<rectangle x1="-1.1" y1="1.575" x2="-0.9" y2="2.375" layer="31"/>
<rectangle x1="-1.1" y1="-2.375" x2="-0.9" y2="-1.575" layer="31" rot="R180"/>
<rectangle x1="-0.7" y1="-2.375" x2="-0.5" y2="-1.575" layer="31" rot="R180"/>
<rectangle x1="-0.3" y1="-2.375" x2="-0.1" y2="-1.575" layer="31" rot="R180"/>
<rectangle x1="0.1" y1="-2.375" x2="0.3" y2="-1.575" layer="31" rot="R180"/>
<rectangle x1="0.5" y1="-2.375" x2="0.7" y2="-1.575" layer="31" rot="R180"/>
<rectangle x1="0.9" y1="-2.375" x2="1.1" y2="-1.575" layer="31" rot="R180"/>
</package>
<package name="PVQFN-N16">
<wire x1="1.5" y1="1.5" x2="-1.5" y2="1.5" width="0.127" layer="51"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.127" layer="51"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="1.5" width="0.127" layer="51"/>
<polygon width="0" layer="51">
<vertex x="0.13" y="1.5"/>
<vertex x="0.13" y="1.21" curve="90"/>
<vertex x="0.24" y="1.1"/>
<vertex x="0.26" y="1.1" curve="90"/>
<vertex x="0.37" y="1.21"/>
<vertex x="0.37" y="1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-0.37" y="1.5"/>
<vertex x="-0.37" y="1.21" curve="90"/>
<vertex x="-0.26" y="1.1"/>
<vertex x="-0.24" y="1.1" curve="90"/>
<vertex x="-0.13" y="1.21"/>
<vertex x="-0.13" y="1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-0.87" y="1.5"/>
<vertex x="-0.87" y="1.21" curve="90"/>
<vertex x="-0.76" y="1.1"/>
<vertex x="-0.74" y="1.1" curve="90"/>
<vertex x="-0.63" y="1.21"/>
<vertex x="-0.63" y="1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="0.63" y="1.5"/>
<vertex x="0.63" y="1.21" curve="90"/>
<vertex x="0.74" y="1.1"/>
<vertex x="0.76" y="1.1" curve="90"/>
<vertex x="0.87" y="1.21"/>
<vertex x="0.87" y="1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.5" y="0.13"/>
<vertex x="-1.21" y="0.13" curve="90"/>
<vertex x="-1.1" y="0.24"/>
<vertex x="-1.1" y="0.26" curve="90"/>
<vertex x="-1.21" y="0.37"/>
<vertex x="-1.5" y="0.37"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.5" y="-0.37"/>
<vertex x="-1.21" y="-0.37" curve="90"/>
<vertex x="-1.1" y="-0.26"/>
<vertex x="-1.1" y="-0.24" curve="90"/>
<vertex x="-1.21" y="-0.13"/>
<vertex x="-1.5" y="-0.13"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.5" y="-0.87"/>
<vertex x="-1.21" y="-0.87" curve="90"/>
<vertex x="-1.1" y="-0.76"/>
<vertex x="-1.1" y="-0.74" curve="90"/>
<vertex x="-1.21" y="-0.63"/>
<vertex x="-1.5" y="-0.63"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-1.5" y="0.63"/>
<vertex x="-1.21" y="0.63" curve="90"/>
<vertex x="-1.1" y="0.74"/>
<vertex x="-1.1" y="0.76" curve="90"/>
<vertex x="-1.21" y="0.87"/>
<vertex x="-1.5" y="0.87"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-0.13" y="-1.5"/>
<vertex x="-0.13" y="-1.21" curve="90"/>
<vertex x="-0.24" y="-1.1"/>
<vertex x="-0.26" y="-1.1" curve="90"/>
<vertex x="-0.37" y="-1.21"/>
<vertex x="-0.37" y="-1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="0.37" y="-1.5"/>
<vertex x="0.37" y="-1.21" curve="90"/>
<vertex x="0.26" y="-1.1"/>
<vertex x="0.24" y="-1.1" curve="90"/>
<vertex x="0.13" y="-1.21"/>
<vertex x="0.13" y="-1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="0.87" y="-1.5"/>
<vertex x="0.87" y="-1.21" curve="90"/>
<vertex x="0.76" y="-1.1"/>
<vertex x="0.74" y="-1.1" curve="90"/>
<vertex x="0.63" y="-1.21"/>
<vertex x="0.63" y="-1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="-0.63" y="-1.5"/>
<vertex x="-0.63" y="-1.21" curve="90"/>
<vertex x="-0.74" y="-1.1"/>
<vertex x="-0.76" y="-1.1" curve="90"/>
<vertex x="-0.87" y="-1.21"/>
<vertex x="-0.87" y="-1.5"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="1.5" y="-0.13"/>
<vertex x="1.21" y="-0.13" curve="90"/>
<vertex x="1.1" y="-0.24"/>
<vertex x="1.1" y="-0.26" curve="90"/>
<vertex x="1.21" y="-0.37"/>
<vertex x="1.5" y="-0.37"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="1.5" y="0.37"/>
<vertex x="1.21" y="0.37" curve="90"/>
<vertex x="1.1" y="0.26"/>
<vertex x="1.1" y="0.24" curve="90"/>
<vertex x="1.21" y="0.13"/>
<vertex x="1.5" y="0.13"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="1.5" y="0.87"/>
<vertex x="1.21" y="0.87" curve="90"/>
<vertex x="1.1" y="0.76"/>
<vertex x="1.1" y="0.74" curve="90"/>
<vertex x="1.21" y="0.63"/>
<vertex x="1.5" y="0.63"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="1.5" y="-0.63"/>
<vertex x="1.21" y="-0.63" curve="90"/>
<vertex x="1.1" y="-0.74"/>
<vertex x="1.1" y="-0.76" curve="90"/>
<vertex x="1.21" y="-0.87"/>
<vertex x="1.5" y="-0.87"/>
</polygon>
<polygon width="0" layer="51">
<vertex x="0.85" y="0.85"/>
<vertex x="-0.85" y="0.85"/>
<vertex x="-0.85" y="-0.63"/>
<vertex x="-0.63" y="-0.85"/>
<vertex x="0.85" y="-0.85"/>
</polygon>
<smd name="1" x="-0.75" y="-1.475" dx="0.28" dy="0.85" layer="1" cream="no"/>
<rectangle x1="-0.865" y1="-1.875" x2="-0.635" y2="-1.075" layer="31"/>
<smd name="2" x="-0.25" y="-1.475" dx="0.28" dy="0.85" layer="1" cream="no"/>
<rectangle x1="-0.365" y1="-1.875" x2="-0.135" y2="-1.075" layer="31"/>
<smd name="3" x="0.25" y="-1.475" dx="0.28" dy="0.85" layer="1" cream="no"/>
<rectangle x1="0.135" y1="-1.875" x2="0.365" y2="-1.075" layer="31"/>
<smd name="4" x="0.75" y="-1.475" dx="0.28" dy="0.85" layer="1" cream="no"/>
<rectangle x1="0.635" y1="-1.875" x2="0.865" y2="-1.075" layer="31"/>
<smd name="5" x="1.475" y="-0.75" dx="0.28" dy="0.85" layer="1" rot="R90" cream="no"/>
<rectangle x1="1.36" y1="-1.15" x2="1.59" y2="-0.35" layer="31" rot="R90"/>
<smd name="6" x="1.475" y="-0.25" dx="0.28" dy="0.85" layer="1" rot="R90" cream="no"/>
<rectangle x1="1.36" y1="-0.65" x2="1.59" y2="0.15" layer="31" rot="R90"/>
<smd name="7" x="1.475" y="0.25" dx="0.28" dy="0.85" layer="1" rot="R90" cream="no"/>
<rectangle x1="1.36" y1="-0.15" x2="1.59" y2="0.65" layer="31" rot="R90"/>
<smd name="8" x="1.475" y="0.75" dx="0.28" dy="0.85" layer="1" rot="R90" cream="no"/>
<rectangle x1="1.36" y1="0.35" x2="1.59" y2="1.15" layer="31" rot="R90"/>
<smd name="9" x="0.75" y="1.475" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<rectangle x1="0.635" y1="1.075" x2="0.865" y2="1.875" layer="31" rot="R180"/>
<smd name="10" x="0.25" y="1.475" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<rectangle x1="0.135" y1="1.075" x2="0.365" y2="1.875" layer="31" rot="R180"/>
<smd name="11" x="-0.25" y="1.475" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<rectangle x1="-0.365" y1="1.075" x2="-0.135" y2="1.875" layer="31" rot="R180"/>
<smd name="12" x="-0.75" y="1.475" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<rectangle x1="-0.865" y1="1.075" x2="-0.635" y2="1.875" layer="31" rot="R180"/>
<smd name="13" x="-1.475" y="0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<rectangle x1="-1.59" y1="0.35" x2="-1.36" y2="1.15" layer="31" rot="R270"/>
<smd name="14" x="-1.475" y="0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<rectangle x1="-1.59" y1="-0.15" x2="-1.36" y2="0.65" layer="31" rot="R270"/>
<smd name="15" x="-1.475" y="-0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<rectangle x1="-1.59" y1="-0.65" x2="-1.36" y2="0.15" layer="31" rot="R270"/>
<smd name="16" x="-1.475" y="-0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<rectangle x1="-1.59" y1="-1.15" x2="-1.36" y2="-0.35" layer="31" rot="R270"/>
<smd name="EP" x="0" y="0" dx="1.7" dy="1.7" layer="1" cream="no"/>
<rectangle x1="0.1" y1="0.1" x2="0.8" y2="0.8" layer="31"/>
<rectangle x1="-0.8" y1="-0.8" x2="-0.1" y2="-0.1" layer="31" rot="R180"/>
<rectangle x1="-0.8" y1="0.1" x2="-0.1" y2="0.8" layer="31" rot="R90"/>
<rectangle x1="0.1" y1="-0.8" x2="0.8" y2="-0.1" layer="31" rot="R270"/>
<wire x1="-1.7" y1="-1.06" x2="-1.06" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="1.6" y1="-1.06" x2="1.6" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="1.06" y1="-1.6" x2="1.6" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="1.06" y1="1.6" x2="1.6" y2="1.6" width="0.2032" layer="21"/>
<wire x1="1.6" y1="1.06" x2="1.6" y2="1.6" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="1.06" x2="-1.6" y2="1.6" width="0.2032" layer="21"/>
<wire x1="-1.06" y1="1.6" x2="-1.6" y2="1.6" width="0.2032" layer="21"/>
<circle x="-1.7" y="-1.7" radius="0.219315625" width="0" layer="21"/>
<text x="0" y="2.032" size="0.4572" layer="25" align="bottom-center">&gt;Name</text>
<text x="0" y="-2.032" size="0.4572" layer="27" rot="R180" align="bottom-center">&gt;Value</text>
<wire x1="1.1" y1="-1.905" x2="1.1" y2="-1.1" width="0.127" layer="41"/>
<wire x1="-1.1" y1="1.905" x2="-1.1" y2="1.1" width="0.127" layer="41"/>
<wire x1="1.1" y1="1.095" x2="1.1" y2="1.9" width="0.127" layer="41"/>
<wire x1="-1.1" y1="-1.095" x2="-1.1" y2="-1.9" width="0.127" layer="41"/>
</package>
</packages>
<symbols>
<symbol name="BQ27441-G1">
<pin name="SDA" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="SCL" x="12.7" y="0" length="short" rot="R180"/>
<pin name="VSS" x="-10.16" y="-5.08" length="short"/>
<pin name="VDD" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="BAT" x="-10.16" y="0" length="short"/>
<pin name="SRN" x="-10.16" y="7.62" length="short"/>
<pin name="SRP" x="-10.16" y="5.08" length="short"/>
<pin name="BIN" x="12.7" y="-7.62" length="short" rot="R180"/>
<pin name="GPOUT" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="PWPD" x="-10.16" y="-7.62" length="short"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-7.62" y="-10.414" size="1.778" layer="96" align="top-left">&gt;Value</text>
<text x="-7.62" y="10.414" size="1.778" layer="96">&gt;Name</text>
</symbol>
<symbol name="BQ24075">
<pin name="TS" x="-12.7" y="5.08" length="short"/>
<pin name="BAT" x="-12.7" y="7.62" length="short"/>
<pin name="!CE!" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="EN2" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="EN1" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="!PGOOD!" x="12.7" y="-12.7" length="short" rot="R180"/>
<pin name="VSS" x="-12.7" y="-10.16" length="short"/>
<pin name="EP" x="-12.7" y="-12.7" length="short"/>
<pin name="!CHG!" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="OUT" x="12.7" y="12.7" length="short" rot="R180"/>
<pin name="ILIM" x="-12.7" y="-5.08" length="short"/>
<pin name="IN" x="-12.7" y="12.7" length="short"/>
<pin name="TMR" x="-12.7" y="0" length="short"/>
<pin name="SYSOFF" x="12.7" y="0" length="short" rot="R180"/>
<pin name="ISET" x="-12.7" y="-2.54" length="short"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="-10.16" y="15.494" size="1.778" layer="95">&gt;Name</text>
<text x="-10.16" y="-15.494" size="1.778" layer="96" align="top-left">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BQ27441-G1" prefix="U">
<gates>
<gate name="G$1" symbol="BQ27441-G1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PDSO-N12">
<connects>
<connect gate="G$1" pin="BAT" pad="6"/>
<connect gate="G$1" pin="BIN" pad="10"/>
<connect gate="G$1" pin="GPOUT" pad="12"/>
<connect gate="G$1" pin="PWPD" pad="EP EP1 EP2 EP3 EP4"/>
<connect gate="G$1" pin="SCL" pad="2"/>
<connect gate="G$1" pin="SDA" pad="1"/>
<connect gate="G$1" pin="SRN" pad="7"/>
<connect gate="G$1" pin="SRP" pad="8"/>
<connect gate="G$1" pin="VDD" pad="5"/>
<connect gate="G$1" pin="VSS" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BQ24075" prefix="U">
<gates>
<gate name="G$1" symbol="BQ24075" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PVQFN-N16">
<connects>
<connect gate="G$1" pin="!CE!" pad="4"/>
<connect gate="G$1" pin="!CHG!" pad="9"/>
<connect gate="G$1" pin="!PGOOD!" pad="7"/>
<connect gate="G$1" pin="BAT" pad="2 3"/>
<connect gate="G$1" pin="EN1" pad="6"/>
<connect gate="G$1" pin="EN2" pad="5"/>
<connect gate="G$1" pin="EP" pad="EP"/>
<connect gate="G$1" pin="ILIM" pad="12"/>
<connect gate="G$1" pin="IN" pad="13"/>
<connect gate="G$1" pin="ISET" pad="16"/>
<connect gate="G$1" pin="OUT" pad="10 11"/>
<connect gate="G$1" pin="SYSOFF" pad="15"/>
<connect gate="G$1" pin="TMR" pad="14"/>
<connect gate="G$1" pin="TS" pad="1"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="USB-AB-MICRO-SMD">
<description>micro USB AB connector for OTG support. 5-pins: USBVCC, GND, D+, D-, USBID. Can act as host or device</description>
<smd name="D+" x="2.85" y="0" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="D-" x="2.85" y="0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="VBUS" x="2.85" y="1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="ID" x="2.85" y="-0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="GND" x="2.85" y="-1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="SHIELD2" x="0" y="1.25" dx="2" dy="1.9" layer="1" rot="R90"/>
<smd name="SHIELD3" x="0" y="-1.25" dx="2" dy="1.9" layer="1" rot="R90"/>
<wire x1="-2.75" y1="4" x2="-2.75" y2="-4" width="0.2032" layer="51"/>
<wire x1="-2.05" y1="5" x2="-2.05" y2="-5" width="0.2032" layer="51"/>
<text x="-5.2" y="5.5" size="0.3048" layer="51">PCB Front</text>
<wire x1="-3" y1="5.6" x2="-2.3" y2="5.3" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.4" y2="5.5" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.5" y2="5.2" width="0.08" layer="51"/>
<smd name="SHIELD1" x="0" y="4" dx="2.2" dy="1.9" layer="1" rot="R90"/>
<smd name="SHIELD4" x="0" y="-4" dx="2.2" dy="1.9" layer="1" rot="R90"/>
<wire x1="2.9" y1="4" x2="2.9" y2="-4" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="4" x2="-0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="4" x2="0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="0.6" y1="4" x2="2.9" y2="4" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-4" x2="2.9" y2="-4" width="0.2032" layer="51"/>
<wire x1="1.2" y1="4.1" x2="3" y2="4.1" width="0.254" layer="21"/>
<wire x1="3" y1="4.1" x2="3" y2="1.8" width="0.254" layer="21"/>
<wire x1="3" y1="-1.8" x2="3" y2="-4.1" width="0.254" layer="21"/>
<wire x1="3" y1="-4.1" x2="1.2" y2="-4.1" width="0.254" layer="21"/>
<wire x1="-1.2" y1="-4.1" x2="-1.9" y2="-4.1" width="0.254" layer="21"/>
<wire x1="-1.2" y1="4.1" x2="-1.9" y2="4.1" width="0.254" layer="21"/>
<wire x1="-0.6" y1="4" x2="-0.6" y2="4.6" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="4.6" x2="0.6" y2="4.6" width="0.2032" layer="51"/>
<wire x1="0.6" y1="4.6" x2="0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="0.6" y1="-4" x2="0.6" y2="-4.6" width="0.2032" layer="51"/>
<wire x1="0.6" y1="-4.6" x2="-0.6" y2="-4.6" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="-4.6" x2="-0.6" y2="-4" width="0.2032" layer="51"/>
<text x="-1.27" y="5.969" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="5.461" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="USB_AB_MICRO_1:1_V2">
<smd name="D+" x="2.85" y="0" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="D-" x="2.85" y="0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="VBUS" x="2.85" y="1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="ID" x="2.85" y="-0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="GND" x="2.85" y="-1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="SHIELD2" x="0" y="1.25" dx="2" dy="1.9" layer="1" rot="R90"/>
<smd name="SHIELD3" x="0" y="-1.25" dx="2" dy="1.9" layer="1" rot="R90"/>
<wire x1="-2.75" y1="4" x2="-2.75" y2="-4" width="0.2032" layer="51"/>
<wire x1="-2.05" y1="5" x2="-2.05" y2="-5" width="0.2032" layer="51"/>
<text x="-5.2" y="5.5" size="0.3048" layer="51">PCB Front</text>
<wire x1="-3" y1="5.6" x2="-2.3" y2="5.3" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.4" y2="5.5" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.5" y2="5.2" width="0.08" layer="51"/>
<smd name="SHIELD1" x="0" y="4" dx="2.2" dy="1.27" layer="1" rot="R90"/>
<smd name="SHIELD4" x="0" y="-4" dx="2.2" dy="1.27" layer="1" rot="R90"/>
<wire x1="2.9" y1="4" x2="2.9" y2="-4" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="4" x2="-0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="4" x2="0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="0.6" y1="4" x2="2.9" y2="4" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-4" x2="2.9" y2="-4" width="0.2032" layer="51"/>
<wire x1="1.2" y1="4.1" x2="3" y2="4.1" width="0.254" layer="21"/>
<wire x1="3" y1="4.1" x2="3" y2="1.8" width="0.254" layer="21"/>
<wire x1="3" y1="-1.8" x2="3" y2="-4.1" width="0.254" layer="21"/>
<wire x1="3" y1="-4.1" x2="1.2" y2="-4.1" width="0.254" layer="21"/>
<wire x1="-1.2" y1="-4.1" x2="-1.9" y2="-4.1" width="0.254" layer="21"/>
<wire x1="-1.2" y1="4.1" x2="-1.9" y2="4.1" width="0.254" layer="21"/>
<wire x1="-0.6" y1="4" x2="-0.6" y2="4.6" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="4.6" x2="0.6" y2="4.6" width="0.2032" layer="51"/>
<wire x1="0.6" y1="4.6" x2="0.6" y2="4" width="0.2032" layer="51"/>
<wire x1="0.6" y1="-4" x2="0.6" y2="-4.6" width="0.2032" layer="51"/>
<wire x1="0.6" y1="-4.6" x2="-0.6" y2="-4.6" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="-4.6" x2="-0.6" y2="-4" width="0.2032" layer="51"/>
<text x="-1.27" y="5.969" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="5.461" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="USB-AB-MICRO-SMD_V03">
<text x="-4.66" y="5.96" size="0.3048" layer="51">PCB Front</text>
<wire x1="-3" y1="5.6" x2="-2.3" y2="5.3" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.4" y2="5.5" width="0.08" layer="51"/>
<wire x1="-2.3" y1="5.3" x2="-2.5" y2="5.2" width="0.08" layer="51"/>
<text x="-1.27" y="5.969" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="5.461" size="0.4064" layer="27">&gt;VALUE</text>
<smd name="D+1" x="2.7" y="0" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="D-1" x="2.7" y="0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="VBUS1" x="2.7" y="1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="ID1" x="2.7" y="-0.65" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<smd name="GND1" x="2.7" y="-1.3" dx="0.4" dy="1.4" layer="1" rot="R90"/>
<hole x="2.2" y="1.9" drill="0.85"/>
<hole x="2.2" y="-1.9" drill="0.85"/>
<rectangle x1="-0.75" y1="2.784" x2="0.75" y2="4.584" layer="31"/>
<rectangle x1="-0.35" y1="-0.75" x2="0.35" y2="0.75" layer="31"/>
<rectangle x1="-0.75" y1="-4.584" x2="0.75" y2="-2.784" layer="31"/>
<wire x1="-2.15" y1="3.9" x2="-2.15" y2="-3.9" width="0.127" layer="49"/>
<wire x1="2.85" y1="3.9" x2="2.85" y2="-3.9" width="0.127" layer="49"/>
<wire x1="2.85" y1="3.9" x2="-2.15" y2="3.9" width="0.127" layer="49"/>
<wire x1="2.85" y1="-3.9" x2="-2.15" y2="-3.9" width="0.127" layer="49"/>
<wire x1="2.981959375" y1="3.99288125" x2="2" y2="3.99288125" width="0.3048" layer="21"/>
<wire x1="2" y1="3.99288125" x2="2" y2="4" width="0.3048" layer="21"/>
<wire x1="3" y1="4" x2="3" y2="3" width="0.3048" layer="21"/>
<wire x1="2" y1="-4" x2="3" y2="-4" width="0.3048" layer="21"/>
<wire x1="3" y1="-4" x2="3" y2="-3" width="0.3048" layer="21"/>
<wire x1="-1" y1="4" x2="-2" y2="4" width="0.3048" layer="21"/>
<wire x1="-1" y1="-4" x2="-2" y2="-4" width="0.3048" layer="21"/>
<rectangle x1="-0.85" y1="2.684" x2="0.85" y2="4.684" layer="29"/>
<rectangle x1="-0.85" y1="-4.684" x2="0.85" y2="-2.684" layer="29"/>
<rectangle x1="-0.85" y1="-1.35" x2="0.85" y2="1.35" layer="29"/>
<smd name="SHIELD1" x="0" y="3.68" dx="1.5" dy="1.8" layer="1"/>
<smd name="SHIELD3" x="0" y="-3.68" dx="1.5" dy="1.8" layer="1"/>
<smd name="SHIELD2" x="0" y="0" dx="1.5" dy="2.5" layer="1"/>
</package>
<package name="JST-2-SMD">
<description>2mm SMD side-entry connector. tDocu layer indicates the actual physical plastic housing. +/- indicate SparkFun standard batteries and wiring.</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="0" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="SAMTECH_FTSH-105-01">
<description>&lt;h3&gt;2x5 Connector (Cortex Debug Connector)&lt;/h3&gt;

&lt;p&gt;&lt;a href="https://www.samtec.com/ftppub/cpdf/FTSH-1XX-XX-XXX-DV-XXX-MKT.pdf"&gt;Datasheet&lt;/a&gt;&lt;/p&gt;</description>
<wire x1="3.175" y1="1.7145" x2="3.175" y2="-1.7145" width="0.127" layer="51"/>
<wire x1="3.175" y1="-1.7145" x2="-3.175" y2="-1.7145" width="0.127" layer="51"/>
<wire x1="-3.175" y1="-1.7145" x2="-3.175" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="1.7145" x2="3.175" y2="1.7145" width="0.127" layer="51"/>
<rectangle x1="-0.2032" y1="1.7145" x2="0.2032" y2="2.921" layer="51"/>
<rectangle x1="1.0668" y1="1.7145" x2="1.4732" y2="2.921" layer="51"/>
<rectangle x1="2.3368" y1="1.7145" x2="2.7432" y2="2.921" layer="51"/>
<rectangle x1="-1.4732" y1="1.7145" x2="-1.0668" y2="2.921" layer="51"/>
<rectangle x1="-2.7432" y1="1.7145" x2="-2.3368" y2="2.921" layer="51"/>
<rectangle x1="-0.2032" y1="-2.921" x2="0.2032" y2="-1.7145" layer="51" rot="R180"/>
<rectangle x1="-1.4732" y1="-2.921" x2="-1.0668" y2="-1.7145" layer="51" rot="R180"/>
<rectangle x1="-2.7432" y1="-2.921" x2="-2.3368" y2="-1.7145" layer="51" rot="R180"/>
<rectangle x1="1.0668" y1="-2.921" x2="1.4732" y2="-1.7145" layer="51" rot="R180"/>
<rectangle x1="2.3368" y1="-2.921" x2="2.7432" y2="-1.7145" layer="51" rot="R180"/>
<smd name="6" x="0" y="2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="8" x="1.27" y="2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="10" x="2.54" y="2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="4" x="-1.27" y="2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="2" x="-2.54" y="2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="1" x="-2.54" y="-2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="3" x="-1.27" y="-2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="5" x="0" y="-2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="7" x="1.27" y="-2.413" dx="0.508" dy="1.27" layer="1"/>
<smd name="9" x="2.54" y="-2.413" dx="0.508" dy="1.27" layer="1"/>
<wire x1="-3.175" y1="-1.7145" x2="-3.175" y2="1.7145" width="0.127" layer="51"/>
<wire x1="-3.175" y1="1.7145" x2="-3.0226" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="3.0226" y1="1.7145" x2="3.175" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.7145" x2="3.175" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.7145" x2="3.0226" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="-3.0226" y1="-1.7145" x2="-3.175" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="-2.0574" y1="1.7145" x2="-1.7526" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="-0.7874" y1="1.7145" x2="-0.4826" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="0.4826" y1="1.7145" x2="0.7874" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="1.7526" y1="1.7145" x2="2.0574" y2="1.7145" width="0.2032" layer="21"/>
<wire x1="2.0574" y1="-1.7145" x2="1.7526" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="0.7874" y1="-1.7145" x2="0.4826" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="-0.4826" y1="-1.7145" x2="-0.7874" y2="-1.7145" width="0.2032" layer="21"/>
<wire x1="-1.7526" y1="-1.7145" x2="-2.0574" y2="-1.7145" width="0.2032" layer="21"/>
<text x="0" y="0" size="0.8128" layer="25" align="bottom-center">&gt;Name</text>
<text x="0" y="0" size="0.8128" layer="27" align="top-center">&gt;Value</text>
</package>
<package name="2X5-PTH-1.27MM">
<description>&lt;h3&gt;ARM Cortex Debug Connector (10-pin)&lt;/h3&gt;
&lt;p&gt;For debuggers and/or programemrs that support the Cortex Debug Connector (10-pin) interface.&lt;/p&gt;
&lt;p&gt;tDoc (51) layer border represents maximum dimensions of plastic housing.&lt;/p&gt;
&lt;p&gt;&lt;a href="http://www.digikey.com/product-detail/en/20021111-00010T4LF/609-3712-ND/2209072"&gt;Example Digikey Part&lt;/a&gt;&lt;/p&gt;</description>
<pad name="8" x="1.27" y="0.635" drill="0.508" diameter="1"/>
<pad name="6" x="0" y="0.635" drill="0.508" diameter="1"/>
<pad name="4" x="-1.27" y="0.635" drill="0.508" diameter="1"/>
<pad name="2" x="-2.54" y="0.635" drill="0.508" diameter="1"/>
<text x="-3.048" y="1.397" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.921" y="-1.397" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
<pad name="10" x="2.54" y="0.635" drill="0.508" diameter="1"/>
<pad name="7" x="1.27" y="-0.635" drill="0.508" diameter="1"/>
<pad name="5" x="0" y="-0.635" drill="0.508" diameter="1"/>
<pad name="3" x="-1.27" y="-0.635" drill="0.508" diameter="1"/>
<pad name="1" x="-2.54" y="-0.635" drill="0.508" diameter="1"/>
<pad name="9" x="2.54" y="-0.635" drill="0.508" diameter="1"/>
<wire x1="-3.403" y1="-1.021" x2="-3.403" y2="-0.259" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.715" x2="-3.175" y2="1.715" width="0.127" layer="51"/>
<wire x1="-3.175" y1="1.715" x2="-3.175" y2="-1.715" width="0.127" layer="51"/>
<wire x1="-3.175" y1="-1.715" x2="3.175" y2="-1.715" width="0.127" layer="51"/>
<wire x1="3.175" y1="-1.715" x2="3.175" y2="1.715" width="0.127" layer="51"/>
</package>
<package name="1X01_LONGPAD">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="LUXEON-PAD">
<smd name="P$1" x="0" y="0" dx="3.9" dy="2.4" layer="1" roundness="25"/>
<text x="-1.5" y="2" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.5" y="-3" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SMTRA-256-8-6">
<pad name="P$1" x="-1.9939" y="0" drill="1.3462"/>
<pad name="P$2" x="1.9939" y="0" drill="1.3462"/>
<smd name="P$3" x="0" y="0" dx="6.6548" dy="4.3434" layer="1" cream="no"/>
<text x="1.27" y="2.54" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.54" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<rectangle x1="-3.302" y1="0.762" x2="3.302" y2="2.032" layer="31"/>
<rectangle x1="-1.016" y1="0.508" x2="1.016" y2="0.762" layer="31"/>
<rectangle x1="-1.016" y1="-1.016" x2="1.016" y2="-0.762" layer="31"/>
<rectangle x1="-3.302" y1="-2.032" x2="3.302" y2="-0.762" layer="31"/>
<rectangle x1="-1.016" y1="-0.762" x2="1.016" y2="-0.508" layer="31"/>
<rectangle x1="2.794" y1="0.508" x2="3.302" y2="0.762" layer="31"/>
<rectangle x1="2.794" y1="-0.762" x2="3.302" y2="-0.508" layer="31"/>
<rectangle x1="-3.302" y1="-0.762" x2="-2.794" y2="-0.508" layer="31"/>
<rectangle x1="-3.302" y1="0.508" x2="-2.794" y2="0.762" layer="31"/>
</package>
<package name="1X01NS">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
</package>
<package name="1X01">
<wire x1="1.27" y1="0.635" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="-0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="1.1938" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X01_2MM">
<pad name="1" x="0" y="0" drill="2" diameter="3.302" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X01_OFFSET">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="offset" rot="R90"/>
<text x="1.1938" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="PAD-1.5X4.5">
<smd name="P$1" x="0" y="0" dx="1.5" dy="2" layer="1"/>
</package>
<package name="1X01_POGOPIN_HOLE_LARGE">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90" thermals="no"/>
<hole x="0" y="0" drill="1.5494"/>
</package>
<package name="1X01_POGOPIN_HOLE_0.58">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90" thermals="no"/>
<hole x="0" y="0" drill="1.4732"/>
</package>
<package name="SNAP-FEMALE">
<pad name="1" x="0" y="0" drill="2.921" diameter="4.572"/>
<polygon width="0.254" layer="1">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="29">
<vertex x="-4.0005" y="0" curve="-90.002865"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="31">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
<polygon width="0.3556" layer="41">
<vertex x="-4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="4.0005" curve="-90.002865"/>
<vertex x="4.0005" y="0" curve="-89.997136"/>
<vertex x="0" y="-4.0005" curve="-89.997136"/>
</polygon>
</package>
<package name="SNAP-MALE">
<smd name="2" x="0" y="0" dx="7.62" dy="7.62" layer="1" roundness="100"/>
</package>
<package name="SPRING-CONNECTOR">
<smd name="P$2" x="0" y="0" dx="7.112" dy="7.112" layer="1" roundness="100"/>
<text x="-1.3462" y="5.6388" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-5.715" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X01NS-KIT">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90" stop="no"/>
<circle x="0" y="0" radius="0.508" width="0" layer="29"/>
<circle x="0" y="0" radius="0.9398" width="0" layer="30"/>
</package>
<package name="1X01_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="1.1938" y="1.8288" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="SMTSO-256-ET-0.165DIA">
<circle x="0" y="0" radius="1.016" width="0.127" layer="51"/>
<wire x1="-1.016" y1="2.286" x2="-2.286" y2="1.016" width="1.016" layer="31" curve="42.075022"/>
<wire x1="2.286" y1="1.016" x2="1.016" y2="2.286" width="1.016" layer="31" curve="42.075022"/>
<wire x1="1.016" y1="-2.286" x2="2.286" y2="-1.016" width="1.016" layer="31" curve="42.075022"/>
<wire x1="-2.286" y1="-1.016" x2="-1.016" y2="-2.286" width="1.016" layer="31" curve="42.075022"/>
<pad name="P$1" x="0" y="0" drill="4.191" diameter="6.1976"/>
<text x="-2.54" y="1.27" size="0.8128" layer="49">.165 drill</text>
</package>
<package name="1X02">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X2">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.75" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="3.15" x2="5.75" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_BIG">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
</package>
<package name="JST-2-SMD-VERT">
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="2.54" y="-5.08" size="1.27" layer="25">&gt;Name</text>
<text x="2.24" y="3.48" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SCREWTERMINAL-5MM-2">
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="MOLEX-1X2_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
</package>
<package name="1X02_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-2-PTH">
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<wire x1="-2.95" y1="-1.6" x2="-2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="6" x2="2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="6" x2="2.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="-1.6" x2="-2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-1.6" x2="2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="0" width="0.2032" layer="21"/>
<wire x1="2.3" y1="-1.6" x2="2.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="1X02_XTRA_BIG">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
</package>
<package name="1X02_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2-NS">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-PTH-NS">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="JST-2-PTH-KIT">
<description>&lt;H3&gt;JST-2-PTH-KIT&lt;/h3&gt;
2-Pin JST, through-hole connector&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<polygon width="0.127" layer="30">
<vertex x="-0.9975" y="-0.6604" curve="-90.025935"/>
<vertex x="-1.6604" y="0" curve="-90.017354"/>
<vertex x="-1" y="0.6604" curve="-90"/>
<vertex x="-0.3396" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1" y="-0.2865" curve="-90.08005"/>
<vertex x="-1.2865" y="0" curve="-90.040011"/>
<vertex x="-1" y="0.2865" curve="-90"/>
<vertex x="-0.7135" y="0" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.0025" y="-0.6604" curve="-90.025935"/>
<vertex x="0.3396" y="0" curve="-90.017354"/>
<vertex x="1" y="0.6604" curve="-90"/>
<vertex x="1.6604" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1" y="-0.2865" curve="-90.08005"/>
<vertex x="0.7135" y="0" curve="-90.040011"/>
<vertex x="1" y="0.2865" curve="-90"/>
<vertex x="1.2865" y="0" curve="-90"/>
</polygon>
</package>
<package name="SPRINGTERMINAL-2.54MM-2">
<wire x1="-4.2" y1="7.88" x2="-4.2" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-4.2" y1="-2.8" x2="-4.2" y2="-4.72" width="0.254" layer="51"/>
<wire x1="-4.2" y1="-4.72" x2="3.44" y2="-4.72" width="0.254" layer="51"/>
<wire x1="3.44" y1="-4.72" x2="3.44" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.44" y1="7.88" x2="-4.2" y2="7.88" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="1"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="1"/>
<wire x1="-4.2" y1="-2.8" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<wire x1="3.44" y1="4" x2="3.44" y2="1" width="0.254" layer="21"/>
<wire x1="3.44" y1="7.88" x2="3.44" y2="6" width="0.254" layer="21"/>
<wire x1="3.44" y1="-0.9" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.9"/>
<pad name="P$2" x="0" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="P$3" x="2.54" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="2" x="2.54" y="0" drill="1.1" diameter="1.9"/>
</package>
<package name="1X02_2.54_SCREWTERM">
<pad name="P2" x="0" y="0" drill="1.016" shape="square"/>
<pad name="P1" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-1.5" y1="3.25" x2="4" y2="3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="3.25" x2="4" y2="2.5" width="0.2032" layer="21"/>
<wire x1="4" y1="2.5" x2="4" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="-3.25" x2="-1.5" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-3.25" x2="-1.5" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1.5" y2="3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="4" y2="2.5" width="0.2032" layer="21"/>
</package>
<package name="JST-2-PTH-VERT">
<wire x1="-2.95" y1="-2.25" x2="-2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="2.25" x2="2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="2.25" x2="2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-1.984" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="2.016" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="0.616" y="0.75" size="1.27" layer="51">+</text>
<text x="-1.384" y="0.75" size="1.27" layer="51">-</text>
</package>
</packages>
<symbols>
<symbol name="USB_AB">
<description>USB AB, 5-pins: USBVCC, GND, D+, D-, USBID.</description>
<wire x1="2.54" y1="6.35" x2="-2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-8.89" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-8.89" x2="2.54" y2="-8.89" width="0.254" layer="94"/>
<text x="1.27" y="-7.366" size="2.54" layer="94" rot="R90">USBAB</text>
<pin name="D+" x="-5.08" y="0" visible="pad" length="short"/>
<pin name="D-" x="-5.08" y="-2.54" visible="pad" length="short"/>
<pin name="VBUS" x="-5.08" y="-5.08" visible="pad" length="short"/>
<pin name="GND" x="-5.08" y="5.08" visible="pad" length="short"/>
<pin name="USBID" x="-5.08" y="2.54" visible="pad" length="short"/>
<pin name="SHIELD" x="-5.08" y="-7.62" visible="pad" length="short"/>
</symbol>
<symbol name="JST_2MM_MALE">
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="-2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.302" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.302" width="0.254" layer="94"/>
<wire x1="5.08" y1="3.302" x2="5.08" y2="1.778" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="4.064" y2="-2.54" width="0.254" layer="94"/>
<wire x1="4.064" y1="-2.54" x2="4.064" y2="0" width="0.254" layer="94"/>
<wire x1="4.064" y1="0" x2="-1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.524" y2="-2.54" width="0.254" layer="94"/>
<pin name="-" x="0" y="-5.08" visible="off" length="middle" rot="R90"/>
<pin name="+" x="2.54" y="-5.08" visible="off" length="middle" rot="R90"/>
<pin name="PAD2" x="5.08" y="2.54" visible="off" length="point" rot="R90"/>
<pin name="PAD1" x="-2.54" y="2.54" visible="off" length="point" rot="R90"/>
<wire x1="-2.54" y1="1.778" x2="-1.778" y2="1.778" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.778" x2="-1.778" y2="3.302" width="0.254" layer="94"/>
<wire x1="-1.778" y1="3.302" x2="-2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="4.318" y2="1.778" width="0.254" layer="94"/>
<wire x1="4.318" y1="1.778" x2="4.318" y2="3.302" width="0.254" layer="94"/>
<wire x1="4.318" y1="3.302" x2="5.08" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.032" y1="1.016" x2="3.048" y2="1.016" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.508" x2="2.54" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="1.524" width="0.254" layer="94"/>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="CORTEX_DEBUG">
<description>&lt;h3&gt;Cortex Debug Connector&lt;/h3&gt;
&lt;p&gt;&lt;a href="http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf"&gt;Datasheet&lt;/a&gt;&lt;/p&gt;</description>
<pin name="VCC" x="-15.24" y="5.08" length="short"/>
<pin name="GND@3" x="-15.24" y="2.54" length="short"/>
<pin name="GND@5" x="-15.24" y="0" length="short"/>
<pin name="KEY" x="-15.24" y="-2.54" length="short"/>
<pin name="GNDDTCT" x="-15.24" y="-5.08" length="short"/>
<pin name="NRESET" x="17.78" y="-5.08" length="short" rot="R180"/>
<pin name="NC/TDI" x="17.78" y="-2.54" length="short" rot="R180"/>
<pin name="SWO/TDO" x="17.78" y="0" length="short" rot="R180"/>
<pin name="SWDCLK/TCK" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="SWDIO/TMS" x="17.78" y="5.08" length="short" rot="R180"/>
<wire x1="-12.7" y1="-7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="7.62" x2="15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<text x="-12.7" y="7.874" size="1.778" layer="95">&gt;Name</text>
<text x="-12.7" y="-7.874" size="1.778" layer="96" align="top-left">&gt;Value</text>
</symbol>
<symbol name="M01">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M02">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB-AB" prefix="U" uservalue="yes">
<description>This is a USB AB connector that is compatible with USB OTG. i.e. this connector can serve as a host or device</description>
<gates>
<gate name="G$1" symbol="USB_AB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="USB-AB-MICRO-SMD">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SHIELD" pad="SHIELD1 SHIELD2 SHIELD3 SHIELD4"/>
<connect gate="G$1" pin="USBID" pad="ID"/>
<connect gate="G$1" pin="VBUS" pad="VBUS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="&quot;" package="USB_AB_MICRO_1:1_V2">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SHIELD" pad="SHIELD1 SHIELD2 SHIELD3 SHIELD4"/>
<connect gate="G$1" pin="USBID" pad="ID"/>
<connect gate="G$1" pin="VBUS" pad="VBUS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CONN-11794" package="USB-AB-MICRO-SMD_V03">
<connects>
<connect gate="G$1" pin="D+" pad="D+1"/>
<connect gate="G$1" pin="D-" pad="D-1"/>
<connect gate="G$1" pin="GND" pad="GND1"/>
<connect gate="G$1" pin="SHIELD" pad="SHIELD1 SHIELD2 SHIELD3"/>
<connect gate="G$1" pin="USBID" pad="ID1"/>
<connect gate="G$1" pin="VBUS" pad="VBUS1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11794"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JST_2MM_MALE" prefix="JP" uservalue="yes">
<description>Mates to single-cell LiPo batteries.&lt;br&gt;
CONN-11443&lt;br /&gt;
Now with smashable polarity marks!</description>
<gates>
<gate name="G$1" symbol="JST_2MM_MALE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="+" pad="2"/>
<connect gate="G$1" pin="-" pad="1"/>
<connect gate="G$1" pin="PAD1" pad="NC1"/>
<connect gate="G$1" pin="PAD2" pad="NC2"/>
</connects>
<technologies>
<technology name="">
<attribute name="BTM_NEG" value="-"/>
<attribute name="BTM_POS" value="+"/>
<attribute name="PROD_ID" value="CONN-11443"/>
<attribute name="TOP_NEG" value="-"/>
<attribute name="TOP_POS" value="+"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CORTEX_DEBUG" prefix="J">
<description>&lt;h3&gt;Cortex Debug Connector&lt;/h3&gt;
&lt;p&gt;&lt;a href="http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf"&gt;Datasheet&lt;/a&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="CORTEX_DEBUG" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="SAMTECH_FTSH-105-01">
<connects>
<connect gate="G$1" pin="GND@3" pad="3"/>
<connect gate="G$1" pin="GND@5" pad="5"/>
<connect gate="G$1" pin="GNDDTCT" pad="9"/>
<connect gate="G$1" pin="KEY" pad="7"/>
<connect gate="G$1" pin="NC/TDI" pad="8"/>
<connect gate="G$1" pin="NRESET" pad="10"/>
<connect gate="G$1" pin="SWDCLK/TCK" pad="4"/>
<connect gate="G$1" pin="SWDIO/TMS" pad="2"/>
<connect gate="G$1" pin="SWO/TDO" pad="6"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH" package="2X5-PTH-1.27MM">
<connects>
<connect gate="G$1" pin="GND@3" pad="3"/>
<connect gate="G$1" pin="GND@5" pad="5"/>
<connect gate="G$1" pin="GNDDTCT" pad="9"/>
<connect gate="G$1" pin="KEY" pad="7"/>
<connect gate="G$1" pin="NC/TDI" pad="8"/>
<connect gate="G$1" pin="NRESET" pad="10"/>
<connect gate="G$1" pin="SWDCLK/TCK" pad="4"/>
<connect gate="G$1" pin="SWDIO/TMS" pad="2"/>
<connect gate="G$1" pin="SWO/TDO" pad="6"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M01" prefix="J" uservalue="yes">
<description>&lt;b&gt;Header 1&lt;/b&gt;
Standard 1-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). SMTSO-256-ET is a "flush mount" nut for a 4-40 screw. The older package used to be too tight, and did not allow it to sit properly thru the drill hit. The latest (0.165DIA) fits nice and snug.</description>
<gates>
<gate name="G$1" symbol="M01" x="0" y="0"/>
</gates>
<devices>
<device name="PTH_LONGPAD" package="1X01_LONGPAD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="LUXEON-PAD">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMTRA-256-8-6" package="SMTRA-256-8-6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMDNS" package="1X01NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_2MM" package="1X01_2MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OFFSET" package="1X01_OFFSET">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-4.5X1.5" package="PAD-1.5X4.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGOPIN_HOLE_LARGE" package="1X01_POGOPIN_HOLE_LARGE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGOPIN_HOLE_0.58" package="1X01_POGOPIN_HOLE_0.58">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SNAP-FEMALE" package="SNAP-FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SNAP-MALE" package="SNAP-MALE">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-CONN" package="SPRING-CONNECTOR">
<connects>
<connect gate="G$1" pin="1" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NOSILK-KIT" package="1X01NS-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_NO_SILK_YES_STOP" package="1X01_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMTSO-256-ET-0.165DIA" package="SMTSO-256-ET-0.165DIA">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M02" prefix="J" uservalue="yes">
<description>Standard 2-pin 0.1" header. Use with &lt;br&gt;
- straight break away headers ( PRT-00116)&lt;br&gt;
- right angle break away headers (PRT-00553)&lt;br&gt;
- swiss pins (PRT-00743)&lt;br&gt;
- machine pins (PRT-00117)&lt;br&gt;
- female headers (PRT-00115)&lt;br&gt;&lt;br&gt;

 Molex polarized connector foot print use with: PRT-08233 with associated crimp pins and housings.&lt;br&gt;&lt;br&gt;

2.54_SCREWTERM for use with  PRT-10571.&lt;br&gt;&lt;br&gt;

3.5mm Screw Terminal footprints for  PRT-08084&lt;br&gt;&lt;br&gt;

5mm Screw Terminal footprints for use with PRT-08432</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11443"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROCKER" package="R_SW_TH">
<connects>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="STOREFRONT_ID" value="PRT-08432" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09863" constant="no"/>
<attribute name="SKU" value="PRT-09914" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM-NO_SILK" package="SCREWTERMINAL-3.5MM-2-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2-PTH-NO_SILK" package="JST-2-PTH-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2-KIT" package="JST-2-PTH-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-2.54-RA" package="SPRINGTERMINAL-2.54MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.54MM_SCREWTERM" package="1X02_2.54_SCREWTERM">
<connects>
<connect gate="G$1" pin="1" pad="P1"/>
<connect gate="G$1" pin="2" pad="P2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-2-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Passives">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0603-RES">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
</package>
<package name="0402-RES">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762"/>
<pad name="2" x="2.5" y="0" drill="0.762"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402-RES" package="0402-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="samd21-temp">
<packages>
<package name="QFN-48">
<description>&lt;h3&gt;48-pin QFN (7x7mm, 0.5mm pitch)&lt;/h3&gt;
&lt;p&gt;Used on:
&lt;ul&gt;&lt;li&gt;ATSAMD21G&lt;/il&gt;&lt;/ul&gt;
&lt;/p&gt;</description>
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.1524" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.1524" layer="51"/>
<wire x1="3.5" y1="3.5" x2="-3.5" y2="3.5" width="0.1524" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="-3.5" y2="-3.5" width="0.1524" layer="51"/>
<smd name="EP" x="0" y="0" dx="5.15" dy="5.15" layer="1" cream="no"/>
<rectangle x1="-3.5" y1="0.125" x2="-3.1" y2="0.375" layer="51"/>
<rectangle x1="-2.575" y1="-2.575" x2="2.575" y2="2.575" layer="51"/>
<rectangle x1="-3.5" y1="0.625" x2="-3.1" y2="0.875" layer="51"/>
<rectangle x1="-3.5" y1="1.125" x2="-3.1" y2="1.375" layer="51"/>
<rectangle x1="-3.5" y1="1.625" x2="-3.1" y2="1.875" layer="51"/>
<rectangle x1="-3.5" y1="2.125" x2="-3.1" y2="2.375" layer="51"/>
<rectangle x1="-3.5" y1="2.625" x2="-3.1" y2="2.875" layer="51"/>
<rectangle x1="-3.5" y1="-0.375" x2="-3.1" y2="-0.125" layer="51"/>
<rectangle x1="-3.5" y1="-0.875" x2="-3.1" y2="-0.625" layer="51"/>
<rectangle x1="-3.5" y1="-1.375" x2="-3.1" y2="-1.125" layer="51"/>
<rectangle x1="-3.5" y1="-1.875" x2="-3.1" y2="-1.625" layer="51"/>
<rectangle x1="-3.5" y1="-2.375" x2="-3.1" y2="-2.125" layer="51"/>
<rectangle x1="-3.5" y1="-2.875" x2="-3.1" y2="-2.625" layer="51"/>
<rectangle x1="-0.45" y1="-3.425" x2="-0.05" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="-0.95" y1="-3.425" x2="-0.55" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="-1.45" y1="-3.425" x2="-1.05" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="-1.95" y1="-3.425" x2="-1.55" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="-2.45" y1="-3.425" x2="-2.05" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="-2.95" y1="-3.425" x2="-2.55" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="0.05" y1="-3.425" x2="0.45" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="0.55" y1="-3.425" x2="0.95" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="1.05" y1="-3.425" x2="1.45" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="1.55" y1="-3.425" x2="1.95" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="2.05" y1="-3.425" x2="2.45" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="2.55" y1="-3.425" x2="2.95" y2="-3.175" layer="51" rot="R90"/>
<rectangle x1="3.1" y1="-0.375" x2="3.5" y2="-0.125" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="-0.875" x2="3.5" y2="-0.625" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="-1.375" x2="3.5" y2="-1.125" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="-1.875" x2="3.5" y2="-1.625" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="-2.375" x2="3.5" y2="-2.125" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="-2.875" x2="3.5" y2="-2.625" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="0.125" x2="3.5" y2="0.375" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="0.625" x2="3.5" y2="0.875" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="1.125" x2="3.5" y2="1.375" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="1.625" x2="3.5" y2="1.875" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="2.125" x2="3.5" y2="2.375" layer="51" rot="R180"/>
<rectangle x1="3.1" y1="2.625" x2="3.5" y2="2.875" layer="51" rot="R180"/>
<rectangle x1="0.05" y1="3.175" x2="0.45" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="0.55" y1="3.175" x2="0.95" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="1.05" y1="3.175" x2="1.45" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="1.55" y1="3.175" x2="1.95" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="2.05" y1="3.175" x2="2.45" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="2.55" y1="3.175" x2="2.95" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-0.45" y1="3.175" x2="-0.05" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-0.95" y1="3.175" x2="-0.55" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-1.45" y1="3.175" x2="-1.05" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-1.95" y1="3.175" x2="-1.55" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-2.45" y1="3.175" x2="-2.05" y2="3.425" layer="51" rot="R270"/>
<rectangle x1="-2.95" y1="3.175" x2="-2.55" y2="3.425" layer="51" rot="R270"/>
<smd name="1" x="-3.4" y="2.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="2" x="-3.4" y="2.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="3" x="-3.4" y="1.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="4" x="-3.4" y="1.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="5" x="-3.4" y="0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="6" x="-3.4" y="0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="7" x="-3.4" y="-0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="8" x="-3.4" y="-0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="9" x="-3.4" y="-1.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="10" x="-3.4" y="-1.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="11" x="-3.4" y="-2.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="12" x="-3.4" y="-2.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="13" x="-2.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="14" x="-2.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="15" x="-1.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="16" x="-1.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="17" x="-0.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="18" x="-0.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="19" x="0.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="20" x="0.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="21" x="1.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="22" x="1.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="23" x="2.25" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="24" x="2.75" y="-3.4" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="25" x="3.4" y="-2.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="26" x="3.4" y="-2.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="27" x="3.4" y="-1.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="28" x="3.4" y="-1.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="29" x="3.4" y="-0.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="30" x="3.4" y="-0.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="31" x="3.4" y="0.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="32" x="3.4" y="0.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="33" x="3.4" y="1.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="34" x="3.4" y="1.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="35" x="3.4" y="2.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="36" x="3.4" y="2.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="37" x="2.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="38" x="2.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="39" x="1.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="40" x="1.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="41" x="0.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="42" x="0.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="43" x="-0.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="44" x="-0.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="45" x="-1.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="46" x="-1.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="47" x="-2.25" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="48" x="-2.75" y="3.4" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<wire x1="-3.5" y1="3.1" x2="-3.1" y2="3.5" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.5" x2="-3.5" y2="-3.5" width="0.2032" layer="21"/>
<wire x1="3.5" y1="-3.1" x2="3.5" y2="-3.5" width="0.2032" layer="21"/>
<wire x1="3.1" y1="3.5" x2="3.5" y2="3.5" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="-3.1" width="0.2032" layer="21"/>
<wire x1="3.5" y1="-3.5" x2="3.1" y2="-3.5" width="0.2032" layer="21"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="3.1" width="0.2032" layer="21"/>
<circle x="-3.9" y="3.9" radius="0.412309375" width="0" layer="21"/>
</package>
<package name="TQFP-48">
<description>&lt;h3&gt;48-pin TQFP (7x7mm, 0.5mm pitch)&lt;/h3&gt;
&lt;p&gt;Used on:
&lt;ul&gt;&lt;li&gt;ATSAMD21G&lt;/il&gt;&lt;/ul&gt;
&lt;/p&gt;</description>
<wire x1="-3.5" y1="-3.5" x2="-3.5" y2="3.5" width="0.1524" layer="51"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.1524" layer="51"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="-3.5" width="0.1524" layer="51"/>
<wire x1="3.5" y1="-3.5" x2="-3.5" y2="-3.5" width="0.1524" layer="51"/>
<rectangle x1="-4.5" y1="0.125" x2="-3.5" y2="0.375" layer="51"/>
<smd name="1" x="-4.25" y="2.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<rectangle x1="-4.5" y1="-0.375" x2="-3.5" y2="-0.125" layer="51"/>
<rectangle x1="-4.5" y1="0.625" x2="-3.5" y2="0.875" layer="51"/>
<rectangle x1="-4.5" y1="1.125" x2="-3.5" y2="1.375" layer="51"/>
<rectangle x1="-4.5" y1="1.625" x2="-3.5" y2="1.875" layer="51"/>
<rectangle x1="-4.5" y1="2.125" x2="-3.5" y2="2.375" layer="51"/>
<rectangle x1="-4.5" y1="2.625" x2="-3.5" y2="2.875" layer="51"/>
<rectangle x1="-4.5" y1="-0.875" x2="-3.5" y2="-0.625" layer="51"/>
<rectangle x1="-4.5" y1="-1.375" x2="-3.5" y2="-1.125" layer="51"/>
<rectangle x1="-4.5" y1="-1.875" x2="-3.5" y2="-1.625" layer="51"/>
<rectangle x1="-4.5" y1="-2.375" x2="-3.5" y2="-2.125" layer="51"/>
<rectangle x1="-4.5" y1="-2.875" x2="-3.5" y2="-2.625" layer="51"/>
<smd name="2" x="-4.25" y="2.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="3" x="-4.25" y="1.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="4" x="-4.25" y="1.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="5" x="-4.25" y="0.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="6" x="-4.25" y="0.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="7" x="-4.25" y="-0.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="8" x="-4.25" y="-0.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="9" x="-4.25" y="-1.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="10" x="-4.25" y="-1.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="11" x="-4.25" y="-2.25" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<smd name="12" x="-4.25" y="-2.75" dx="1.5" dy="0.28" layer="1" rot="R180"/>
<rectangle x1="-0.75" y1="-4.125" x2="0.25" y2="-3.875" layer="51" rot="R90"/>
<smd name="13" x="-2.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<rectangle x1="-0.25" y1="-4.125" x2="0.75" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="-1.25" y1="-4.125" x2="-0.25" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="-1.75" y1="-4.125" x2="-0.75" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="-2.25" y1="-4.125" x2="-1.25" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="-2.75" y1="-4.125" x2="-1.75" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="-3.25" y1="-4.125" x2="-2.25" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="0.25" y1="-4.125" x2="1.25" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="0.75" y1="-4.125" x2="1.75" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="1.25" y1="-4.125" x2="2.25" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="1.75" y1="-4.125" x2="2.75" y2="-3.875" layer="51" rot="R90"/>
<rectangle x1="2.25" y1="-4.125" x2="3.25" y2="-3.875" layer="51" rot="R90"/>
<smd name="14" x="-2.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="15" x="-1.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="16" x="-1.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="17" x="-0.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="18" x="-0.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="19" x="0.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="20" x="0.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="21" x="1.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="22" x="1.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="23" x="2.25" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<smd name="24" x="2.75" y="-4.25" dx="1.5" dy="0.28" layer="1" rot="R270"/>
<rectangle x1="3.5" y1="-0.375" x2="4.5" y2="-0.125" layer="51" rot="R180"/>
<smd name="25" x="4.25" y="-2.75" dx="1.5" dy="0.28" layer="1"/>
<rectangle x1="3.5" y1="0.125" x2="4.5" y2="0.375" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="-0.875" x2="4.5" y2="-0.625" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="-1.375" x2="4.5" y2="-1.125" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="-1.875" x2="4.5" y2="-1.625" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="-2.375" x2="4.5" y2="-2.125" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="-2.875" x2="4.5" y2="-2.625" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="0.625" x2="4.5" y2="0.875" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="1.125" x2="4.5" y2="1.375" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="1.625" x2="4.5" y2="1.875" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="2.125" x2="4.5" y2="2.375" layer="51" rot="R180"/>
<rectangle x1="3.5" y1="2.625" x2="4.5" y2="2.875" layer="51" rot="R180"/>
<smd name="26" x="4.25" y="-2.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="27" x="4.25" y="-1.75" dx="1.5" dy="0.28" layer="1"/>
<smd name="28" x="4.25" y="-1.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="29" x="4.25" y="-0.75" dx="1.5" dy="0.28" layer="1"/>
<smd name="30" x="4.25" y="-0.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="31" x="4.25" y="0.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="32" x="4.25" y="0.75" dx="1.5" dy="0.28" layer="1"/>
<smd name="33" x="4.25" y="1.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="34" x="4.25" y="1.75" dx="1.5" dy="0.28" layer="1"/>
<smd name="35" x="4.25" y="2.25" dx="1.5" dy="0.28" layer="1"/>
<smd name="36" x="4.25" y="2.75" dx="1.5" dy="0.28" layer="1"/>
<rectangle x1="-0.25" y1="3.875" x2="0.75" y2="4.125" layer="51" rot="R270"/>
<smd name="37" x="2.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<rectangle x1="-0.75" y1="3.875" x2="0.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="0.25" y1="3.875" x2="1.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="0.75" y1="3.875" x2="1.75" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="1.25" y1="3.875" x2="2.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="1.75" y1="3.875" x2="2.75" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="2.25" y1="3.875" x2="3.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="-1.25" y1="3.875" x2="-0.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="-1.75" y1="3.875" x2="-0.75" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="-2.25" y1="3.875" x2="-1.25" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="-2.75" y1="3.875" x2="-1.75" y2="4.125" layer="51" rot="R270"/>
<rectangle x1="-3.25" y1="3.875" x2="-2.25" y2="4.125" layer="51" rot="R270"/>
<smd name="38" x="2.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="39" x="1.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="40" x="1.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="41" x="0.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="42" x="0.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="43" x="-0.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="44" x="-0.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="45" x="-1.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="46" x="-1.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="47" x="-2.25" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<smd name="48" x="-2.75" y="4.25" dx="1.5" dy="0.28" layer="1" rot="R90"/>
<wire x1="-3.627" y1="3.127" x2="-3.127" y2="3.627" width="0.2032" layer="21"/>
<wire x1="3.127" y1="3.627" x2="3.627" y2="3.627" width="0.2032" layer="21"/>
<wire x1="3.627" y1="3.627" x2="3.627" y2="3.127" width="0.2032" layer="21"/>
<wire x1="-3.627" y1="-3.627" x2="-3.627" y2="-3.127" width="0.2032" layer="21"/>
<wire x1="-3.127" y1="-3.627" x2="-3.627" y2="-3.627" width="0.2032" layer="21"/>
<wire x1="3.627" y1="-3.127" x2="3.627" y2="-3.627" width="0.2032" layer="21"/>
<wire x1="3.627" y1="-3.627" x2="3.127" y2="-3.627" width="0.2032" layer="21"/>
<circle x="-3.673" y="3.673" radius="0.3" width="0" layer="21"/>
<text x="0" y="0" size="0.8128" layer="25" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.27" size="0.8128" layer="27" align="bottom-center">&gt;Value</text>
</package>
<package name="HC49U-V">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-2.921" y1="-2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="2.286" x2="2.921" y2="2.286" width="0.4064" layer="21"/>
<wire x1="-2.921" y1="-1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="-2.921" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.778" x2="2.921" y2="-1.778" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.921" y1="2.286" x2="2.921" y2="-2.286" width="0.4064" layer="21" curve="-180"/>
<wire x1="-2.921" y1="2.286" x2="-2.921" y2="-2.286" width="0.4064" layer="21" curve="180"/>
<wire x1="-2.921" y1="1.778" x2="-2.921" y2="-1.778" width="0.1524" layer="21" curve="180"/>
<wire x1="-0.254" y1="0.889" x2="0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.889" x2="0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.889" x2="-0.254" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.889" x2="-0.254" y2="0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0.889" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.889" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.413" y="0" drill="0.8128"/>
<pad name="2" x="2.413" y="0" drill="0.8128"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-2.794" x2="3.81" y2="2.794" layer="43"/>
<rectangle x1="-4.318" y1="-2.54" x2="-3.81" y2="2.54" layer="43"/>
<rectangle x1="-4.826" y1="-2.286" x2="-4.318" y2="2.286" layer="43"/>
<rectangle x1="-5.334" y1="-1.778" x2="-4.826" y2="1.778" layer="43"/>
<rectangle x1="-5.588" y1="-1.27" x2="-5.334" y2="1.016" layer="43"/>
<rectangle x1="3.81" y1="-2.54" x2="4.318" y2="2.54" layer="43"/>
<rectangle x1="4.318" y1="-2.286" x2="4.826" y2="2.286" layer="43"/>
<rectangle x1="4.826" y1="-1.778" x2="5.334" y2="1.778" layer="43"/>
<rectangle x1="5.334" y1="-1.016" x2="5.588" y2="1.016" layer="43"/>
</package>
<package name="TC38H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-1.397" y1="1.651" x2="1.397" y2="1.651" width="0.1524" layer="21"/>
<wire x1="1.27" y1="9.906" x2="1.524" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="9.652" x2="-1.27" y2="9.906" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="9.906" x2="1.27" y2="9.906" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.651" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.032" x2="1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.651" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.032" x2="-1.524" y2="9.652" width="0.1524" layer="21"/>
<wire x1="1.397" y1="2.032" x2="-1.397" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.5588" y1="0.7112" x2="0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.016" width="0.4064" layer="21"/>
<wire x1="-0.5588" y1="0.7112" x2="-0.508" y2="0.762" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="5.588" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="-0.762" y2="5.207" width="0.1524" layer="21"/>
<wire x1="0.762" y1="5.207" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.588" x2="0.762" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="5.969" x2="0" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="4.826" x2="0" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0" y2="4.318" width="0.1524" layer="21"/>
<wire x1="0" y1="4.826" x2="0.762" y2="4.826" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0" y2="6.477" width="0.1524" layer="21"/>
<wire x1="0" y1="5.969" x2="0.762" y2="5.969" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6764"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6764"/>
<text x="-1.905" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.175" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="1.016" x2="1.778" y2="10.414" layer="43"/>
</package>
<package name="TC26H">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-0.889" y1="1.651" x2="0.889" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.762" y1="7.747" x2="1.016" y2="7.493" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="7.493" x2="-0.762" y2="7.747" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.762" y1="7.747" x2="0.762" y2="7.747" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.651" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.651" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.27" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.508" y1="4.953" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.953" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="5.334" x2="0" y2="5.334" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.191" x2="0" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0" y2="3.683" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0.508" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0.508" y2="5.334" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.889" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6764"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6764"/>
<text x="-1.397" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.667" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="0.762" x2="1.778" y2="8.382" layer="43"/>
</package>
<package name="HC49UP">
<description>&lt;b&gt;CRYSTAL&lt;/b&gt;</description>
<wire x1="-5.1091" y1="1.143" x2="-3.429" y2="2.0321" width="0.0508" layer="21" curve="-55.770993" cap="flat"/>
<wire x1="-5.715" y1="1.143" x2="-5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.032" x2="5.1091" y2="1.143" width="0.0508" layer="21" curve="-55.772485" cap="flat"/>
<wire x1="5.715" y1="1.143" x2="5.715" y2="2.159" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="-3.429" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="3.429" y1="-2.032" x2="-3.429" y2="-2.032" width="0.0508" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="3.429" y2="1.27" width="0.0508" layer="21"/>
<wire x1="5.461" y1="-2.413" x2="-5.461" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-0.381" x2="6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="6.477" y1="-0.381" x2="6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="5.461" y1="-2.413" x2="5.715" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.715" y1="-1.143" x2="5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-2.159" x2="5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-1.27" x2="3.9826" y2="-1.143" width="0.0508" layer="21" curve="25.842828" cap="flat"/>
<wire x1="3.429" y1="1.27" x2="3.9826" y2="1.143" width="0.0508" layer="21" curve="-25.842828" cap="flat"/>
<wire x1="3.429" y1="-2.032" x2="5.109" y2="-1.1429" width="0.0508" layer="21" curve="55.771157" cap="flat"/>
<wire x1="3.9826" y1="-1.143" x2="3.9826" y2="1.143" width="0.0508" layer="51" curve="128.314524" cap="flat"/>
<wire x1="5.1091" y1="-1.143" x2="5.1091" y2="1.143" width="0.0508" layer="51" curve="68.456213" cap="flat"/>
<wire x1="-5.1091" y1="-1.143" x2="-3.429" y2="-2.032" width="0.0508" layer="21" curve="55.772485" cap="flat"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.9826" y2="1.143" width="0.0508" layer="51" curve="-128.314524" cap="flat"/>
<wire x1="-3.9826" y1="-1.143" x2="-3.429" y2="-1.27" width="0.0508" layer="21" curve="25.842828" cap="flat"/>
<wire x1="-3.9826" y1="1.143" x2="-3.429" y2="1.27" width="0.0508" layer="21" curve="-25.842828" cap="flat"/>
<wire x1="-6.477" y1="-0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.1091" y1="-1.143" x2="-5.1091" y2="1.143" width="0.0508" layer="51" curve="-68.456213" cap="flat"/>
<wire x1="-5.715" y1="-1.143" x2="-5.715" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-0.381" x2="-5.715" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-5.715" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-2.159" x2="-5.715" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.159" x2="-5.461" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.715" y1="-0.381" x2="-6.477" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="0.381" x2="-6.477" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="2.032" x2="3.429" y2="2.032" width="0.0508" layer="21"/>
<wire x1="5.461" y1="2.413" x2="-5.461" y2="2.413" width="0.1524" layer="21"/>
<wire x1="5.461" y1="2.413" x2="5.715" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.715" y1="2.159" x2="-5.461" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.635" x2="0.254" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.635" x2="0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="-0.254" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.016" y2="0" width="0.0508" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.635" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.016" y2="0" width="0.0508" layer="21"/>
<smd name="1" x="-4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<smd name="2" x="4.826" y="0" dx="5.334" dy="1.9304" layer="1"/>
<text x="-5.715" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-3.048" x2="6.604" y2="3.048" layer="43"/>
</package>
<package name="HC49US">
<description>&lt;B&gt;CRYSTAL&lt;/B&gt;</description>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.2032" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.2032" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.429" y2="-2.286" width="0.2032" layer="21" curve="-180"/>
<wire x1="-3.429" y1="2.286" x2="-3.429" y2="-2.286" width="0.2032" layer="21" curve="180"/>
<pad name="1" x="-2.54" y="0" drill="0.7" diameter="1.651" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.7" diameter="1.651" rot="R90"/>
<text x="-5.08" y="-3.937" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.08" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="CRYSTAL-32KHZ-SMD">
<smd name="X1" x="-1.27" y="0" dx="1" dy="2.5" layer="1"/>
<smd name="X2" x="1.27" y="0" dx="1" dy="2.5" layer="1"/>
<smd name="SHEILD" x="0" y="5.08" dx="2.5" dy="6" layer="1"/>
<text x="-0.635" y="8.255" size="0.4064" layer="25">&gt;Name</text>
<text x="-0.635" y="-1.905" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CRYSTAL-SMD-5X3">
<wire x1="-0.6" y1="1.6" x2="0.6" y2="1.6" width="0.2032" layer="21"/>
<wire x1="2.5" y1="0.3" x2="2.5" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.6" x2="-0.6" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="0.3" x2="-2.5" y2="-0.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.85" y="-1.15" dx="1.9" dy="1.1" layer="1"/>
<smd name="3" x="1.85" y="1.15" dx="1.9" dy="1.1" layer="1"/>
<smd name="4" x="-1.85" y="1.15" dx="1.9" dy="1.1" layer="1"/>
<smd name="2" x="1.85" y="-1.15" dx="1.9" dy="1.1" layer="1"/>
<text x="-2.54" y="1.905" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CRYSTAL-32KHZ-SMD_EPSON_MC146">
<wire x1="0.2" y1="0" x2="7.2" y2="0" width="0.127" layer="51"/>
<wire x1="7.2" y1="0" x2="7.2" y2="1.5" width="0.127" layer="51"/>
<wire x1="7.2" y1="1.5" x2="0.2" y2="1.5" width="0.127" layer="51"/>
<wire x1="0.2" y1="1.5" x2="0.2" y2="0" width="0.127" layer="51"/>
<wire x1="6.2" y1="1.4" x2="5.9" y2="1.4" width="0.127" layer="21"/>
<wire x1="5.9" y1="1.4" x2="5.9" y2="0.1" width="0.127" layer="21"/>
<wire x1="5.9" y1="0.1" x2="6.2" y2="0.1" width="0.127" layer="21"/>
<wire x1="1.3" y1="1.4" x2="1.9" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.3" y1="0.1" x2="1.9" y2="0.1" width="0.127" layer="21"/>
<smd name="P$1" x="0.6" y="0.3" dx="1.2" dy="0.6" layer="1"/>
<smd name="P$2" x="0.6" y="1.2" dx="1.2" dy="0.6" layer="1"/>
<smd name="NC2" x="6.9" y="0.3" dx="1.2" dy="0.6" layer="1"/>
<smd name="NC1" x="6.9" y="1.2" dx="1.2" dy="0.6" layer="1"/>
</package>
<package name="CRYSTAL-SMD-10.5X4.8-2PIN">
<wire x1="-6.2" y1="1.5" x2="-6.2" y2="2.4" width="0.127" layer="21"/>
<wire x1="-6.2" y1="2.4" x2="6.2" y2="2.4" width="0.127" layer="21"/>
<wire x1="6.2" y1="2.4" x2="6.2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-6.2" y1="-1.5" x2="-6.2" y2="-2.4" width="0.127" layer="21"/>
<wire x1="-6.2" y1="-2.4" x2="6.2" y2="-2.4" width="0.127" layer="21"/>
<wire x1="6.2" y1="-2.4" x2="6.2" y2="-1.5" width="0.127" layer="21"/>
<smd name="P$1" x="-4.3" y="0" dx="5.5" dy="1.5" layer="1"/>
<smd name="P$2" x="4.3" y="0" dx="5.5" dy="1.5" layer="1"/>
</package>
<package name="TC26HEZ">
<description>32kHz crystal package&lt;br&gt;
This is the "EZ" version, which has limited top masking for improved ease of assembly.</description>
<wire x1="-0.889" y1="1.651" x2="0.889" y2="1.651" width="0.1524" layer="21"/>
<wire x1="0.762" y1="7.747" x2="1.016" y2="7.493" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="7.493" x2="-0.762" y2="7.747" width="0.1524" layer="21" curve="-90"/>
<wire x1="-0.762" y1="7.747" x2="0.762" y2="7.747" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.651" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.651" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.032" x2="-1.016" y2="7.493" width="0.1524" layer="21"/>
<wire x1="0.508" y1="0.762" x2="0.508" y2="1.143" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0.762" x2="-0.508" y2="1.27" width="0.4064" layer="21"/>
<wire x1="0.635" y1="0.635" x2="1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.635" y1="0.635" x2="-1.27" y2="0" width="0.4064" layer="51"/>
<wire x1="-0.508" y1="4.953" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="-0.508" y2="4.572" width="0.1524" layer="21"/>
<wire x1="0.508" y1="4.572" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.953" x2="0.508" y2="4.953" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="5.334" x2="0" y2="5.334" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="4.191" x2="0" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0" y2="3.683" width="0.1524" layer="21"/>
<wire x1="0" y1="4.191" x2="0.508" y2="4.191" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="5.334" x2="0.508" y2="5.334" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.032" x2="0.889" y2="2.032" width="0.1524" layer="21"/>
<wire x1="0.889" y1="2.032" x2="-0.889" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6764" stop="no"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6764" stop="no"/>
<text x="-1.397" y="2.032" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.667" y="2.032" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3048" y1="1.016" x2="0.7112" y2="1.6002" layer="21"/>
<rectangle x1="-0.7112" y1="1.016" x2="-0.3048" y2="1.6002" layer="21"/>
<rectangle x1="-1.778" y1="0.762" x2="1.778" y2="8.382" layer="43"/>
<circle x="-1.27" y="0" radius="0.508" width="0" layer="29"/>
<circle x="1.27" y="0" radius="0.508" width="0" layer="29"/>
<circle x="-1.27" y="0" radius="0.924571875" width="0" layer="30"/>
<circle x="1.27" y="0" radius="0.915809375" width="0" layer="30"/>
</package>
<package name="CRYSTAL-TXC-7A">
<smd name="P$1" x="1.85" y="0" dx="1.7" dy="2.4" layer="1"/>
<smd name="P$2" x="-1.85" y="0" dx="1.7" dy="2.4" layer="1"/>
<wire x1="-2.6" y1="1.6" x2="2.6" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.6" y1="-1.6" x2="-2.6" y2="-1.6" width="0.127" layer="21"/>
<text x="-1.016" y="0.254" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-0.508" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CRYSTAL-SMD-3.2X1.5MM">
<description>&lt;h3&gt;3.2 x 1.5mm Crystal Package&lt;/h3&gt;
&lt;p&gt;e.g: &lt;a href="http://www.sii.co.jp/en/quartz/files/2013/03/file_PRODUCT_MASTER_50812_GRAPHIC03.pdf"&gt;SX-32S&lt;/a&gt;&lt;/p&gt;</description>
<smd name="P$1" x="-1.25" y="0" dx="1" dy="1.8" layer="1"/>
<smd name="P$2" x="1.25" y="0" dx="1" dy="1.8" layer="1"/>
<wire x1="-1.6" y1="0.75" x2="1.6" y2="0.75" width="0.127" layer="51"/>
<wire x1="1.6" y1="0.75" x2="1.6" y2="-0.75" width="0.127" layer="51"/>
<wire x1="1.6" y1="-0.75" x2="-1.6" y2="-0.75" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-0.75" x2="-1.6" y2="0.75" width="0.127" layer="51"/>
<wire x1="-0.5" y1="0.75" x2="0.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="0.5" y1="-0.75" x2="-0.5" y2="-0.75" width="0.2032" layer="21"/>
<text x="0" y="1.143" size="0.8128" layer="25" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.143" size="0.8128" layer="27" align="top-center">&gt;Value</text>
</package>
<package name="0402-CAP">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.4064" layer="21"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="ATSAMD21G">
<description>&lt;h3&gt;Atmel SAMD21G SMART ARM-Based Microcontroller&lt;/h3&gt;

&lt;p&gt;The Atmel ® | SMART ™ SAM D21 is a series of low-power microcontrollers using the 32-bit
ARM ® Cortex ® -M0+ processor, and ranging from 32- to 64-pins with up to 256KB Flash and
32KB of SRAM. The SAM D21 devices operate at a maximum frequency of 48MHz and reach
2.46 CoreMark/MHz. They are designed for simple and intuitive migration with identical
peripheral modules, hex compatible code, identical linear address map and pin compatible
migration paths between all devices in the product series. All devices include intelligent and
flexible peripherals, Atmel Event System for inter-peripheral signaling, and support for capacitive
touch button, slider and wheel user interfaces.&lt;/p&gt;</description>
<pin name="GNDANA" x="-33.02" y="-20.32" length="short"/>
<pin name="PA00(XIN32/SER1:0/TC2:0)" x="-33.02" y="15.24" length="short"/>
<pin name="PA01(XOUT32/SER1:1/TC2:1)" x="-33.02" y="10.16" length="short"/>
<pin name="PA02(AIN0/DAC)" x="-33.02" y="7.62" length="short"/>
<pin name="PA03(AIN1/REFA)" x="-33.02" y="5.08" length="short"/>
<pin name="PA06(AIN6/SER0:2/TC1:0)" x="-33.02" y="-2.54" length="short"/>
<pin name="VDDANA" x="-33.02" y="20.32" length="short"/>
<pin name="PB08(AIN2/SER4:0/TC4:0)" x="-33.02" y="-12.7" length="short"/>
<pin name="PB09(AIN3/SER4:1/TC4:1)" x="-33.02" y="-15.24" length="short"/>
<pin name="PA04(AIN4/REFB/SER0:0/TC0:0)" x="-33.02" y="2.54" length="short"/>
<pin name="PA05(AIN5/SER0:1/TC0:1)" x="-33.02" y="0" length="short"/>
<pin name="PA07(AIN7/SER0:3/TC1:1)" x="-33.02" y="-5.08" length="short"/>
<pin name="PA08(I2C/AIN16/SER0:0+)" x="35.56" y="35.56" length="short" rot="R180"/>
<pin name="PA10(AIN18/SER0:2+)" x="35.56" y="30.48" length="short" rot="R180"/>
<pin name="PA09(I2C/AIN17/SER0:1+)" x="35.56" y="33.02" length="short" rot="R180"/>
<pin name="PA11(AIN19/SER0:3+)" x="35.56" y="27.94" length="short" rot="R180"/>
<pin name="VDDIO@17" x="35.56" y="43.18" length="short" rot="R180"/>
<pin name="GND@18" x="-33.02" y="-25.4" length="short"/>
<pin name="PB11(SER4:3+)" x="35.56" y="-25.4" length="short" rot="R180"/>
<pin name="PB10(SER4:2+)" x="35.56" y="-22.86" length="short" rot="R180"/>
<pin name="PA12(I2C/SER2:0+)" x="35.56" y="25.4" length="short" rot="R180"/>
<pin name="PA13(I2C/SER2:1+)" x="35.56" y="22.86" length="short" rot="R180"/>
<pin name="PA14(XIN/SER2:2+)" x="35.56" y="20.32" length="short" rot="R180"/>
<pin name="PA15(XOUT/SER2:3+)" x="35.56" y="17.78" length="short" rot="R180"/>
<pin name="PA16(I2C/SER1:0+)" x="35.56" y="15.24" length="short" rot="R180"/>
<pin name="PA17(I2C/SER1:1+)" x="35.56" y="12.7" length="short" rot="R180"/>
<pin name="PA18(SER1:2+)" x="35.56" y="10.16" length="short" rot="R180"/>
<pin name="PA19(SER1:3+)" x="35.56" y="7.62" length="short" rot="R180"/>
<pin name="PA20(SER5:2+)" x="35.56" y="5.08" length="short" rot="R180"/>
<pin name="PA21(SER5:3+)" x="35.56" y="2.54" length="short" rot="R180"/>
<pin name="PA22(I2C/SER3:0+)" x="35.56" y="0" length="short" rot="R180"/>
<pin name="PA23(I2C/SER3:0+)" x="35.56" y="-2.54" length="short" rot="R180"/>
<pin name="PA24(SER3:2+)" x="35.56" y="-5.08" length="short" rot="R180"/>
<pin name="PA25(SER3:3+)" x="35.56" y="-7.62" length="short" rot="R180"/>
<pin name="GND@35" x="-33.02" y="-27.94" length="short"/>
<pin name="VDDIO@36" x="35.56" y="40.64" length="short" rot="R180"/>
<pin name="PB22(SER5:2+)" x="35.56" y="-27.94" length="short" rot="R180"/>
<pin name="PB23(SER5:3+)" x="35.56" y="-30.48" length="short" rot="R180"/>
<pin name="PA27" x="35.56" y="-10.16" length="short" rot="R180"/>
<pin name="!RESET!" x="-33.02" y="43.18" length="short"/>
<pin name="PA28" x="35.56" y="-12.7" length="short" rot="R180"/>
<pin name="GND@42" x="-33.02" y="-30.48" length="short"/>
<pin name="VDDCORE" x="-33.02" y="38.1" length="short"/>
<pin name="PA30(SWCLK/SER1:2+)" x="35.56" y="-15.24" length="short" rot="R180"/>
<pin name="VDDIN" x="-33.02" y="40.64" length="short"/>
<pin name="PA31(SWDIO/SER1:3+)" x="35.56" y="-17.78" length="short" rot="R180"/>
<pin name="PB02(AIN10/SER5:0)" x="-33.02" y="-7.62" length="short"/>
<pin name="PB03(AIN11/SER5:1)" x="-33.02" y="-10.16" length="short"/>
<wire x1="-30.48" y1="45.72" x2="-30.48" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-30.48" y1="-33.02" x2="33.02" y2="-33.02" width="0.254" layer="94"/>
<wire x1="33.02" y1="-33.02" x2="33.02" y2="45.72" width="0.254" layer="94"/>
<wire x1="33.02" y1="45.72" x2="-30.48" y2="45.72" width="0.254" layer="94"/>
<text x="-30.48" y="45.974" size="1.778" layer="95">&gt;Name</text>
<text x="-30.48" y="-33.274" size="1.778" layer="96" align="top-left">&gt;Value</text>
</symbol>
<symbol name="Q">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">2</text>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATSAMD21G" prefix="U">
<description>&lt;h3&gt;Atmel SAMD21G SMART ARM-Based Microcontroller&lt;/h3&gt;

&lt;p&gt;The Atmel ® | SMART ™ SAM D21 is a series of low-power microcontrollers using the 32-bit
ARM ® Cortex ® -M0+ processor, and ranging from 32- to 64-pins with up to 256KB Flash and
32KB of SRAM. The SAM D21 devices operate at a maximum frequency of 48MHz and reach
2.46 CoreMark/MHz. They are designed for simple and intuitive migration with identical
peripheral modules, hex compatible code, identical linear address map and pin compatible
migration paths between all devices in the product series. All devices include intelligent and
flexible peripherals, Atmel Event System for inter-peripheral signaling, and support for capacitive
touch button, slider and wheel user interfaces.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="ATSAMD21G" x="0" y="0"/>
</gates>
<devices>
<device name="-M" package="QFN-48">
<connects>
<connect gate="G$1" pin="!RESET!" pad="40"/>
<connect gate="G$1" pin="GND@18" pad="18"/>
<connect gate="G$1" pin="GND@35" pad="35"/>
<connect gate="G$1" pin="GND@42" pad="42"/>
<connect gate="G$1" pin="GNDANA" pad="5"/>
<connect gate="G$1" pin="PA00(XIN32/SER1:0/TC2:0)" pad="1"/>
<connect gate="G$1" pin="PA01(XOUT32/SER1:1/TC2:1)" pad="2"/>
<connect gate="G$1" pin="PA02(AIN0/DAC)" pad="3"/>
<connect gate="G$1" pin="PA03(AIN1/REFA)" pad="4"/>
<connect gate="G$1" pin="PA04(AIN4/REFB/SER0:0/TC0:0)" pad="9"/>
<connect gate="G$1" pin="PA05(AIN5/SER0:1/TC0:1)" pad="10"/>
<connect gate="G$1" pin="PA06(AIN6/SER0:2/TC1:0)" pad="11"/>
<connect gate="G$1" pin="PA07(AIN7/SER0:3/TC1:1)" pad="12"/>
<connect gate="G$1" pin="PA08(I2C/AIN16/SER0:0+)" pad="13"/>
<connect gate="G$1" pin="PA09(I2C/AIN17/SER0:1+)" pad="14"/>
<connect gate="G$1" pin="PA10(AIN18/SER0:2+)" pad="15"/>
<connect gate="G$1" pin="PA11(AIN19/SER0:3+)" pad="16"/>
<connect gate="G$1" pin="PA12(I2C/SER2:0+)" pad="21"/>
<connect gate="G$1" pin="PA13(I2C/SER2:1+)" pad="22"/>
<connect gate="G$1" pin="PA14(XIN/SER2:2+)" pad="23"/>
<connect gate="G$1" pin="PA15(XOUT/SER2:3+)" pad="24"/>
<connect gate="G$1" pin="PA16(I2C/SER1:0+)" pad="25"/>
<connect gate="G$1" pin="PA17(I2C/SER1:1+)" pad="26"/>
<connect gate="G$1" pin="PA18(SER1:2+)" pad="27"/>
<connect gate="G$1" pin="PA19(SER1:3+)" pad="28"/>
<connect gate="G$1" pin="PA20(SER5:2+)" pad="29"/>
<connect gate="G$1" pin="PA21(SER5:3+)" pad="30"/>
<connect gate="G$1" pin="PA22(I2C/SER3:0+)" pad="31"/>
<connect gate="G$1" pin="PA23(I2C/SER3:0+)" pad="32"/>
<connect gate="G$1" pin="PA24(SER3:2+)" pad="33"/>
<connect gate="G$1" pin="PA25(SER3:3+)" pad="34"/>
<connect gate="G$1" pin="PA27" pad="39"/>
<connect gate="G$1" pin="PA28" pad="41"/>
<connect gate="G$1" pin="PA30(SWCLK/SER1:2+)" pad="45"/>
<connect gate="G$1" pin="PA31(SWDIO/SER1:3+)" pad="46"/>
<connect gate="G$1" pin="PB02(AIN10/SER5:0)" pad="47"/>
<connect gate="G$1" pin="PB03(AIN11/SER5:1)" pad="48"/>
<connect gate="G$1" pin="PB08(AIN2/SER4:0/TC4:0)" pad="7"/>
<connect gate="G$1" pin="PB09(AIN3/SER4:1/TC4:1)" pad="8"/>
<connect gate="G$1" pin="PB10(SER4:2+)" pad="19"/>
<connect gate="G$1" pin="PB11(SER4:3+)" pad="20"/>
<connect gate="G$1" pin="PB22(SER5:2+)" pad="37"/>
<connect gate="G$1" pin="PB23(SER5:3+)" pad="38"/>
<connect gate="G$1" pin="VDDANA" pad="6"/>
<connect gate="G$1" pin="VDDCORE" pad="43"/>
<connect gate="G$1" pin="VDDIN" pad="44"/>
<connect gate="G$1" pin="VDDIO@17" pad="17"/>
<connect gate="G$1" pin="VDDIO@36" pad="36"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-A" package="TQFP-48">
<connects>
<connect gate="G$1" pin="!RESET!" pad="40"/>
<connect gate="G$1" pin="GND@18" pad="18"/>
<connect gate="G$1" pin="GND@35" pad="35"/>
<connect gate="G$1" pin="GND@42" pad="42"/>
<connect gate="G$1" pin="GNDANA" pad="5"/>
<connect gate="G$1" pin="PA00(XIN32/SER1:0/TC2:0)" pad="1"/>
<connect gate="G$1" pin="PA01(XOUT32/SER1:1/TC2:1)" pad="2"/>
<connect gate="G$1" pin="PA02(AIN0/DAC)" pad="3"/>
<connect gate="G$1" pin="PA03(AIN1/REFA)" pad="4"/>
<connect gate="G$1" pin="PA04(AIN4/REFB/SER0:0/TC0:0)" pad="9"/>
<connect gate="G$1" pin="PA05(AIN5/SER0:1/TC0:1)" pad="10"/>
<connect gate="G$1" pin="PA06(AIN6/SER0:2/TC1:0)" pad="11"/>
<connect gate="G$1" pin="PA07(AIN7/SER0:3/TC1:1)" pad="12"/>
<connect gate="G$1" pin="PA08(I2C/AIN16/SER0:0+)" pad="13"/>
<connect gate="G$1" pin="PA09(I2C/AIN17/SER0:1+)" pad="14"/>
<connect gate="G$1" pin="PA10(AIN18/SER0:2+)" pad="15"/>
<connect gate="G$1" pin="PA11(AIN19/SER0:3+)" pad="16"/>
<connect gate="G$1" pin="PA12(I2C/SER2:0+)" pad="21"/>
<connect gate="G$1" pin="PA13(I2C/SER2:1+)" pad="22"/>
<connect gate="G$1" pin="PA14(XIN/SER2:2+)" pad="23"/>
<connect gate="G$1" pin="PA15(XOUT/SER2:3+)" pad="24"/>
<connect gate="G$1" pin="PA16(I2C/SER1:0+)" pad="25"/>
<connect gate="G$1" pin="PA17(I2C/SER1:1+)" pad="26"/>
<connect gate="G$1" pin="PA18(SER1:2+)" pad="27"/>
<connect gate="G$1" pin="PA19(SER1:3+)" pad="28"/>
<connect gate="G$1" pin="PA20(SER5:2+)" pad="29"/>
<connect gate="G$1" pin="PA21(SER5:3+)" pad="30"/>
<connect gate="G$1" pin="PA22(I2C/SER3:0+)" pad="31"/>
<connect gate="G$1" pin="PA23(I2C/SER3:0+)" pad="32"/>
<connect gate="G$1" pin="PA24(SER3:2+)" pad="33"/>
<connect gate="G$1" pin="PA25(SER3:3+)" pad="34"/>
<connect gate="G$1" pin="PA27" pad="39"/>
<connect gate="G$1" pin="PA28" pad="41"/>
<connect gate="G$1" pin="PA30(SWCLK/SER1:2+)" pad="45"/>
<connect gate="G$1" pin="PA31(SWDIO/SER1:3+)" pad="46"/>
<connect gate="G$1" pin="PB02(AIN10/SER5:0)" pad="47"/>
<connect gate="G$1" pin="PB03(AIN11/SER5:1)" pad="48"/>
<connect gate="G$1" pin="PB08(AIN2/SER4:0/TC4:0)" pad="7"/>
<connect gate="G$1" pin="PB09(AIN3/SER4:1/TC4:1)" pad="8"/>
<connect gate="G$1" pin="PB10(SER4:2+)" pad="19"/>
<connect gate="G$1" pin="PB11(SER4:3+)" pad="20"/>
<connect gate="G$1" pin="PB22(SER5:2+)" pad="37"/>
<connect gate="G$1" pin="PB23(SER5:3+)" pad="38"/>
<connect gate="G$1" pin="VDDANA" pad="6"/>
<connect gate="G$1" pin="VDDCORE" pad="43"/>
<connect gate="G$1" pin="VDDIN" pad="44"/>
<connect gate="G$1" pin="VDDIO@17" pad="17"/>
<connect gate="G$1" pin="VDDIO@36" pad="36"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-13064"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRYSTAL" prefix="Y" uservalue="yes">
<description>Various standard crystals. Proven footprints.</description>
<gates>
<gate name="G$1" symbol="Q" x="0" y="0"/>
</gates>
<devices>
<device name="HC49UV" package="HC49U-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TC38H" package="TC38H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TC26H" package="TC26H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="XTAL-10112"/>
<attribute name="VALUE" value="32.768kHz"/>
</technology>
</technologies>
</device>
<device name="SMD" package="HC49UP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="HC49US" package="HC49US">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="32-SMD" package="CRYSTAL-32KHZ-SMD">
<connects>
<connect gate="G$1" pin="1" pad="X1"/>
<connect gate="G$1" pin="2" pad="X2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="XTAL-07894" constant="no"/>
</technology>
</technologies>
</device>
<device name="5X3" package="CRYSTAL-SMD-5X3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="XTAL-08218" constant="no"/>
</technology>
</technologies>
</device>
<device name="EPSONMC146" package="CRYSTAL-32KHZ-SMD_EPSON_MC146">
<connects>
<connect gate="G$1" pin="1" pad="P$2"/>
<connect gate="G$1" pin="2" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10.5X4.8" package="CRYSTAL-SMD-10.5X4.8-2PIN">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TC26H_EZ" package="TC26HEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TXC-7A" package="CRYSTAL-TXC-7A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.2X1.5MM" package="CRYSTAL-SMD-3.2X1.5MM">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="XTAL-13062"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="15PF-50V(+-5%)(0402)" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-13063"/>
<attribute name="VALUE" value="15pF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-PowerIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find drivers, regulators, and amplifiers.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SOT23-5">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;</description>
<wire x1="1.27" y1="0.4294" x2="1.27" y2="-0.4294" width="0.2032" layer="21"/>
<wire x1="1.4" y1="-0.8" x2="-1.4" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="-0.4294" x2="-1.27" y2="0.4294" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="0.8" x2="1.4" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.2684" y1="0.7088" x2="0.2684" y2="0.7088" width="0.2032" layer="21"/>
<wire x1="1.4" y1="0.8" x2="1.4" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-1.4" y1="0.8" x2="-1.4" y2="-0.8" width="0.1524" layer="51"/>
<rectangle x1="-1.2" y1="-1.5" x2="-0.7" y2="-0.85" layer="51"/>
<rectangle x1="-0.25" y1="-1.5" x2="0.25" y2="-0.85" layer="51"/>
<rectangle x1="0.7" y1="-1.5" x2="1.2" y2="-0.85" layer="51"/>
<rectangle x1="0.7" y1="0.85" x2="1.2" y2="1.5" layer="51"/>
<rectangle x1="-1.2" y1="0.85" x2="-0.7" y2="1.5" layer="51"/>
<smd name="1" x="-0.95" y="-1.3001" dx="0.55" dy="1.2" layer="1"/>
<smd name="2" x="0" y="-1.3001" dx="0.55" dy="1.2" layer="1"/>
<smd name="3" x="0.95" y="-1.3001" dx="0.55" dy="1.2" layer="1"/>
<smd name="4" x="0.95" y="1.3001" dx="0.55" dy="1.2" layer="1"/>
<smd name="5" x="-0.95" y="1.3001" dx="0.55" dy="1.2" layer="1"/>
<text x="-0.889" y="2.159" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9525" y="-0.1905" size="0.4064" layer="27">&gt;VALUE</text>
<circle x="-1.6002" y="-1.016" radius="0.127" width="0" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="V-REG-LDO_NO-BP">
<wire x1="-7.62" y1="-7.62" x2="5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="7.62" width="0.4064" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<text x="-7.62" y="9.144" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
<pin name="IN" x="-10.16" y="5.08" visible="pin" length="short" direction="in"/>
<pin name="GND" x="-10.16" y="-5.08" visible="pin" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="5.08" visible="pin" length="short" direction="pas" rot="R180"/>
<pin name="EN" x="-10.16" y="0" visible="pin" length="short" direction="in"/>
<pin name="NC" x="7.62" y="-5.08" visible="pin" length="short" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="V_REG_AP2112" prefix="U">
<description>&lt;h3&gt;AP2112 - 600mA CMOS LDO Regulator w/ Enable&lt;/h3&gt;
&lt;p&gt;The AP2112 is CMOS process low dropout linear regulator with enable function, the regulator delivers a guaranteed 600mA (min.) continuous load current.&lt;/p&gt;
&lt;p&gt;Features&lt;br&gt;
&lt;ul&gt;
&lt;li&gt;Output Voltage Accuracy: ±1.5% &lt;/li&gt;
&lt;li&gt;Output Current: 600mA (Min.) &lt;/li&gt;
&lt;li&gt;Foldback Short Current Protection: 50mA &lt;/li&gt;
&lt;li&gt;Enable Function to Turn ON/OFF VOUT&lt;/li&gt;
&lt;li&gt;Low Dropout Voltage (3.3V): 250mV (Typ.) @IOUT=600mA &lt;/li&gt;
&lt;li&gt;Excellent Load Regulation: 0.2%/A (Typ.) &lt;/li&gt;
&lt;li&gt;Excellent Line Regulation: 0.02%/V (Typ.) &lt;/li&gt;
&lt;li&gt;Low Quiescent Current: 55μA (Typ.)&lt;/li&gt;
&lt;li&gt;Low Standby Current: 0.01μA (Typ.)&lt;/li&gt;
&lt;li&gt;Low Output Noise: 50μVRMS &lt;/li&gt;
&lt;li&gt;PSRR: 100Hz -65dB, 1kHz -65dB &lt;/li&gt;
&lt;li&gt; OTSD Protection &lt;/li&gt;
&lt;li&gt;Stable  with  1.0μF Flexible Cap: Ceramic, Tantalum and Aluminum Electrolytic &lt;/li&gt;
&lt;li&gt;Operation Temperature Range: -40°C to 85°C &lt;/li&gt;
&lt;li&gt;ESD: MM 400V, HBM 4000V&lt;/li&gt;
&lt;/ul&gt;
&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="V-REG-LDO_NO-BP" x="0" y="0"/>
</gates>
<devices>
<device name="K-3.3V" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="NC" pad="4"/>
<connect gate="G$1" pin="OUT" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="VREG-12457"/>
<attribute name="VALUE" value="3.3V"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DiscreteSemi">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find discrete semiconductors- transistors, diodes, TRIACs, optoisolators, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="DPAK">
<wire x1="3.2766" y1="2.4654" x2="3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="3.277" y1="-3.729" x2="-3.277" y2="-3.729" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="-3.729" x2="-3.2766" y2="2.4654" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="2.465" x2="3.2774" y2="2.4646" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="2.567" x2="-2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="3.2782" x2="-2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="-2.1082" y1="3.7354" x2="2.1082" y2="3.7354" width="0.2032" layer="51"/>
<wire x1="2.1082" y1="3.7354" x2="2.5654" y2="3.2782" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="3.2782" x2="2.5654" y2="2.567" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="2.567" x2="-2.5654" y2="2.567" width="0.2032" layer="51"/>
<rectangle x1="-2.7178" y1="-6.7262" x2="-1.8542" y2="-3.8306" layer="51"/>
<rectangle x1="1.8542" y1="-6.7262" x2="2.7178" y2="-3.8306" layer="51"/>
<rectangle x1="-0.4318" y1="-4.5926" x2="0.4318" y2="-3.8306" layer="21"/>
<smd name="1" x="-2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="3" x="2.28" y="-5.31" dx="1.6" dy="3" layer="1"/>
<smd name="4" x="0" y="1.588" dx="4.826" dy="5.715" layer="1"/>
<text x="-3.683" y="-3.702" size="0.4064" layer="25" rot="R90">&gt;NAME</text>
<text x="3.937" y="-3.702" size="0.4064" layer="27" rot="R90">&gt;VALUE</text>
<polygon width="0.1998" layer="51">
<vertex x="-2.5654" y="2.567"/>
<vertex x="-2.5654" y="3.2782"/>
<vertex x="-2.1082" y="3.7354"/>
<vertex x="2.1082" y="3.7354"/>
<vertex x="2.5654" y="3.2782"/>
<vertex x="2.5654" y="2.567"/>
</polygon>
</package>
<package name="POWERPAK1212-8">
<description>Vishay PowerPAK 1212-8 single device package&lt;br&gt;
High-power, low thermal resistance package.</description>
<smd name="S3" x="-1.4224" y="-0.3302" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="S2" x="-1.4224" y="0.3302" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="S1" x="-1.4224" y="0.9906" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="G" x="-1.4224" y="-0.9906" dx="0.9906" dy="0.4064" layer="1"/>
<smd name="D2" x="1.5494" y="0.3302" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D1" x="1.5494" y="0.9906" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D3" x="1.5494" y="-0.3302" dx="0.762" dy="0.4064" layer="1"/>
<smd name="D4" x="1.5494" y="-0.9906" dx="0.762" dy="0.4064" layer="1"/>
<smd name="DPAD" x="0.5842" y="0" dx="1.7272" dy="2.2352" layer="1"/>
<wire x1="-1.5" y1="1.5" x2="1.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="1.35" width="0.127" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="1.5" y2="-1.35" width="0.127" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="-1.35" width="0.127" layer="21"/>
<text x="-1.143" y="0.508" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.143" y="-0.381" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt; Fits JEDEC packages (narrow SOIC-8)</description>
<wire x1="-2.362" y1="-1.803" x2="2.362" y2="-1.803" width="0.1524" layer="51"/>
<wire x1="2.362" y1="-1.803" x2="2.362" y2="1.803" width="0.1524" layer="21"/>
<wire x1="2.362" y1="1.803" x2="-2.362" y2="1.803" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="1.803" x2="-2.362" y2="-1.803" width="0.1524" layer="21"/>
<circle x="-1.8034" y="-0.9906" radius="0.1436" width="0.2032" layer="21"/>
<smd name="1" x="-1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="2" x="-0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="3" x="0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="4" x="1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="5" x="1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="6" x="0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="7" x="-0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="8" x="-1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<text x="-1.27" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="0" size="0.4064" layer="25">&gt;NAME</text>
<rectangle x1="-2.0828" y1="-2.8702" x2="-1.7272" y2="-1.8542" layer="51"/>
<rectangle x1="-0.8128" y1="-2.8702" x2="-0.4572" y2="-1.8542" layer="51"/>
<rectangle x1="0.4572" y1="-2.8702" x2="0.8128" y2="-1.8542" layer="51"/>
<rectangle x1="1.7272" y1="-2.8702" x2="2.0828" y2="-1.8542" layer="51"/>
<rectangle x1="-2.0828" y1="1.8542" x2="-1.7272" y2="2.8702" layer="51"/>
<rectangle x1="-0.8128" y1="1.8542" x2="-0.4572" y2="2.8702" layer="51"/>
<rectangle x1="0.4572" y1="1.8542" x2="0.8128" y2="2.8702" layer="51"/>
<rectangle x1="1.7272" y1="1.8542" x2="2.0828" y2="2.8702" layer="51"/>
</package>
<package name="SOT323">
<wire x1="1.1224" y1="0.6604" x2="1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.1224" y1="-0.6604" x2="-1.1224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="-0.6604" x2="-1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.1224" y1="0.6604" x2="1.1224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.7" x2="-1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.1" y1="0.7" x2="-1.1" y2="-0.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="0.7" x2="1.1" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.1" y1="0.7" x2="1.1" y2="-0.1" width="0.2032" layer="21"/>
<smd name="1" x="-0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="2" x="0.65" y="-0.925" dx="0.7" dy="0.7" layer="1"/>
<smd name="3" x="0" y="0.925" dx="0.7" dy="0.7" layer="1"/>
<text x="-1.1255" y="1.878" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.116" y="1.3095" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="TO220V">
<description>&lt;b&gt;TO 220 Vertical&lt;/b&gt; Package works with various parts including N-Channel MOSFET SparkFun SKU: COM-10213</description>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="5.08" y2="-0.381" width="0.2032" layer="21"/>
<wire x1="5.08" y1="2.032" x2="-5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="2.032" x2="-5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="3.048" x2="5.08" y2="3.048" width="0.2032" layer="21"/>
<wire x1="5.08" y1="3.048" x2="5.08" y2="2.032" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="-0.381" x2="-4.191" y2="-1.27" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="4.191" y1="-1.27" x2="5.08" y2="-0.381" width="0.2032" layer="21" curve="92.798868"/>
<wire x1="-4.191" y1="-1.27" x2="-3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.191" y1="-1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<rectangle x1="-5.08" y1="2.032" x2="5.08" y2="3.048" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.794" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TO-92">
<description>&lt;b&gt;TO 92&lt;/b&gt;</description>
<wire x1="-0.7863" y1="2.5485" x2="-2.0946" y2="-1.651" width="0.2032" layer="21" curve="111.098962"/>
<wire x1="2.0945" y1="-1.651" x2="0.7863" y2="2.548396875" width="0.2032" layer="21" curve="111.099507"/>
<wire x1="-2.0945" y1="-1.651" x2="2.0945" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="-2.6549" y1="-0.254" x2="-2.2537" y2="-0.254" width="0.2032" layer="21"/>
<wire x1="-0.2863" y1="-0.254" x2="0.2863" y2="-0.254" width="0.2032" layer="21"/>
<wire x1="2.2537" y1="-0.254" x2="2.6549" y2="-0.254" width="0.2032" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.8796"/>
<pad name="2" x="0" y="1.905" drill="0.8128" diameter="1.8796"/>
<pad name="3" x="1.27" y="0" drill="0.8128" diameter="1.8796"/>
<text x="3.175" y="0.635" size="0.4064" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="-1.27" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SOT23-3">
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-0.8" y1="0.7" x2="-1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="0.7" x2="-1.4" y2="-0.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="0.7" x2="1.4" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="-0.1" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="2" x="0.95" y="-1" dx="0.8" dy="0.9" layer="1"/>
<smd name="3" x="0" y="1.1" dx="0.8" dy="0.9" layer="1"/>
<text x="-0.8255" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-0.1905" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="TO-263/D2PAK">
<wire x1="5" y1="-1" x2="5" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="5" y1="-3.4" x2="-5" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="-5" y1="-3.4" x2="-5" y2="-1" width="0.2032" layer="21"/>
<rectangle x1="-3.27" y1="-7.6" x2="-1.81" y2="-3.4" layer="51"/>
<rectangle x1="-0.73" y1="-4.9" x2="0.73" y2="-3.4" layer="21"/>
<smd name="1" x="-2.54" y="-7.045" dx="2.32" dy="3.81" layer="1"/>
<smd name="3" x="2.54" y="-7.045" dx="2.32" dy="3.81" layer="1"/>
<smd name="2" x="0" y="4.125" dx="11" dy="9.65" layer="1"/>
<text x="-4.064" y="-1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-4.064" y="-2.794" size="0.4064" layer="27">&gt;VALUE</text>
<polygon width="0.1998" layer="51">
<vertex x="-5" y="6.25"/>
<vertex x="-5" y="7"/>
<vertex x="-1" y="7.65"/>
<vertex x="1" y="7.65"/>
<vertex x="5" y="7"/>
<vertex x="5" y="6.25"/>
</polygon>
<wire x1="-5" y1="6.25" x2="-5" y2="-0.65" width="0.127" layer="51"/>
<wire x1="5" y1="-0.65" x2="5" y2="6.25" width="0.127" layer="51"/>
<wire x1="-1.81" y1="-3.4" x2="-1.81" y2="-7.6" width="0.127" layer="51"/>
<wire x1="-1.81" y1="-7.6" x2="-3.27" y2="-7.6" width="0.127" layer="51"/>
<wire x1="-3.27" y1="-7.6" x2="-3.27" y2="-3.4" width="0.127" layer="51"/>
<wire x1="-3.27" y1="-3.4" x2="-1.81" y2="-3.4" width="0.127" layer="51"/>
<wire x1="1.81" y1="-3.4" x2="1.81" y2="-7.6" width="0.127" layer="51"/>
<wire x1="1.81" y1="-7.6" x2="3.27" y2="-7.6" width="0.127" layer="51"/>
<wire x1="3.27" y1="-7.6" x2="3.27" y2="-3.4" width="0.127" layer="51"/>
<wire x1="3.27" y1="-3.4" x2="1.81" y2="-3.4" width="0.127" layer="51"/>
<rectangle x1="1.81" y1="-7.6" x2="3.27" y2="-3.4" layer="51"/>
<rectangle x1="-3.27" y1="-4.9" x2="-1.81" y2="-3.4" layer="21"/>
<rectangle x1="1.81" y1="-4.9" x2="3.27" y2="-3.4" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MOSFET-NCHANNEL-1">
<circle x="0" y="-1.905" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="1.905" radius="0.127" width="0.4064" layer="94"/>
<rectangle x1="-2.794" y1="-2.54" x2="-2.032" y2="-1.27" layer="94"/>
<rectangle x1="-2.794" y1="1.27" x2="-2.032" y2="2.54" layer="94"/>
<rectangle x1="-2.794" y1="-0.889" x2="-2.032" y2="0.889" layer="94"/>
<wire x1="-3.6576" y1="2.413" x2="-3.6576" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="1.905" x2="-2.0066" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.905" x2="2.54" y2="1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.905" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="-0.762" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="0.508" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="0.508" x2="-2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0.254" x2="-1.778" y2="0" width="0.3048" layer="94"/>
<wire x1="-1.778" y1="0" x2="-0.889" y2="-0.254" width="0.3048" layer="94"/>
<wire x1="-0.889" y1="-0.254" x2="-0.889" y2="0" width="0.3048" layer="94"/>
<wire x1="-0.889" y1="0" x2="-1.143" y2="0" width="0.3048" layer="94"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="-1.905" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="1.905" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-0.635" x2="3.175" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-0.635" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0.762" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="3.175" y2="0.762" width="0.1524" layer="94"/>
<wire x1="3.175" y1="0.762" x2="3.429" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.905" y1="0.762" x2="1.651" y2="0.508" width="0.1524" layer="94"/>
<pin name="D" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="G" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<pin name="S" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="2.54" size="0.8128" layer="93">D</text>
<text x="-1.27" y="-3.556" size="0.8128" layer="93">S</text>
<text x="-5.08" y="-1.27" size="0.8128" layer="93">G</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOSFET-NCHANNEL" prefix="Q">
<description>&lt;B&gt;Common NMOSFET Parts&lt;/b&gt;&lt;p&gt;
&lt;table border = "1"&gt;
&lt;tr&gt;&lt;th&gt;MFG P/N&lt;/th&gt;&lt;th&gt;Store ID&lt;/th&gt;&lt;th&gt;Prod ID&lt;/th&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FDD8780&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-09984&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SI7820DN&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-11055&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FDS6630A&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;IC-08089&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2N7002PW&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-11151&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;FQP30N06L&lt;/td&gt;  &lt;td&gt;COM-10213&lt;/td&gt;&lt;td&gt;TRANS-10060&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BSS123LT1G&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-08345&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BSS138&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;TRANS-00830&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;BS170&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2N7000&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;</description>
<gates>
<gate name="G$1" symbol="MOSFET-NCHANNEL-1" x="0" y="0"/>
</gates>
<devices>
<device name="FDD8780" package="DPAK">
<connects>
<connect gate="G$1" pin="D" pad="4"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-09984"/>
</technology>
</technologies>
</device>
<device name="SI7820DN" package="POWERPAK1212-8">
<connects>
<connect gate="G$1" pin="D" pad="D1 D2 D3 D4 DPAD"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S1 S2 S3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-11055"/>
</technology>
</technologies>
</device>
<device name="FDS6630A" package="SO08">
<connects>
<connect gate="G$1" pin="D" pad="5 6 7 8"/>
<connect gate="G$1" pin="G" pad="4"/>
<connect gate="G$1" pin="S" pad="1 2 3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-08089"/>
</technology>
</technologies>
</device>
<device name="2N7002PW" package="SOT323">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-11151"/>
</technology>
</technologies>
</device>
<device name="FQP30N06L" package="TO220V">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-10060"/>
</technology>
</technologies>
</device>
<device name="BS170" package="TO-92">
<connects>
<connect gate="G$1" pin="D" pad="1"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2N7000" package="TO-92">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="BSS138" package="SOT23-3">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-00830" constant="no"/>
<attribute name="VALUE" value="200mA/50V" constant="no"/>
</technology>
</technologies>
</device>
<device name="BSS123LT1G" package="SOT23-3">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-08345" constant="no"/>
</technology>
</technologies>
</device>
<device name="PSMN7R0" package="TO-263/D2PAK">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRANS-12437" constant="no"/>
<attribute name="VALUE" value="100A/100V" constant="no"/>
</technology>
</technologies>
</device>
<device name="AO3404A" package="SOT23-3">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="TRAN-12988" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="mike-temp" deviceset="RFM69H" device="CW" value="RFM69HCW"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="0.1UF-25V(+80/-20%)(0603)" device="" value="0.1uF"/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND3" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY4" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="10UF50V20%(1210)" device="" value="10uF"/>
<part name="D1" library="SparkFun-LED" deviceset="LED-BLUE" device="0603" value="BLU"/>
<part name="D2" library="SparkFun-LED" deviceset="LED-RED" device="0603" value="RED"/>
<part name="D3" library="SparkFun-LED" deviceset="LED-GREEN" device="0603" value="GREEN"/>
<part name="D4" library="SparkFun-LED" deviceset="LED-WHITE" device="0603" value="WHT"/>
<part name="GND5" library="SparkFun" deviceset="GND" device=""/>
<part name="C3" library="SparkFun-Capacitors" deviceset="0.1UF-25V(+80/-20%)(0603)" device="" value="0.1uF"/>
<part name="GND6" library="SparkFun" deviceset="GND" device=""/>
<part name="C4" library="SparkFun-Capacitors" deviceset="0.1UF-25V(+80/-20%)(0603)" device="" value="0.1uF"/>
<part name="GND7" library="SparkFun" deviceset="GND" device=""/>
<part name="C5" library="SparkFun-Capacitors" deviceset="0.1UF-25V(+80/-20%)(0603)" device="" value="0.1uF"/>
<part name="GND8" library="SparkFun" deviceset="GND" device=""/>
<part name="C6" library="SparkFun-Capacitors" deviceset="0.1UF-25V(+80/-20%)(0603)" device="" value="0.1uF"/>
<part name="R1" library="SparkFun-Resistors" deviceset="180OHM1/10W1%(0603)" device="" value="180"/>
<part name="R2" library="SparkFun-Resistors" deviceset="180OHM1/10W1%(0603)" device="" value="180"/>
<part name="R3" library="SparkFun-Resistors" deviceset="180OHM1/10W1%(0603)" device="" value="180"/>
<part name="R4" library="SparkFun-Resistors" deviceset="180OHM1/10W1%(0603)" device="" value="180"/>
<part name="GND9" library="SparkFun" deviceset="GND" device=""/>
<part name="GND10" library="SparkFun" deviceset="GND" device=""/>
<part name="GND11" library="SparkFun" deviceset="GND" device=""/>
<part name="GND12" library="SparkFun" deviceset="GND" device=""/>
<part name="S1" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-2"/>
<part name="U2" library="SparkFun-Sensors" deviceset="HALL-EFFECT" device="SMD"/>
<part name="U3" library="SparkFun-Sensors" deviceset="HALL-EFFECT" device="SMD"/>
<part name="U4" library="SparkFun-Sensors" deviceset="HALL-EFFECT" device="SMD"/>
<part name="U5" library="SparkFun-Sensors" deviceset="HALL-EFFECT" device="SMD"/>
<part name="GND14" library="SparkFun" deviceset="GND" device=""/>
<part name="GND15" library="SparkFun" deviceset="GND" device=""/>
<part name="R5" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R6" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R7" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R8" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="R9" library="SparkFun-Resistors" deviceset="10KOHM1/10W1%(0603)" device="0603" value="10K"/>
<part name="JP10" library="SparkFun-Connectors" deviceset="JST_2MM_MALE" device=""/>
<part name="GND16" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U6" library="battery-management-temp" deviceset="BQ27441-G1" device="">
<attribute name="PROD_ID" value="IC-13220"/>
</part>
<part name="R11" library="SparkFun-Resistors" deviceset="RESISTOR" device="1206" value="0.01">
<attribute name="PROD_ID" value="RES-13218"/>
</part>
<part name="SUPPLY7" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="GND18" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C7" library="SparkFun-Capacitors" deviceset="1.0UF-16V-10%(0603)" device="" value="1.0uF"/>
<part name="GND20" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C8" library="SparkFun-Capacitors" deviceset="CAP" device="0603-CAP" value="0.47uF">
<attribute name="PROD_ID" value="CAP-13216"/>
</part>
<part name="GND19" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R13" library="SparkFun-Resistors" deviceset="4.7KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="R14" library="SparkFun-Resistors" deviceset="4.7KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="U7" library="battery-management-temp" deviceset="BQ24075" device="">
<attribute name="PROD_ID" value="IC-13219"/>
</part>
<part name="GND21" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND22" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY5" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="SUPPLY6" library="SparkFun-Aesthetics" deviceset="V_USB" device=""/>
<part name="R12" library="SparkFun-Passives" deviceset="RESISTOR" device="0603-RES" value="1.1k">
<attribute name="PROD_ID" value="RES-10447"/>
</part>
<part name="GND24" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND25" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY8" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="D5" library="SparkFun-LED" deviceset="LED-BLUE" device="0603" value="BLUE"/>
<part name="D6" library="SparkFun-LED" deviceset="LED-RED" device="0603" value="RED"/>
<part name="R15" library="SparkFun-Resistors" deviceset="180OHM1/10W1%(0603)" device="" value="180"/>
<part name="R16" library="SparkFun-Resistors" deviceset="1KOHM-1/10W-1%(0603)" device="" value="1K"/>
<part name="C9" library="SparkFun-Capacitors" deviceset="10UF10V10%(0805)" device="" value="10uF"/>
<part name="GND26" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND27" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R17" library="SparkFun-Resistors" deviceset="100KOHM-1/10W-1%(0603)" device="" value="100k"/>
<part name="GND29" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY9" library="SparkFun-Aesthetics" deviceset="V_USB" device=""/>
<part name="GND32" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C10" library="SparkFun-Capacitors" deviceset="1.0UF50V10%(1206)" device="" value="1.0uF"/>
<part name="S2" library="SparkFun-Electromechanical" deviceset="SWITCH-SPDT" device="-SMD-A"/>
<part name="R22" library="SparkFun-Resistors" deviceset="10KOHM-1/10W-1%(0603)" device="0603" value="10K"/>
<part name="SUPPLY11" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="R24" library="SparkFun-Resistors" deviceset="100KOHM-1/10W-1%(0603)" device="" value="100k"/>
<part name="R26" library="SparkFun-Resistors" deviceset="10KOHM-1/10W-1%(0603)" device="0603" value="10K"/>
<part name="C11" library="SparkFun-Capacitors" deviceset="10UF10V10%(0805)" device="" value="10uF"/>
<part name="GND38" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="Y1" library="samd21-temp" deviceset="CRYSTAL" device="3.2X1.5MM" value="32.768kHz"/>
<part name="U8" library="samd21-temp" deviceset="ATSAMD21G" device="-A"/>
<part name="GND40" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C12" library="SparkFun-Capacitors" deviceset="0.1UF-16V(+-10%)(0402)" device="" value="0.1uF"/>
<part name="C13" library="SparkFun-Capacitors" deviceset="0.1UF-16V(+-10%)(0402)" device="" value="0.1uF"/>
<part name="C14" library="SparkFun-Capacitors" deviceset="0.1UF-16V(+-10%)(0402)" device="" value="0.1uF"/>
<part name="C15" library="SparkFun-Capacitors" deviceset="0.1UF-16V(+-10%)(0402)" device="" value="0.1uF"/>
<part name="R27" library="SparkFun-Resistors" deviceset="10KOHM-1/10W-1%(0603)" device="0603" value="10K"/>
<part name="SUPPLY12" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY13" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND41" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND42" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND43" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C16" library="samd21-temp" deviceset="15PF-50V(+-5%)(0402)" device="" value="15pF"/>
<part name="C17" library="samd21-temp" deviceset="15PF-50V(+-5%)(0402)" device="" value="15pF"/>
<part name="GND44" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY15" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND45" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND46" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U9" library="SparkFun-PowerIC" deviceset="V_REG_AP2112" device="K-3.3V" value="3.3V"/>
<part name="GND48" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND49" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY16" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="C18" library="SparkFun-Capacitors" deviceset="1.0UF-25V-+80/-20(0805)" device="&quot;" value="1.0uF"/>
<part name="C19" library="SparkFun-Capacitors" deviceset="2.2UF-10V-20%(0603)" device="" value="2.2uF"/>
<part name="JP22" library="SparkFun-Connectors" deviceset="CORTEX_DEBUG" device="SMD" value="CORTEX_DEBUGSMD"/>
<part name="SUPPLY19" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND52" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="JP23" library="SparkFun-Connectors" deviceset="USB-AB" device="CONN-11794"/>
<part name="R30" library="SparkFun-Resistors" deviceset="100KOHM-1/10W-1%(0603)" device="" value="100k"/>
<part name="R31" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="330"/>
<part name="SUPP" library="mike-temp" deviceset="M02" device="1X02_NO_SILK"/>
<part name="GND4" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY10" library="SparkFun-Aesthetics" deviceset="V_USB" device=""/>
<part name="SUPPLY18" library="SparkFun-Aesthetics" deviceset="V_USB" device=""/>
<part name="S3" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY3" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND13" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R10" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S4" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY14" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND17" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R20" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S5" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY17" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND23" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R21" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S6" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY20" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND28" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R23" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S7" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY21" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND30" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R25" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S8" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY25" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND31" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R28" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="S9" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-4" value="SWITCH-MOMENTARY-2SMD-4"/>
<part name="SUPPLY26" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND33" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R29" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="10k"/>
<part name="GND34" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R33" library="SparkFun-Resistors" deviceset="10KOHM-1/10W-1%(0603)" device="0603" value="10K"/>
<part name="ANT" library="SparkFun-Connectors" deviceset="M01" device="PTH_NO_SILK_YES_STOP"/>
<part name="Q1" library="SparkFun-DiscreteSemi" deviceset="MOSFET-NCHANNEL" device="AO3404A"/>
<part name="GND35" library="SparkFun" deviceset="GND" device=""/>
<part name="R18" library="SparkFun-Resistors" deviceset="330OHM1/10W1%(0603)" device="" value="330"/>
<part name="LASER" library="SparkFun-Connectors" deviceset="M02" device="1X02_NO_SILK"/>
<part name="SUPPLY23" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="U$1" library="SparkFun-Electromechanical" deviceset="TRACKBALL" device="MECH"/>
<part name="SUPPLY22" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY24" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY27" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY28" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY29" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY30" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY31" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY32" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY33" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY34" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="83.82" y="256.54" size="2.54" layer="94">Antenna length (1/4 wave): 915MHz: 3.07" = 78mm</text>
<wire x1="78.74" y1="266.7" x2="193.04" y2="266.7" width="0.1524" layer="94"/>
<wire x1="193.04" y1="266.7" x2="193.04" y2="198.12" width="0.1524" layer="94"/>
<wire x1="193.04" y1="198.12" x2="78.994" y2="198.12" width="0.1524" layer="94"/>
<wire x1="78.994" y1="198.12" x2="78.74" y2="198.374" width="0.1524" layer="94" curve="-90"/>
<wire x1="78.74" y1="198.374" x2="78.74" y2="266.7" width="0.1524" layer="94"/>
<text x="124.46" y="261.62" size="3.81" layer="94" ratio="15">RFM69</text>
<text x="208.28" y="307.34" size="1.778" layer="97">VCC Range: 2.5V - 5.25V</text>
<wire x1="203.2" y1="314.96" x2="284.48" y2="314.96" width="0.2032" layer="97" style="shortdash"/>
<wire x1="284.48" y1="314.96" x2="284.48" y2="266.7" width="0.2032" layer="97" style="shortdash"/>
<wire x1="284.48" y1="266.7" x2="284.48" y2="236.22" width="0.2032" layer="97" style="shortdash"/>
<wire x1="284.48" y1="236.22" x2="284.48" y2="190.5" width="0.2032" layer="97" style="shortdash"/>
<wire x1="284.48" y1="314.96" x2="347.98" y2="314.96" width="0.2032" layer="97" style="shortdash"/>
<text x="261.62" y="320.04" size="3.81" layer="94" ratio="15">TRACKBALL</text>
<wire x1="203.2" y1="327.66" x2="347.98" y2="327.66" width="0.1524" layer="94"/>
<wire x1="347.98" y1="327.66" x2="347.98" y2="190.5" width="0.1524" layer="94"/>
<wire x1="347.98" y1="190.5" x2="203.2" y2="190.5" width="0.1524" layer="94"/>
<wire x1="203.2" y1="190.5" x2="203.2" y2="327.66" width="0.1524" layer="94"/>
<wire x1="284.48" y1="266.7" x2="347.98" y2="266.7" width="0.2032" layer="97" style="shortdash"/>
<wire x1="284.48" y1="236.22" x2="347.98" y2="236.22" width="0.2032" layer="97" style="shortdash"/>
<wire x1="0" y1="129.54" x2="68.58" y2="129.54" width="0.2032" layer="97" style="shortdash"/>
<wire x1="68.58" y1="129.54" x2="68.58" y2="187.96" width="0.2032" layer="97" style="shortdash"/>
<wire x1="68.58" y1="129.54" x2="116.84" y2="129.54" width="0.2032" layer="97" style="shortdash"/>
<wire x1="116.84" y1="129.54" x2="116.84" y2="187.96" width="0.2032" layer="97" style="shortdash"/>
<wire x1="116.84" y1="129.54" x2="119.38" y2="129.54" width="0.2032" layer="97" style="shortdash"/>
<wire x1="119.38" y1="129.54" x2="193.04" y2="129.54" width="0.2032" layer="97" style="shortdash"/>
<wire x1="119.38" y1="35.56" x2="119.38" y2="86.36" width="0.2032" layer="97" style="shortdash"/>
<wire x1="119.38" y1="86.36" x2="193.04" y2="86.36" width="0.2032" layer="97" style="shortdash"/>
<text x="22.86" y="180.34" size="2.54" layer="94" font="vector" align="top-left">Supply Input</text>
<text x="71.12" y="182.88" size="2.54" layer="94" font="vector" align="top-left">Battery Input</text>
<text x="119.38" y="182.88" size="2.54" layer="94" font="vector" align="top-left">Shutoff Switch</text>
<text x="2.54" y="127" size="2.54" layer="94" font="vector" align="top-left">BQ24075 - 1.5A USB-Friendly LiPo Battery Charger 
&amp; Power-Path Management</text>
<text x="121.92" y="127" size="2.54" layer="94" font="vector" align="top-left">I2C Pull-Ups</text>
<text x="121.92" y="83.82" size="2.54" layer="94" font="vector" align="top-left">BQ27441-G1 Fuel Gauge</text>
<text x="119.38" y="152.4" size="1.27" layer="97" font="vector">SYSOFF controls supply 
to the V_OUT pin.
SYSOFF is active-high

HIGH=OFF
LOW=ON</text>
<text x="20.32" y="137.16" size="1.524" layer="97" font="vector" align="top-left">Supply range: 4.35-6.4V</text>
<text x="167.64" y="76.2" size="1.27" layer="97" font="vector" align="top-left">VDD is 1.8V
generated internally</text>
<text x="152.4" y="43.18" size="1.524" layer="97" font="vector" align="top-left">I2C ADDR: 0x55</text>
<text x="73.66" y="134.62" size="1.524" layer="97" font="vector" align="top-left">Battery Range: 3.3-4.2V</text>
<wire x1="0" y1="187.96" x2="193.04" y2="187.96" width="0.1524" layer="94"/>
<wire x1="193.04" y1="187.96" x2="193.04" y2="35.56" width="0.1524" layer="94"/>
<wire x1="193.04" y1="35.56" x2="193.04" y2="0" width="0.1524" layer="94"/>
<wire x1="193.04" y1="0" x2="88.9" y2="0" width="0.1524" layer="94"/>
<wire x1="88.9" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="187.96" width="0.1524" layer="94"/>
<text x="93.98" y="15.24" size="5.08" layer="94" ratio="15">Battery Charger/Monitor</text>
<wire x1="193.04" y1="35.56" x2="88.9" y2="35.56" width="0.1524" layer="94"/>
<wire x1="88.9" y1="35.56" x2="88.9" y2="0" width="0.1524" layer="94"/>
<wire x1="353.06" y1="0" x2="353.06" y2="63.5" width="0.2032" layer="97" style="longdash"/>
<wire x1="353.06" y1="63.5" x2="353.06" y2="111.76" width="0.2032" layer="97" style="longdash"/>
<wire x1="353.06" y1="111.76" x2="353.06" y2="180.34" width="0.2032" layer="97" style="longdash"/>
<wire x1="203.2" y1="111.76" x2="353.06" y2="111.76" width="0.2032" layer="97" style="longdash"/>
<wire x1="353.06" y1="111.76" x2="469.9" y2="111.76" width="0.2032" layer="97" style="longdash"/>
<wire x1="353.06" y1="63.5" x2="469.9" y2="63.5" width="0.2032" layer="97" style="longdash"/>
<text x="208.28" y="172.72" size="2.54" layer="94" align="top-left">USB / Voltage Regulator</text>
<text x="360.68" y="170.18" size="2.54" layer="94" align="top-left">Buttons</text>
<text x="375.92" y="109.22" size="2.54" layer="94" align="top-left">Cortex Debug/Program Connector</text>
<text x="208.28" y="109.22" size="2.54" layer="94" align="top-left">ATSAMD21G</text>
<text x="254" y="96.52" size="1.778" layer="97" align="center-left">ATSAMD21G18
VDD Range: 1.62-3.63V</text>
<text x="342.9" y="170.18" size="1.778" layer="97" rot="R180">VIN Range: 3.5-6.0V</text>
<text x="320.04" y="134.62" size="1.778" layer="97" align="top-left">AP2112K-3.3V
----------------
Iout (max): 600mA 
Vin (max): 6.5V
Vdrop (max): 250mV
Iq: 55uA</text>
<wire x1="203.2" y1="180.34" x2="353.06" y2="180.34" width="0.1524" layer="94"/>
<wire x1="353.06" y1="180.34" x2="353.06" y2="111.76" width="0.1524" layer="94"/>
<wire x1="353.06" y1="111.76" x2="469.9" y2="111.76" width="0.1524" layer="94"/>
<wire x1="469.9" y1="111.76" x2="469.9" y2="0" width="0.1524" layer="94"/>
<wire x1="469.9" y1="0" x2="203.2" y2="0" width="0.1524" layer="94"/>
<wire x1="203.2" y1="0" x2="203.2" y2="180.34" width="0.1524" layer="94"/>
<text x="368.3" y="38.1" size="5.08" layer="94" ratio="15">SAMD21G18</text>
<wire x1="119.38" y1="86.36" x2="119.38" y2="129.54" width="0.2032" layer="97" style="shortdash"/>
<wire x1="358.14" y1="231.14" x2="477.52" y2="231.14" width="0.1524" layer="94"/>
<wire x1="477.52" y1="231.14" x2="477.52" y2="116.84" width="0.1524" layer="94"/>
<wire x1="477.52" y1="116.84" x2="358.14" y2="116.84" width="0.1524" layer="94"/>
<wire x1="358.14" y1="116.84" x2="358.14" y2="231.14" width="0.1524" layer="94"/>
<wire x1="358.14" y1="177.8" x2="477.52" y2="177.8" width="0.2032" layer="97" style="longdash"/>
<text x="360.68" y="226.06" size="2.54" layer="94" align="top-left">Laser Output</text>
</plain>
<instances>
<instance part="U1" gate="G$1" x="154.94" y="226.06"/>
<instance part="C2" gate="G$1" x="104.14" y="226.06"/>
<instance part="SUPPLY1" gate="G$1" x="93.98" y="236.22"/>
<instance part="SUPPLY2" gate="G$1" x="104.14" y="236.22"/>
<instance part="GND1" gate="1" x="93.98" y="215.9"/>
<instance part="GND2" gate="1" x="104.14" y="215.9"/>
<instance part="GND3" gate="1" x="172.72" y="210.82"/>
<instance part="SUPPLY4" gate="G$1" x="137.16" y="241.3"/>
<instance part="C1" gate="G$1" x="93.98" y="226.06"/>
<instance part="D1" gate="G$1" x="299.72" y="281.94"/>
<instance part="D2" gate="G$1" x="309.88" y="281.94"/>
<instance part="D3" gate="G$1" x="320.04" y="281.94"/>
<instance part="D4" gate="G$1" x="330.2" y="281.94"/>
<instance part="GND5" gate="1" x="299.72" y="241.3"/>
<instance part="C3" gate="G$1" x="299.72" y="248.92"/>
<instance part="GND6" gate="1" x="309.88" y="241.3"/>
<instance part="C4" gate="G$1" x="309.88" y="248.92"/>
<instance part="GND7" gate="1" x="320.04" y="241.3"/>
<instance part="C5" gate="G$1" x="320.04" y="248.92"/>
<instance part="GND8" gate="1" x="330.2" y="241.3"/>
<instance part="C6" gate="G$1" x="330.2" y="248.92"/>
<instance part="R1" gate="G$1" x="330.2" y="292.1" rot="R270"/>
<instance part="R2" gate="G$1" x="320.04" y="292.1" rot="R270"/>
<instance part="R3" gate="G$1" x="309.88" y="292.1" rot="R270"/>
<instance part="R4" gate="G$1" x="299.72" y="292.1" rot="R270"/>
<instance part="GND9" gate="1" x="299.72" y="271.78"/>
<instance part="GND10" gate="1" x="309.88" y="271.78"/>
<instance part="GND11" gate="1" x="320.04" y="271.78"/>
<instance part="GND12" gate="1" x="330.2" y="271.78"/>
<instance part="S1" gate="G$1" x="314.96" y="205.74" smashed="yes" rot="R90">
<attribute name="NAME" x="312.42" y="203.2" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="U2" gate="G$1" x="238.76" y="279.4"/>
<instance part="U3" gate="G$1" x="238.76" y="256.54"/>
<instance part="U4" gate="G$1" x="238.76" y="233.68"/>
<instance part="U5" gate="G$1" x="238.76" y="210.82"/>
<instance part="GND14" gate="1" x="220.98" y="203.2"/>
<instance part="GND15" gate="1" x="314.96" y="195.58"/>
<instance part="R5" gate="G$1" x="314.96" y="220.98" rot="R270"/>
<instance part="R6" gate="G$1" x="254" y="287.02" rot="R270"/>
<instance part="R7" gate="G$1" x="254" y="264.16" rot="R270"/>
<instance part="R8" gate="G$1" x="254" y="241.3" rot="R270"/>
<instance part="R9" gate="G$1" x="254" y="218.44" rot="R270"/>
<instance part="JP10" gate="G$1" x="83.82" y="162.56" rot="R90"/>
<instance part="GND16" gate="1" x="91.44" y="144.78"/>
<instance part="U6" gate="G$1" x="157.48" y="60.96">
<attribute name="PROD_ID" x="157.48" y="60.96" size="1.524" layer="96" align="top-left" display="off"/>
</instance>
<instance part="R11" gate="G$1" x="137.16" y="68.58" smashed="yes" rot="R180">
<attribute name="NAME" x="132.08" y="69.8246" size="1.778" layer="95" font="vector"/>
<attribute name="VALUE" x="137.922" y="69.85" size="1.778" layer="96" font="vector"/>
<attribute name="PROD_ID" x="137.16" y="68.58" size="1.524" layer="96" rot="R180" align="top-left" display="off"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="144.78" y="71.12"/>
<instance part="GND18" gate="1" x="144.78" y="43.18"/>
<instance part="C7" gate="G$1" x="139.7" y="50.8" rot="MR0"/>
<instance part="GND20" gate="1" x="139.7" y="43.18"/>
<instance part="C8" gate="G$1" x="182.88" y="53.34">
<attribute name="PROD_ID" x="182.88" y="53.34" size="1.524" layer="96" align="top-left" display="off"/>
</instance>
<instance part="GND19" gate="1" x="182.88" y="45.72"/>
<instance part="R13" gate="G$1" x="144.78" y="101.6" rot="R90"/>
<instance part="R14" gate="G$1" x="154.94" y="101.6" rot="R90"/>
<instance part="U7" gate="G$1" x="55.88" y="78.74">
<attribute name="PROD_ID" x="55.88" y="78.74" size="1.524" layer="96" align="top-left" display="off"/>
</instance>
<instance part="GND21" gate="1" x="40.64" y="53.34"/>
<instance part="GND22" gate="1" x="17.78" y="53.34"/>
<instance part="SUPPLY5" gate="G$1" x="30.48" y="99.06"/>
<instance part="SUPPLY6" gate="G$1" x="40.64" y="99.06"/>
<instance part="R12" gate="G$1" x="33.02" y="66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="34.5186" y="69.85" size="1.778" layer="95" font="vector" rot="R270"/>
<attribute name="VALUE" x="29.464" y="69.85" size="1.778" layer="96" font="vector" rot="R270"/>
<attribute name="PROD_ID" x="33.02" y="66.04" size="1.27" layer="96" rot="R270" display="off"/>
</instance>
<instance part="GND24" gate="1" x="33.02" y="53.34"/>
<instance part="GND25" gate="1" x="20.32" y="88.9"/>
<instance part="SUPPLY8" gate="G$1" x="20.32" y="104.14"/>
<instance part="D5" gate="G$1" x="88.9" y="88.9"/>
<instance part="D6" gate="G$1" x="99.06" y="88.9"/>
<instance part="R15" gate="G$1" x="88.9" y="76.2" rot="R270"/>
<instance part="R16" gate="G$1" x="99.06" y="76.2" rot="R270"/>
<instance part="C9" gate="G$1" x="109.22" y="83.82"/>
<instance part="GND26" gate="1" x="109.22" y="76.2"/>
<instance part="GND27" gate="1" x="147.32" y="139.7"/>
<instance part="R17" gate="G$1" x="71.12" y="58.42" rot="R270"/>
<instance part="GND29" gate="1" x="71.12" y="48.26"/>
<instance part="SUPPLY9" gate="G$1" x="7.62" y="104.14"/>
<instance part="GND32" gate="1" x="7.62" y="88.9"/>
<instance part="C10" gate="G$1" x="7.62" y="96.52"/>
<instance part="S2" gate="1" x="139.7" y="147.32"/>
<instance part="R22" gate="G$1" x="17.78" y="68.58" smashed="yes" rot="R90">
<attribute name="NAME" x="21.3614" y="67.31" size="1.778" layer="95" font="vector" rot="R90"/>
<attribute name="VALUE" x="16.256" y="67.31" size="1.778" layer="96" font="vector" rot="R90"/>
</instance>
<instance part="SUPPLY11" gate="G$1" x="147.32" y="165.1"/>
<instance part="R24" gate="G$1" x="147.32" y="157.48" rot="R270"/>
<instance part="R26" gate="G$1" x="165.1" y="101.6" rot="R90"/>
<instance part="C11" gate="G$1" x="20.32" y="96.52"/>
<instance part="GND38" gate="1" x="25.4" y="53.34"/>
<instance part="Y1" gate="G$1" x="241.3" y="55.88" smashed="yes" rot="R90">
<attribute name="NAME" x="243.332" y="54.864" size="1.778" layer="95"/>
<attribute name="VALUE" x="243.332" y="58.928" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="U8" gate="G$1" x="281.94" y="43.18"/>
<instance part="GND40" gate="1" x="246.38" y="5.08"/>
<instance part="C12" gate="G$1" x="233.68" y="73.66" rot="MR0"/>
<instance part="C13" gate="G$1" x="246.38" y="73.66" rot="MR0"/>
<instance part="C14" gate="G$1" x="220.98" y="55.88" rot="MR0"/>
<instance part="C15" gate="G$1" x="335.28" y="81.28"/>
<instance part="R27" gate="G$1" x="246.38" y="93.98" rot="R90"/>
<instance part="SUPPLY12" gate="G$1" x="246.38" y="101.6"/>
<instance part="SUPPLY13" gate="G$1" x="233.68" y="101.6"/>
<instance part="GND41" gate="1" x="233.68" y="66.04"/>
<instance part="GND42" gate="1" x="246.38" y="66.04"/>
<instance part="GND43" gate="1" x="220.98" y="48.26"/>
<instance part="C16" gate="G$1" x="236.22" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="234.188" y="58.039" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="234.188" y="58.801" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="C17" gate="G$1" x="233.68" y="53.34" smashed="yes" rot="R270">
<attribute name="NAME" x="234.188" y="53.721" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="235.966" y="52.959" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="GND44" gate="1" x="228.6" y="48.26"/>
<instance part="SUPPLY15" gate="G$1" x="335.28" y="96.52"/>
<instance part="GND45" gate="1" x="335.28" y="73.66"/>
<instance part="GND46" gate="1" x="236.22" y="139.7"/>
<instance part="U9" gate="G$1" x="330.2" y="152.4"/>
<instance part="GND48" gate="1" x="317.5" y="139.7"/>
<instance part="GND49" gate="1" x="342.9" y="139.7"/>
<instance part="SUPPLY16" gate="G$1" x="340.36" y="160.02"/>
<instance part="C18" gate="G$1" x="309.88" y="149.86" rot="MR0"/>
<instance part="C19" gate="G$1" x="342.9" y="149.86"/>
<instance part="JP22" gate="G$1" x="406.4" y="86.36"/>
<instance part="SUPPLY19" gate="G$1" x="388.62" y="93.98"/>
<instance part="GND52" gate="1" x="388.62" y="76.2"/>
<instance part="JP23" gate="G$1" x="228.6" y="152.4" rot="R180"/>
<instance part="R30" gate="G$1" x="248.92" y="134.62" rot="R90"/>
<instance part="R31" gate="G$1" x="241.3" y="127"/>
<instance part="SUPP" gate="G$1" x="27.94" y="157.48" rot="MR180"/>
<instance part="GND4" gate="1" x="38.1" y="147.32"/>
<instance part="SUPPLY10" gate="G$1" x="38.1" y="162.56"/>
<instance part="SUPPLY18" gate="G$1" x="246.38" y="160.02"/>
<instance part="S3" gate="G$1" x="373.38" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="370.84" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="373.38" y="154.94"/>
<instance part="GND13" gate="1" x="373.38" y="121.92"/>
<instance part="R10" gate="G$1" x="373.38" y="132.08" rot="R90"/>
<instance part="S4" gate="G$1" x="388.62" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="386.08" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY14" gate="G$1" x="388.62" y="154.94"/>
<instance part="GND17" gate="1" x="388.62" y="121.92"/>
<instance part="R20" gate="G$1" x="388.62" y="132.08" rot="R90"/>
<instance part="S5" gate="G$1" x="403.86" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="401.32" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY17" gate="G$1" x="403.86" y="154.94"/>
<instance part="GND23" gate="1" x="403.86" y="121.92"/>
<instance part="R21" gate="G$1" x="403.86" y="132.08" rot="R90"/>
<instance part="S6" gate="G$1" x="419.1" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="416.56" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY20" gate="G$1" x="419.1" y="154.94"/>
<instance part="GND28" gate="1" x="419.1" y="121.92"/>
<instance part="R23" gate="G$1" x="419.1" y="132.08" rot="R90"/>
<instance part="S7" gate="G$1" x="434.34" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="431.8" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY21" gate="G$1" x="434.34" y="154.94"/>
<instance part="GND30" gate="1" x="434.34" y="121.92"/>
<instance part="R25" gate="G$1" x="434.34" y="132.08" rot="R90"/>
<instance part="S8" gate="G$1" x="452.12" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="449.58" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY25" gate="G$1" x="452.12" y="154.94"/>
<instance part="GND31" gate="1" x="452.12" y="121.92"/>
<instance part="R28" gate="G$1" x="452.12" y="132.08" rot="R90"/>
<instance part="S9" gate="G$1" x="469.9" y="147.32" smashed="yes" rot="R90">
<attribute name="NAME" x="467.36" y="144.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SUPPLY26" gate="G$1" x="469.9" y="154.94"/>
<instance part="GND33" gate="1" x="469.9" y="121.92"/>
<instance part="R29" gate="G$1" x="469.9" y="132.08" rot="R90"/>
<instance part="GND34" gate="1" x="73.66" y="71.12"/>
<instance part="R33" gate="G$1" x="78.74" y="86.36" rot="R270"/>
<instance part="ANT" gate="G$1" x="182.88" y="218.44" rot="R180"/>
<instance part="Q1" gate="G$1" x="414.02" y="195.58"/>
<instance part="GND35" gate="1" x="414.02" y="185.42"/>
<instance part="R18" gate="G$1" x="398.78" y="195.58" rot="R180"/>
<instance part="LASER" gate="G$1" x="426.72" y="208.28" rot="R180"/>
<instance part="SUPPLY23" gate="G$1" x="414.02" y="213.36"/>
<instance part="U$1" gate="G$1" x="264.16" y="307.34"/>
<instance part="SUPPLY22" gate="G$1" x="223.52" y="284.48"/>
<instance part="SUPPLY24" gate="G$1" x="254" y="294.64"/>
<instance part="SUPPLY27" gate="G$1" x="254" y="271.78"/>
<instance part="SUPPLY28" gate="G$1" x="254" y="248.92"/>
<instance part="SUPPLY29" gate="G$1" x="254" y="226.06"/>
<instance part="SUPPLY30" gate="G$1" x="299.72" y="256.54"/>
<instance part="SUPPLY31" gate="G$1" x="309.88" y="256.54"/>
<instance part="SUPPLY32" gate="G$1" x="320.04" y="256.54"/>
<instance part="SUPPLY33" gate="G$1" x="330.2" y="256.54"/>
<instance part="SUPPLY34" gate="G$1" x="314.96" y="228.6"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND@2"/>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="GND@1"/>
<wire x1="170.18" y1="215.9" x2="172.72" y2="215.9" width="0.1524" layer="91"/>
<wire x1="170.18" y1="220.98" x2="172.72" y2="220.98" width="0.1524" layer="91"/>
<wire x1="172.72" y1="220.98" x2="172.72" y2="215.9" width="0.1524" layer="91"/>
<wire x1="172.72" y1="213.36" x2="172.72" y2="215.9" width="0.1524" layer="91"/>
<junction x="172.72" y="215.9"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="93.98" y1="218.44" x2="93.98" y2="223.52" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="104.14" y1="218.44" x2="104.14" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="299.72" y1="243.84" x2="299.72" y2="246.38" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="309.88" y1="243.84" x2="309.88" y2="246.38" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="320.04" y1="243.84" x2="320.04" y2="246.38" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="330.2" y1="243.84" x2="330.2" y2="246.38" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="299.72" y1="274.32" x2="299.72" y2="276.86" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="309.88" y1="274.32" x2="309.88" y2="276.86" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="320.04" y1="274.32" x2="320.04" y2="276.86" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="C"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="330.2" y1="274.32" x2="330.2" y2="276.86" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="C"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="226.06" y1="208.28" x2="220.98" y2="208.28" width="0.1524" layer="91"/>
<wire x1="220.98" y1="208.28" x2="220.98" y2="205.74" width="0.1524" layer="91"/>
<wire x1="226.06" y1="231.14" x2="220.98" y2="231.14" width="0.1524" layer="91"/>
<wire x1="220.98" y1="231.14" x2="220.98" y2="208.28" width="0.1524" layer="91"/>
<wire x1="226.06" y1="254" x2="220.98" y2="254" width="0.1524" layer="91"/>
<wire x1="220.98" y1="254" x2="220.98" y2="231.14" width="0.1524" layer="91"/>
<wire x1="226.06" y1="276.86" x2="220.98" y2="276.86" width="0.1524" layer="91"/>
<wire x1="220.98" y1="276.86" x2="220.98" y2="254" width="0.1524" layer="91"/>
<junction x="220.98" y="208.28"/>
<junction x="220.98" y="231.14"/>
<junction x="220.98" y="254"/>
<pinref part="U5" gate="G$1" pin="GND"/>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<pinref part="U3" gate="G$1" pin="GND"/>
<pinref part="U2" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="314.96" y1="200.66" x2="314.96" y2="198.12" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="1"/>
<pinref part="GND15" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JP10" gate="G$1" pin="-"/>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="88.9" y1="162.56" x2="91.44" y2="162.56" width="0.1524" layer="91"/>
<wire x1="91.44" y1="162.56" x2="91.44" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="VSS"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="147.32" y1="55.88" x2="144.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="144.78" y1="55.88" x2="144.78" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="PWPD"/>
<wire x1="144.78" y1="53.34" x2="144.78" y2="45.72" width="0.1524" layer="91"/>
<wire x1="147.32" y1="53.34" x2="144.78" y2="53.34" width="0.1524" layer="91"/>
<junction x="144.78" y="53.34"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="139.7" y1="45.72" x2="139.7" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="182.88" y1="48.26" x2="182.88" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="EP"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="43.18" y1="66.04" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="66.04" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U7" gate="G$1" pin="VSS"/>
<wire x1="43.18" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
<junction x="40.64" y="66.04"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="GND24" gate="1" pin="GND"/>
<wire x1="33.02" y1="55.88" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="20.32" y1="91.44" x2="20.32" y2="93.98" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="GND26" gate="1" pin="GND"/>
<wire x1="109.22" y1="78.74" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="71.12" y1="50.8" x2="71.12" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND32" gate="1" pin="GND"/>
<wire x1="7.62" y1="91.44" x2="7.62" y2="93.98" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="144.78" y1="144.78" x2="147.32" y2="144.78" width="0.1524" layer="91"/>
<wire x1="147.32" y1="144.78" x2="147.32" y2="142.24" width="0.1524" layer="91"/>
<pinref part="S2" gate="1" pin="S"/>
<pinref part="GND27" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="GND@42"/>
<pinref part="GND40" gate="1" pin="GND"/>
<wire x1="248.92" y1="12.7" x2="246.38" y2="12.7" width="0.1524" layer="91"/>
<wire x1="246.38" y1="12.7" x2="246.38" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="GND@35"/>
<wire x1="248.92" y1="15.24" x2="246.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="246.38" y1="15.24" x2="246.38" y2="12.7" width="0.1524" layer="91"/>
<junction x="246.38" y="12.7"/>
<pinref part="U8" gate="G$1" pin="GND@18"/>
<wire x1="248.92" y1="17.78" x2="246.38" y2="17.78" width="0.1524" layer="91"/>
<wire x1="246.38" y1="17.78" x2="246.38" y2="15.24" width="0.1524" layer="91"/>
<junction x="246.38" y="15.24"/>
<pinref part="U8" gate="G$1" pin="GNDANA"/>
<wire x1="248.92" y1="22.86" x2="246.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="246.38" y1="22.86" x2="246.38" y2="17.78" width="0.1524" layer="91"/>
<junction x="246.38" y="17.78"/>
</segment>
<segment>
<pinref part="C12" gate="G$1" pin="2"/>
<pinref part="GND41" gate="1" pin="GND"/>
<wire x1="233.68" y1="68.58" x2="233.68" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C13" gate="G$1" pin="2"/>
<pinref part="GND42" gate="1" pin="GND"/>
<wire x1="246.38" y1="71.12" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="2"/>
<pinref part="GND43" gate="1" pin="GND"/>
<wire x1="220.98" y1="50.8" x2="220.98" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="231.14" y1="53.34" x2="228.6" y2="53.34" width="0.1524" layer="91"/>
<pinref part="GND44" gate="1" pin="GND"/>
<wire x1="228.6" y1="53.34" x2="228.6" y2="50.8" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="231.14" y1="58.42" x2="228.6" y2="58.42" width="0.1524" layer="91"/>
<wire x1="228.6" y1="58.42" x2="228.6" y2="53.34" width="0.1524" layer="91"/>
<junction x="228.6" y="53.34"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<pinref part="GND45" gate="1" pin="GND"/>
<wire x1="335.28" y1="76.2" x2="335.28" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND46" gate="1" pin="GND"/>
<wire x1="233.68" y1="147.32" x2="236.22" y2="147.32" width="0.1524" layer="91"/>
<wire x1="236.22" y1="147.32" x2="236.22" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP23" gate="G$1" pin="GND"/>
<pinref part="JP23" gate="G$1" pin="SHIELD"/>
<wire x1="233.68" y1="160.02" x2="236.22" y2="160.02" width="0.1524" layer="91"/>
<wire x1="236.22" y1="160.02" x2="236.22" y2="147.32" width="0.1524" layer="91"/>
<junction x="236.22" y="147.32"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="GND"/>
<pinref part="GND48" gate="1" pin="GND"/>
<wire x1="320.04" y1="147.32" x2="317.5" y2="147.32" width="0.1524" layer="91"/>
<wire x1="317.5" y1="147.32" x2="317.5" y2="144.78" width="0.1524" layer="91"/>
<wire x1="317.5" y1="144.78" x2="317.5" y2="142.24" width="0.1524" layer="91"/>
<wire x1="309.88" y1="147.32" x2="309.88" y2="144.78" width="0.1524" layer="91"/>
<wire x1="309.88" y1="144.78" x2="317.5" y2="144.78" width="0.1524" layer="91"/>
<junction x="317.5" y="144.78"/>
<pinref part="C18" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND49" gate="1" pin="GND"/>
<wire x1="342.9" y1="142.24" x2="342.9" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="JP22" gate="G$1" pin="GND@3"/>
<wire x1="391.16" y1="88.9" x2="388.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="388.62" y1="88.9" x2="388.62" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP22" gate="G$1" pin="GND@5"/>
<wire x1="388.62" y1="86.36" x2="388.62" y2="78.74" width="0.1524" layer="91"/>
<wire x1="391.16" y1="86.36" x2="388.62" y2="86.36" width="0.1524" layer="91"/>
<junction x="388.62" y="86.36"/>
<pinref part="GND52" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="SUPP" gate="G$1" pin="2"/>
<wire x1="35.56" y1="154.94" x2="38.1" y2="154.94" width="0.1524" layer="91"/>
<wire x1="38.1" y1="154.94" x2="38.1" y2="149.86" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="TMR"/>
<wire x1="43.18" y1="78.74" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
<wire x1="25.4" y1="55.88" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
<pinref part="GND38" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="373.38" y1="124.46" x2="373.38" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R20" gate="G$1" pin="1"/>
<pinref part="GND17" gate="1" pin="GND"/>
<wire x1="388.62" y1="124.46" x2="388.62" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R21" gate="G$1" pin="1"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="403.86" y1="124.46" x2="403.86" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="419.1" y1="124.46" x2="419.1" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R25" gate="G$1" pin="1"/>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="434.34" y1="124.46" x2="434.34" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R28" gate="G$1" pin="1"/>
<pinref part="GND31" gate="1" pin="GND"/>
<wire x1="452.12" y1="124.46" x2="452.12" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R29" gate="G$1" pin="1"/>
<pinref part="GND33" gate="1" pin="GND"/>
<wire x1="469.9" y1="124.46" x2="469.9" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="EN2"/>
<pinref part="GND34" gate="1" pin="GND"/>
<wire x1="68.58" y1="83.82" x2="73.66" y2="83.82" width="0.1524" layer="91"/>
<wire x1="73.66" y1="83.82" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND35" gate="1" pin="GND"/>
<pinref part="Q1" gate="G$1" pin="S"/>
<wire x1="414.02" y1="187.96" x2="414.02" y2="190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="SUPPLY2" gate="G$1" pin="3.3V"/>
<wire x1="104.14" y1="236.22" x2="104.14" y2="231.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="3.3V"/>
<wire x1="93.98" y1="236.22" x2="93.98" y2="231.14" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="137.16" y1="238.76" x2="137.16" y2="241.3" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="G$1" pin="3.3V"/>
<pinref part="U1" gate="G$1" pin="3.3V"/>
<wire x1="139.7" y1="238.76" x2="137.16" y2="238.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R27" gate="G$1" pin="2"/>
<pinref part="SUPPLY12" gate="G$1" pin="3.3V"/>
<wire x1="246.38" y1="101.6" x2="246.38" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="VDDIN"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="248.92" y1="83.82" x2="233.68" y2="83.82" width="0.1524" layer="91"/>
<wire x1="233.68" y1="83.82" x2="233.68" y2="78.74" width="0.1524" layer="91"/>
<pinref part="SUPPLY13" gate="G$1" pin="3.3V"/>
<wire x1="233.68" y1="83.82" x2="233.68" y2="101.6" width="0.1524" layer="91"/>
<junction x="233.68" y="83.82"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="VDDIO@36"/>
<wire x1="317.5" y1="83.82" x2="327.66" y2="83.82" width="0.1524" layer="91"/>
<wire x1="327.66" y1="83.82" x2="327.66" y2="86.36" width="0.1524" layer="91"/>
<wire x1="327.66" y1="86.36" x2="327.66" y2="88.9" width="0.1524" layer="91"/>
<wire x1="327.66" y1="88.9" x2="335.28" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="VDDIO@17"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="335.28" y1="88.9" x2="335.28" y2="86.36" width="0.1524" layer="91"/>
<junction x="335.28" y="88.9"/>
<pinref part="SUPPLY15" gate="G$1" pin="3.3V"/>
<wire x1="335.28" y1="88.9" x2="335.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="317.5" y1="86.36" x2="327.66" y2="86.36" width="0.1524" layer="91"/>
<junction x="327.66" y="86.36"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="OUT"/>
<wire x1="337.82" y1="157.48" x2="340.36" y2="157.48" width="0.1524" layer="91"/>
<wire x1="340.36" y1="157.48" x2="342.9" y2="157.48" width="0.1524" layer="91"/>
<wire x1="342.9" y1="157.48" x2="342.9" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SUPPLY16" gate="G$1" pin="3.3V"/>
<wire x1="340.36" y1="157.48" x2="340.36" y2="160.02" width="0.1524" layer="91"/>
<junction x="340.36" y="157.48"/>
<pinref part="C19" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="JP22" gate="G$1" pin="VCC"/>
<wire x1="391.16" y1="91.44" x2="388.62" y2="91.44" width="0.1524" layer="91"/>
<wire x1="388.62" y1="91.44" x2="388.62" y2="93.98" width="0.1524" layer="91"/>
<pinref part="SUPPLY19" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="373.38" y1="154.94" x2="373.38" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="3.3V"/>
<pinref part="S3" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="388.62" y1="154.94" x2="388.62" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY14" gate="G$1" pin="3.3V"/>
<pinref part="S4" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="403.86" y1="154.94" x2="403.86" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY17" gate="G$1" pin="3.3V"/>
<pinref part="S5" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="419.1" y1="154.94" x2="419.1" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY20" gate="G$1" pin="3.3V"/>
<pinref part="S6" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="434.34" y1="154.94" x2="434.34" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY21" gate="G$1" pin="3.3V"/>
<pinref part="S7" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="452.12" y1="154.94" x2="452.12" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY25" gate="G$1" pin="3.3V"/>
<pinref part="S8" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="469.9" y1="154.94" x2="469.9" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SUPPLY26" gate="G$1" pin="3.3V"/>
<pinref part="S9" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="226.06" y1="281.94" x2="223.52" y2="281.94" width="0.1524" layer="91"/>
<wire x1="223.52" y1="281.94" x2="223.52" y2="284.48" width="0.1524" layer="91"/>
<wire x1="226.06" y1="259.08" x2="223.52" y2="259.08" width="0.1524" layer="91"/>
<wire x1="223.52" y1="259.08" x2="223.52" y2="281.94" width="0.1524" layer="91"/>
<wire x1="226.06" y1="236.22" x2="223.52" y2="236.22" width="0.1524" layer="91"/>
<wire x1="223.52" y1="236.22" x2="223.52" y2="259.08" width="0.1524" layer="91"/>
<wire x1="226.06" y1="213.36" x2="223.52" y2="213.36" width="0.1524" layer="91"/>
<wire x1="223.52" y1="213.36" x2="223.52" y2="236.22" width="0.1524" layer="91"/>
<junction x="223.52" y="281.94"/>
<junction x="223.52" y="259.08"/>
<junction x="223.52" y="236.22"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
<pinref part="U3" gate="G$1" pin="VCC"/>
<pinref part="U4" gate="G$1" pin="VCC"/>
<pinref part="U5" gate="G$1" pin="VCC"/>
<pinref part="SUPPLY22" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="254" y1="294.64" x2="254" y2="292.1" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="SUPPLY24" gate="G$1" pin="3.3V"/>
<wire x1="254" y1="294.64" x2="254" y2="292.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="254" y1="271.78" x2="254" y2="269.24" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="SUPPLY27" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="254" y1="248.92" x2="254" y2="246.38" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="SUPPLY28" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="254" y1="226.06" x2="254" y2="223.52" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="SUPPLY29" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="299.72" y1="256.54" x2="299.72" y2="254" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="SUPPLY30" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="309.88" y1="256.54" x2="309.88" y2="254" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="SUPPLY31" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="320.04" y1="256.54" x2="320.04" y2="254" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="SUPPLY32" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="330.2" y1="256.54" x2="330.2" y2="254" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="SUPPLY33" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="314.96" y1="226.06" x2="314.96" y2="228.6" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="SUPPLY34" gate="G$1" pin="3.3V"/>
</segment>
</net>
<net name="RF_MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MISO"/>
<wire x1="134.62" y1="231.14" x2="139.7" y2="231.14" width="0.1524" layer="91"/>
<label x="134.62" y="231.14" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA19(SER1:3+)"/>
<wire x1="317.5" y1="50.8" x2="320.04" y2="50.8" width="0.1524" layer="91"/>
<label x="320.04" y="50.8" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RF_MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MOSI"/>
<wire x1="134.62" y1="228.6" x2="139.7" y2="228.6" width="0.1524" layer="91"/>
<label x="134.62" y="228.6" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA16(I2C/SER1:0+)"/>
<wire x1="317.5" y1="58.42" x2="320.04" y2="58.42" width="0.1524" layer="91"/>
<label x="320.04" y="58.42" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RF_SCK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="134.62" y1="226.06" x2="139.7" y2="226.06" width="0.1524" layer="91"/>
<label x="134.62" y="226.06" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA17(I2C/SER1:1+)"/>
<wire x1="317.5" y1="55.88" x2="320.04" y2="55.88" width="0.1524" layer="91"/>
<label x="320.04" y="55.88" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="RESET"/>
<wire x1="134.62" y1="215.9" x2="139.7" y2="215.9" width="0.1524" layer="91"/>
<label x="134.62" y="215.9" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="ANT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ANT"/>
<wire x1="175.26" y1="218.44" x2="170.18" y2="218.44" width="0.1524" layer="91"/>
<pinref part="ANT" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="320.04" y1="284.48" x2="320.04" y2="287.02" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="309.88" y1="284.48" x2="309.88" y2="287.02" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="299.72" y1="284.48" x2="299.72" y2="287.02" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="R4" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="330.2" y1="287.02" x2="330.2" y2="284.48" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="A"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="BLU_PWM" class="0">
<segment>
<wire x1="299.72" y1="297.18" x2="299.72" y2="302.26" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<label x="299.72" y="302.26" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA14(XIN/SER2:2+)"/>
<wire x1="317.5" y1="63.5" x2="320.04" y2="63.5" width="0.1524" layer="91"/>
<label x="320.04" y="63.5" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RED_PWM" class="0">
<segment>
<wire x1="309.88" y1="297.18" x2="309.88" y2="302.26" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<label x="309.88" y="302.26" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA15(XOUT/SER2:3+)"/>
<wire x1="317.5" y1="60.96" x2="320.04" y2="60.96" width="0.1524" layer="91"/>
<label x="320.04" y="60.96" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="GRN_PWM" class="0">
<segment>
<wire x1="320.04" y1="297.18" x2="320.04" y2="302.26" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<label x="320.04" y="302.26" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA20(SER5:2+)"/>
<wire x1="317.5" y1="48.26" x2="320.04" y2="48.26" width="0.1524" layer="91"/>
<label x="320.04" y="48.26" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="WHT_PWM" class="0">
<segment>
<wire x1="330.2" y1="297.18" x2="330.2" y2="302.26" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<label x="330.2" y="302.26" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA21(SER5:3+)"/>
<wire x1="317.5" y1="45.72" x2="320.04" y2="45.72" width="0.1524" layer="91"/>
<label x="320.04" y="45.72" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="MDL_MOUSE" class="0">
<segment>
<wire x1="314.96" y1="215.9" x2="314.96" y2="213.36" width="0.1524" layer="91"/>
<wire x1="314.96" y1="213.36" x2="314.96" y2="210.82" width="0.1524" layer="91"/>
<wire x1="314.96" y1="213.36" x2="317.5" y2="213.36" width="0.1524" layer="91"/>
<junction x="314.96" y="213.36"/>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="S1" gate="G$1" pin="2"/>
<label x="317.5" y="213.36" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA06(AIN6/SER0:2/TC1:0)"/>
<wire x1="248.92" y1="40.64" x2="246.38" y2="40.64" width="0.1524" layer="91"/>
<label x="246.38" y="40.64" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="HALL_UP" class="0">
<segment>
<wire x1="251.46" y1="279.4" x2="254" y2="279.4" width="0.1524" layer="91"/>
<wire x1="254" y1="279.4" x2="264.16" y2="279.4" width="0.1524" layer="91"/>
<wire x1="254" y1="281.94" x2="254" y2="279.4" width="0.1524" layer="91"/>
<junction x="254" y="279.4"/>
<pinref part="U2" gate="G$1" pin="OUT"/>
<pinref part="R6" gate="G$1" pin="2"/>
<label x="264.16" y="279.4" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA07(AIN7/SER0:3/TC1:1)"/>
<wire x1="248.92" y1="38.1" x2="246.38" y2="38.1" width="0.1524" layer="91"/>
<label x="246.38" y="38.1" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="HALL_DWN" class="0">
<segment>
<wire x1="251.46" y1="256.54" x2="254" y2="256.54" width="0.1524" layer="91"/>
<wire x1="254" y1="256.54" x2="264.16" y2="256.54" width="0.1524" layer="91"/>
<wire x1="254" y1="259.08" x2="254" y2="256.54" width="0.1524" layer="91"/>
<junction x="254" y="256.54"/>
<pinref part="U3" gate="G$1" pin="OUT"/>
<pinref part="R7" gate="G$1" pin="2"/>
<label x="264.16" y="256.54" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PB02(AIN10/SER5:0)"/>
<wire x1="248.92" y1="35.56" x2="246.38" y2="35.56" width="0.1524" layer="91"/>
<label x="246.38" y="35.56" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="HALL_LFT" class="0">
<segment>
<wire x1="251.46" y1="233.68" x2="254" y2="233.68" width="0.1524" layer="91"/>
<wire x1="254" y1="233.68" x2="264.16" y2="233.68" width="0.1524" layer="91"/>
<wire x1="254" y1="236.22" x2="254" y2="233.68" width="0.1524" layer="91"/>
<junction x="254" y="233.68"/>
<pinref part="U4" gate="G$1" pin="OUT"/>
<pinref part="R8" gate="G$1" pin="2"/>
<label x="264.16" y="233.68" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PB03(AIN11/SER5:1)"/>
<wire x1="248.92" y1="33.02" x2="246.38" y2="33.02" width="0.1524" layer="91"/>
<label x="246.38" y="33.02" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="HALL_RHT" class="0">
<segment>
<wire x1="251.46" y1="210.82" x2="254" y2="210.82" width="0.1524" layer="91"/>
<wire x1="254" y1="210.82" x2="264.16" y2="210.82" width="0.1524" layer="91"/>
<wire x1="254" y1="213.36" x2="254" y2="210.82" width="0.1524" layer="91"/>
<junction x="254" y="210.82"/>
<pinref part="U5" gate="G$1" pin="OUT"/>
<pinref part="R9" gate="G$1" pin="2"/>
<label x="264.16" y="210.82" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PB08(AIN2/SER4:0/TC4:0)"/>
<wire x1="248.92" y1="30.48" x2="246.38" y2="30.48" width="0.1524" layer="91"/>
<label x="246.38" y="30.48" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="V_BATT" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="SRN"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="147.32" y1="68.58" x2="144.78" y2="68.58" width="0.1524" layer="91"/>
<wire x1="144.78" y1="68.58" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
<wire x1="144.78" y1="68.58" x2="144.78" y2="71.12" width="0.1524" layer="91"/>
<junction x="144.78" y="68.58"/>
<pinref part="SUPPLY7" gate="G$1" pin="V_BATT"/>
</segment>
<segment>
<pinref part="U7" gate="G$1" pin="BAT"/>
<wire x1="43.18" y1="86.36" x2="30.48" y2="86.36" width="0.1524" layer="91"/>
<wire x1="30.48" y1="86.36" x2="30.48" y2="99.06" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="G$1" pin="V_BATT"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="G$1" pin="V_BATT"/>
<wire x1="20.32" y1="104.14" x2="20.32" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="R24" gate="G$1" pin="1"/>
<pinref part="SUPPLY11" gate="G$1" pin="V_BATT"/>
<wire x1="147.32" y1="165.1" x2="147.32" y2="162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LASER" gate="G$1" pin="1"/>
<wire x1="419.1" y1="208.28" x2="414.02" y2="208.28" width="0.1524" layer="91"/>
<wire x1="414.02" y1="208.28" x2="414.02" y2="213.36" width="0.1524" layer="91"/>
<pinref part="SUPPLY23" gate="G$1" pin="V_BATT"/>
</segment>
</net>
<net name="V_USB" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="IN"/>
<wire x1="43.18" y1="91.44" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="40.64" y1="91.44" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
<pinref part="SUPPLY6" gate="G$1" pin="V_USB"/>
</segment>
<segment>
<pinref part="SUPPLY9" gate="G$1" pin="V_USB"/>
<wire x1="7.62" y1="104.14" x2="7.62" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPP" gate="G$1" pin="1"/>
<wire x1="35.56" y1="157.48" x2="38.1" y2="157.48" width="0.1524" layer="91"/>
<wire x1="38.1" y1="157.48" x2="38.1" y2="162.56" width="0.1524" layer="91"/>
<pinref part="SUPPLY10" gate="G$1" pin="V_USB"/>
</segment>
<segment>
<pinref part="JP23" gate="G$1" pin="VBUS"/>
<pinref part="SUPPLY18" gate="G$1" pin="V_USB"/>
<wire x1="246.38" y1="157.48" x2="233.68" y2="157.48" width="0.1524" layer="91"/>
<wire x1="246.38" y1="160.02" x2="246.38" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BATTERY_IN" class="0">
<segment>
<pinref part="JP10" gate="G$1" pin="+"/>
<wire x1="88.9" y1="165.1" x2="96.52" y2="165.1" width="0.1524" layer="91"/>
<label x="96.52" y="165.1" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="SRP"/>
<wire x1="147.32" y1="66.04" x2="144.78" y2="66.04" width="0.1524" layer="91"/>
<wire x1="144.78" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="129.54" y1="66.04" x2="129.54" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="129.54" y1="68.58" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="144.78" y1="66.04" x2="144.78" y2="60.96" width="0.1524" layer="91"/>
<junction x="144.78" y="66.04"/>
<pinref part="U6" gate="G$1" pin="BAT"/>
<wire x1="144.78" y1="60.96" x2="147.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="144.78" y1="60.96" x2="139.7" y2="60.96" width="0.1524" layer="91"/>
<junction x="144.78" y="60.96"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="139.7" y1="55.88" x2="139.7" y2="60.96" width="0.1524" layer="91"/>
<junction x="139.7" y="60.96"/>
<label x="137.16" y="60.96" size="1.524" layer="95" font="vector" rot="R180" xref="yes"/>
<wire x1="139.7" y1="60.96" x2="137.16" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1.8V" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="VDD"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="170.18" y1="68.58" x2="182.88" y2="68.58" width="0.1524" layer="91"/>
<wire x1="182.88" y1="68.58" x2="182.88" y2="58.42" width="0.1524" layer="91"/>
<wire x1="185.42" y1="68.58" x2="182.88" y2="68.58" width="0.1524" layer="91"/>
<junction x="182.88" y="68.58"/>
<label x="185.42" y="68.58" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
</net>
<net name="GPOUT" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="GPOUT"/>
<wire x1="170.18" y1="55.88" x2="172.72" y2="55.88" width="0.1524" layer="91"/>
<label x="172.72" y="55.88" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<wire x1="165.1" y1="96.52" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="165.1" y1="93.98" x2="167.64" y2="93.98" width="0.1524" layer="91"/>
<label x="167.64" y="93.98" size="1.27" layer="95" font="vector" xref="yes"/>
<pinref part="R26" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA05(AIN5/SER0:1/TC0:1)"/>
<wire x1="248.92" y1="43.18" x2="246.38" y2="43.18" width="0.1524" layer="91"/>
<label x="246.38" y="43.18" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="TS" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="TS"/>
<wire x1="17.78" y1="83.82" x2="17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="43.18" y1="83.82" x2="17.78" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="BIN"/>
<label x="172.72" y="53.34" size="1.27" layer="95" font="vector" xref="yes"/>
<wire x1="170.18" y1="53.34" x2="172.72" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ILIM" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="ILIM"/>
<wire x1="43.18" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="33.02" y1="71.12" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="1"/>
</segment>
</net>
<net name="EN1" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="EN1"/>
<wire x1="68.58" y1="81.28" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<pinref part="R33" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SYSOFF" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="SYSOFF"/>
<wire x1="68.58" y1="78.74" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<label x="76.2" y="78.74" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<wire x1="137.16" y1="147.32" x2="134.62" y2="147.32" width="0.1524" layer="91"/>
<label x="134.62" y="147.32" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
<pinref part="S2" gate="1" pin="P"/>
</segment>
</net>
<net name="!CE!" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="!CE!"/>
<wire x1="68.58" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<label x="76.2" y="76.2" size="1.27" layer="95" font="vector" xref="yes"/>
<wire x1="71.12" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
<wire x1="71.12" y1="76.2" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<junction x="71.12" y="76.2"/>
<pinref part="R17" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="C"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="88.9" y1="83.82" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="D6" gate="G$1" pin="C"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="99.06" y1="83.82" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="!CHG!" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="!CHG!"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="68.58" y1="68.58" x2="88.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="88.9" y1="68.58" x2="88.9" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="!PGOOD!" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="!PGOOD!"/>
<wire x1="68.58" y1="66.04" x2="99.06" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="99.06" y1="66.04" x2="99.06" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="144.78" y1="149.86" x2="147.32" y2="149.86" width="0.1524" layer="91"/>
<wire x1="147.32" y1="149.86" x2="147.32" y2="152.4" width="0.1524" layer="91"/>
<pinref part="S2" gate="1" pin="O"/>
<pinref part="R24" gate="G$1" pin="2"/>
</segment>
</net>
<net name="OUT" class="0">
<segment>
<pinref part="U7" gate="G$1" pin="OUT"/>
<wire x1="68.58" y1="91.44" x2="73.66" y2="91.44" width="0.1524" layer="91"/>
<wire x1="73.66" y1="91.44" x2="73.66" y2="93.98" width="0.1524" layer="91"/>
<wire x1="73.66" y1="93.98" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<label x="111.76" y="93.98" size="1.27" layer="95" font="vector" xref="yes"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="78.74" y1="93.98" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<wire x1="88.9" y1="93.98" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="109.22" y2="93.98" width="0.1524" layer="91"/>
<wire x1="109.22" y1="93.98" x2="111.76" y2="93.98" width="0.1524" layer="91"/>
<wire x1="88.9" y1="91.44" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<junction x="88.9" y="93.98"/>
<pinref part="D6" gate="G$1" pin="A"/>
<wire x1="99.06" y1="91.44" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<junction x="99.06" y="93.98"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="109.22" y1="88.9" x2="109.22" y2="93.98" width="0.1524" layer="91"/>
<junction x="109.22" y="93.98"/>
<wire x1="78.74" y1="91.44" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R33" gate="G$1" pin="1"/>
<junction x="78.74" y="93.98"/>
</segment>
<segment>
<wire x1="154.94" y1="111.76" x2="157.48" y2="111.76" width="0.1524" layer="91"/>
<label x="157.48" y="111.76" size="1.27" layer="95" font="vector" xref="yes"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="144.78" y1="109.22" x2="144.78" y2="106.68" width="0.1524" layer="91"/>
<wire x1="144.78" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<wire x1="154.94" y1="109.22" x2="154.94" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="154.94" y1="106.68" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<junction x="154.94" y="109.22"/>
<wire x1="165.1" y1="106.68" x2="165.1" y2="109.22" width="0.1524" layer="91"/>
<wire x1="165.1" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<junction x="154.94" y="109.22"/>
<pinref part="R26" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="309.88" y1="154.94" x2="309.88" y2="157.48" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="IN"/>
<wire x1="309.88" y1="157.48" x2="314.96" y2="157.48" width="0.1524" layer="91"/>
<wire x1="314.96" y1="157.48" x2="320.04" y2="157.48" width="0.1524" layer="91"/>
<junction x="309.88" y="157.48"/>
<pinref part="U9" gate="G$1" pin="EN"/>
<wire x1="320.04" y1="152.4" x2="314.96" y2="152.4" width="0.1524" layer="91"/>
<wire x1="314.96" y1="152.4" x2="314.96" y2="157.48" width="0.1524" layer="91"/>
<junction x="314.96" y="157.48"/>
<wire x1="302.26" y1="157.48" x2="309.88" y2="157.48" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="1"/>
<label x="302.26" y="157.48" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="248.92" y1="139.7" x2="248.92" y2="142.24" width="0.1524" layer="91"/>
<label x="248.92" y="142.24" size="1.27" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="VDDCORE" class="0">
<segment>
<pinref part="C13" gate="G$1" pin="1"/>
<pinref part="U8" gate="G$1" pin="VDDCORE"/>
<wire x1="248.92" y1="81.28" x2="246.38" y2="81.28" width="0.1524" layer="91"/>
<wire x1="246.38" y1="81.28" x2="246.38" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDDANA" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="VDDANA"/>
<wire x1="248.92" y1="63.5" x2="220.98" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="220.98" y1="60.96" x2="220.98" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA00(XIN32/SER1:0/TC2:0)"/>
<pinref part="Y1" gate="G$1" pin="2"/>
<wire x1="248.92" y1="58.42" x2="241.3" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="241.3" y1="58.42" x2="238.76" y2="58.42" width="0.1524" layer="91"/>
<junction x="241.3" y="58.42"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="Y1" gate="G$1" pin="1"/>
<wire x1="238.76" y1="53.34" x2="241.3" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="PA01(XOUT32/SER1:1/TC2:1)"/>
<wire x1="241.3" y1="53.34" x2="248.92" y2="53.34" width="0.1524" layer="91"/>
<junction x="241.3" y="53.34"/>
</segment>
</net>
<net name="!RESET" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="!RESET!"/>
<wire x1="248.92" y1="86.36" x2="246.38" y2="86.36" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="246.38" y1="86.36" x2="246.38" y2="88.9" width="0.1524" layer="91"/>
<wire x1="246.38" y1="86.36" x2="243.84" y2="86.36" width="0.1524" layer="91"/>
<junction x="246.38" y="86.36"/>
<label x="243.84" y="86.36" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP22" gate="G$1" pin="NRESET"/>
<wire x1="424.18" y1="81.28" x2="426.72" y2="81.28" width="0.1524" layer="91"/>
<label x="426.72" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="USB_D+" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA25(SER3:3+)"/>
<wire x1="317.5" y1="35.56" x2="320.04" y2="35.56" width="0.1524" layer="91"/>
<label x="320.04" y="35.56" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="233.68" y1="152.4" x2="241.3" y2="152.4" width="0.1524" layer="91"/>
<label x="241.3" y="152.4" size="1.27" layer="95" xref="yes"/>
<pinref part="JP23" gate="G$1" pin="D+"/>
</segment>
</net>
<net name="USB_D-" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA24(SER3:2+)"/>
<wire x1="317.5" y1="38.1" x2="320.04" y2="38.1" width="0.1524" layer="91"/>
<label x="320.04" y="38.1" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="233.68" y1="154.94" x2="241.3" y2="154.94" width="0.1524" layer="91"/>
<label x="241.3" y="154.94" size="1.27" layer="95" xref="yes"/>
<pinref part="JP23" gate="G$1" pin="D-"/>
</segment>
</net>
<net name="RF_SS" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA18(SER1:2+)"/>
<wire x1="317.5" y1="53.34" x2="320.04" y2="53.34" width="0.1524" layer="91"/>
<label x="320.04" y="53.34" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="NSS"/>
<wire x1="134.62" y1="223.52" x2="139.7" y2="223.52" width="0.1524" layer="91"/>
<label x="134.62" y="223.52" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA30(SWCLK/SER1:2+)"/>
<wire x1="317.5" y1="27.94" x2="320.04" y2="27.94" width="0.1524" layer="91"/>
<label x="320.04" y="27.94" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP22" gate="G$1" pin="SWDCLK/TCK"/>
<wire x1="424.18" y1="88.9" x2="426.72" y2="88.9" width="0.1524" layer="91"/>
<label x="426.72" y="88.9" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA31(SWDIO/SER1:3+)"/>
<wire x1="317.5" y1="25.4" x2="320.04" y2="25.4" width="0.1524" layer="91"/>
<label x="320.04" y="25.4" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP22" gate="G$1" pin="SWDIO/TMS"/>
<wire x1="424.18" y1="91.44" x2="426.72" y2="91.44" width="0.1524" layer="91"/>
<label x="426.72" y="91.44" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="254" y1="127" x2="248.92" y2="127" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="248.92" y1="127" x2="248.92" y2="129.54" width="0.1524" layer="91"/>
<wire x1="248.92" y1="127" x2="246.38" y2="127" width="0.1524" layer="91"/>
<junction x="248.92" y="127"/>
<pinref part="R31" gate="G$1" pin="2"/>
<wire x1="254" y1="127" x2="254" y2="149.86" width="0.1524" layer="91"/>
<pinref part="JP23" gate="G$1" pin="USBID"/>
<wire x1="254" y1="149.86" x2="233.68" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="USB_HOST_EN" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="PA28"/>
<wire x1="317.5" y1="30.48" x2="320.04" y2="30.48" width="0.1524" layer="91"/>
<label x="320.04" y="30.48" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="236.22" y1="127" x2="233.68" y2="127" width="0.1524" layer="91"/>
<label x="233.68" y="127" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="BMS_SDA" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="144.78" y1="96.52" x2="144.78" y2="93.98" width="0.1524" layer="91"/>
<wire x1="144.78" y1="93.98" x2="142.24" y2="93.98" width="0.1524" layer="91"/>
<label x="142.24" y="93.98" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="SDA"/>
<wire x1="170.18" y1="63.5" x2="172.72" y2="63.5" width="0.1524" layer="91"/>
<label x="172.72" y="63.5" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA22(I2C/SER3:0+)"/>
<wire x1="317.5" y1="43.18" x2="320.04" y2="43.18" width="0.1524" layer="91"/>
<label x="320.04" y="43.18" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="BMS_SCL" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="154.94" y1="96.52" x2="154.94" y2="91.44" width="0.1524" layer="91"/>
<wire x1="154.94" y1="91.44" x2="142.24" y2="91.44" width="0.1524" layer="91"/>
<label x="142.24" y="91.44" size="1.27" layer="95" font="vector" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="SCL"/>
<wire x1="170.18" y1="60.96" x2="172.72" y2="60.96" width="0.1524" layer="91"/>
<label x="172.72" y="60.96" size="1.27" layer="95" font="vector" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA23(I2C/SER3:0+)"/>
<wire x1="317.5" y1="40.64" x2="320.04" y2="40.64" width="0.1524" layer="91"/>
<label x="320.04" y="40.64" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LSR_BTN" class="0">
<segment>
<pinref part="S7" gate="G$1" pin="1"/>
<wire x1="434.34" y1="142.24" x2="434.34" y2="139.7" width="0.1524" layer="91"/>
<wire x1="434.34" y1="139.7" x2="434.34" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="434.34" y1="139.7" x2="431.8" y2="139.7" width="0.1524" layer="91"/>
<junction x="434.34" y="139.7"/>
<label x="431.8" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA11(AIN19/SER0:3+)"/>
<wire x1="317.5" y1="71.12" x2="320.04" y2="71.12" width="0.1524" layer="91"/>
<label x="320.04" y="71.12" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LFT_BTN" class="0">
<segment>
<pinref part="S3" gate="G$1" pin="1"/>
<wire x1="373.38" y1="142.24" x2="373.38" y2="139.7" width="0.1524" layer="91"/>
<wire x1="373.38" y1="139.7" x2="373.38" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="373.38" y1="139.7" x2="370.84" y2="139.7" width="0.1524" layer="91"/>
<junction x="373.38" y="139.7"/>
<label x="370.84" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PB09(AIN3/SER4:1/TC4:1)"/>
<wire x1="248.92" y1="27.94" x2="246.38" y2="27.94" width="0.1524" layer="91"/>
<label x="246.38" y="27.94" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="UP_BTN" class="0">
<segment>
<pinref part="S4" gate="G$1" pin="1"/>
<wire x1="388.62" y1="142.24" x2="388.62" y2="139.7" width="0.1524" layer="91"/>
<wire x1="388.62" y1="139.7" x2="388.62" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="388.62" y1="139.7" x2="386.08" y2="139.7" width="0.1524" layer="91"/>
<junction x="388.62" y="139.7"/>
<label x="386.08" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA08(I2C/AIN16/SER0:0+)"/>
<wire x1="317.5" y1="78.74" x2="320.04" y2="78.74" width="0.1524" layer="91"/>
<label x="320.04" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RHT_BTN" class="0">
<segment>
<pinref part="S5" gate="G$1" pin="1"/>
<wire x1="403.86" y1="142.24" x2="403.86" y2="139.7" width="0.1524" layer="91"/>
<wire x1="403.86" y1="139.7" x2="403.86" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="403.86" y1="139.7" x2="401.32" y2="139.7" width="0.1524" layer="91"/>
<junction x="403.86" y="139.7"/>
<label x="401.32" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA09(I2C/AIN17/SER0:1+)"/>
<wire x1="317.5" y1="76.2" x2="320.04" y2="76.2" width="0.1524" layer="91"/>
<label x="320.04" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="DWN_BTN" class="0">
<segment>
<pinref part="S6" gate="G$1" pin="1"/>
<wire x1="419.1" y1="142.24" x2="419.1" y2="139.7" width="0.1524" layer="91"/>
<wire x1="419.1" y1="139.7" x2="419.1" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="419.1" y1="139.7" x2="416.56" y2="139.7" width="0.1524" layer="91"/>
<junction x="419.1" y="139.7"/>
<label x="416.56" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA10(AIN18/SER0:2+)"/>
<wire x1="317.5" y1="73.66" x2="320.04" y2="73.66" width="0.1524" layer="91"/>
<label x="320.04" y="73.66" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="LFT_MOUSE" class="0">
<segment>
<pinref part="S8" gate="G$1" pin="1"/>
<wire x1="452.12" y1="142.24" x2="452.12" y2="139.7" width="0.1524" layer="91"/>
<wire x1="452.12" y1="139.7" x2="452.12" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="452.12" y1="139.7" x2="449.58" y2="139.7" width="0.1524" layer="91"/>
<junction x="452.12" y="139.7"/>
<label x="449.58" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA12(I2C/SER2:0+)"/>
<wire x1="317.5" y1="68.58" x2="320.04" y2="68.58" width="0.1524" layer="91"/>
<label x="320.04" y="68.58" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="RHT_MOUSE" class="0">
<segment>
<pinref part="S9" gate="G$1" pin="1"/>
<wire x1="469.9" y1="142.24" x2="469.9" y2="139.7" width="0.1524" layer="91"/>
<wire x1="469.9" y1="139.7" x2="469.9" y2="137.16" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="469.9" y1="139.7" x2="467.36" y2="139.7" width="0.1524" layer="91"/>
<junction x="469.9" y="139.7"/>
<label x="467.36" y="139.7" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA13(I2C/SER2:1+)"/>
<wire x1="317.5" y1="66.04" x2="320.04" y2="66.04" width="0.1524" layer="91"/>
<label x="320.04" y="66.04" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="406.4" y1="195.58" x2="403.86" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LSR_OUT" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="393.7" y1="195.58" x2="391.16" y2="195.58" width="0.1524" layer="91"/>
<label x="391.16" y="195.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA04(AIN4/REFB/SER0:0/TC0:0)"/>
<wire x1="248.92" y1="45.72" x2="246.38" y2="45.72" width="0.1524" layer="91"/>
<label x="246.38" y="45.72" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<pinref part="LASER" gate="G$1" pin="2"/>
<wire x1="414.02" y1="200.66" x2="414.02" y2="205.74" width="0.1524" layer="91"/>
<wire x1="414.02" y1="205.74" x2="419.1" y2="205.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RF_INT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DIO0"/>
<wire x1="170.18" y1="238.76" x2="172.72" y2="238.76" width="0.1524" layer="91"/>
<label x="172.72" y="238.76" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="PA03(AIN1/REFA)"/>
<wire x1="248.92" y1="48.26" x2="246.38" y2="48.26" width="0.1524" layer="91"/>
<label x="246.38" y="48.26" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
