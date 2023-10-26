# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new Cache_Test work:Cache_Test:NOFILE -nosplit
load symbol Cache work:Cache:NOFILE HIERBOX pin Mem_read input.left pin Mem_write input.left pin Stall output.right pin clk input.left pin reset input.left pinBus Address input.left [9:0] pinBus Data_in input.left [31:0] pinBus Data_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Data_Memory work:Data_Memory:NOFILE HIERBOX pin clk input.left pin mem_read_access input.left pin mem_write_access input.left pin ready output.right pin reset input.left pinBus Address input.left [9:0] pinBus control_data input.left [31:0] pinBus mem_data_out output.right [127:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol cache_controller work:cache_controller:NOFILE HIERBOX pin clk input.left pin mem_read input.left pin mem_read_access output.right pin mem_write input.left pin mem_write_access output.right pin read_en output.right pin ready input.left pin reset input.left pin stall output.right pin update output.right pin valid input.left pin write_en output.right pinBus Address input.left [9:0] pinBus cache_tag input.left [2:0] pinBus write_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol memorycache work:memorycache:NOFILE HIERBOX pin clk input.left pin read_en input.left pin reset input.left pin update input.left pin valid output.right pin write_en input.left pinBus Address input.left [9:0] pinBus cache_tag output.right [2:0] pinBus read_data_out output.right [31:0] pinBus update_data input.left [127:0] pinBus write_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load inst UUT Cache work:Cache:NOFILE -attr @cell(#000000) Cache -attr @fillcolor #fafafa -pinAttr Stall @attr n/c -pinBusAttr Address @name Address[9:0] -pinBusAttr Address @attr V=B\"0000001000\" -pinBusAttr Data_in @name Data_in[31:0] -pinBusAttr Data_in @attr V=X\"ABCDEF01\" -pinBusAttr Data_out @name Data_out[31:0] -pinBusAttr Data_out @attr n/c -pg 1 -lvl 1 -x 180 -y 58
load inst UUT|Data_Memory Data_Memory work:Data_Memory:NOFILE -hier UUT -autohide -attr @cell(#000000) Data_Memory -attr @name Data_Memory -pinBusAttr Address @name Address[9:0] -pinBusAttr Address @attr V=B\"0000001000\" -pinBusAttr control_data @name control_data[31:0] -pinBusAttr control_data @attr V=X\"ABCDEF01\" -pinBusAttr mem_data_out @name mem_data_out[127:0] -pg 1 -lvl 1 -x 530 -y 398
load inst UUT|cache_controller cache_controller work:cache_controller:NOFILE -hier UUT -autohide -attr @cell(#000000) cache_controller -attr @name cache_controller -pinBusAttr Address @name Address[9:0] -pinBusAttr Address @attr V=B\"0000001000\" -pinBusAttr cache_tag @name cache_tag[2:0] -pinBusAttr write_data @name write_data[31:0] -pinBusAttr write_data @attr V=X\"ABCDEF01\" -pg 1 -lvl 2 -x 1150 -y 78
load inst UUT|memorycache memorycache work:memorycache:NOFILE -hier UUT -autohide -attr @cell(#000000) memorycache -attr @name memorycache -pinBusAttr Address @name Address[9:0] -pinBusAttr Address @attr V=B\"0000001000\" -pinBusAttr cache_tag @name cache_tag[2:0] -pinBusAttr read_data_out @name read_data_out[31:0] -pinBusAttr update_data @name update_data[127:0] -pinBusAttr write_data @name write_data[31:0] -pinBusAttr write_data @attr V=X\"ABCDEF01\" -pg 1 -lvl 3 -x 1690 -y 358
load net UUT|Address[0] -attr @rip Address[0] -attr @name Address[0] -hierPin UUT Address[0] -pin UUT|Data_Memory Address[0] -pin UUT|cache_controller Address[0] -pin UUT|memorycache Address[0]
load net UUT|Address[1] -attr @rip Address[1] -attr @name Address[1] -hierPin UUT Address[1] -pin UUT|Data_Memory Address[1] -pin UUT|cache_controller Address[1] -pin UUT|memorycache Address[1]
load net UUT|Address[2] -attr @rip Address[2] -attr @name Address[2] -hierPin UUT Address[2] -pin UUT|Data_Memory Address[2] -pin UUT|cache_controller Address[2] -pin UUT|memorycache Address[2]
load net UUT|Address[3] -attr @rip Address[3] -attr @name Address[3] -hierPin UUT Address[3] -pin UUT|Data_Memory Address[3] -pin UUT|cache_controller Address[3] -pin UUT|memorycache Address[3]
load net UUT|Address[4] -attr @rip Address[4] -attr @name Address[4] -hierPin UUT Address[4] -pin UUT|Data_Memory Address[4] -pin UUT|cache_controller Address[4] -pin UUT|memorycache Address[4]
load net UUT|Address[5] -attr @rip Address[5] -attr @name Address[5] -hierPin UUT Address[5] -pin UUT|Data_Memory Address[5] -pin UUT|cache_controller Address[5] -pin UUT|memorycache Address[5]
load net UUT|Address[6] -attr @rip Address[6] -attr @name Address[6] -hierPin UUT Address[6] -pin UUT|Data_Memory Address[6] -pin UUT|cache_controller Address[6] -pin UUT|memorycache Address[6]
load net UUT|Address[7] -attr @rip Address[7] -attr @name Address[7] -hierPin UUT Address[7] -pin UUT|Data_Memory Address[7] -pin UUT|cache_controller Address[7] -pin UUT|memorycache Address[7]
load net UUT|Address[8] -attr @rip Address[8] -attr @name Address[8] -hierPin UUT Address[8] -pin UUT|Data_Memory Address[8] -pin UUT|cache_controller Address[8] -pin UUT|memorycache Address[8]
load net UUT|Address[9] -attr @rip Address[9] -attr @name Address[9] -hierPin UUT Address[9] -pin UUT|Data_Memory Address[9] -pin UUT|cache_controller Address[9] -pin UUT|memorycache Address[9]
load net UUT|Data_in[0] -attr @rip Data_in[0] -attr @name Data_in[0] -hierPin UUT Data_in[0] -pin UUT|Data_Memory control_data[0] -pin UUT|cache_controller write_data[0] -pin UUT|memorycache write_data[0]
load net UUT|Data_in[10] -attr @rip Data_in[10] -attr @name Data_in[10] -hierPin UUT Data_in[10] -pin UUT|Data_Memory control_data[10] -pin UUT|cache_controller write_data[10] -pin UUT|memorycache write_data[10]
load net UUT|Data_in[11] -attr @rip Data_in[11] -attr @name Data_in[11] -hierPin UUT Data_in[11] -pin UUT|Data_Memory control_data[11] -pin UUT|cache_controller write_data[11] -pin UUT|memorycache write_data[11]
load net UUT|Data_in[12] -attr @rip Data_in[12] -attr @name Data_in[12] -hierPin UUT Data_in[12] -pin UUT|Data_Memory control_data[12] -pin UUT|cache_controller write_data[12] -pin UUT|memorycache write_data[12]
load net UUT|Data_in[13] -attr @rip Data_in[13] -attr @name Data_in[13] -hierPin UUT Data_in[13] -pin UUT|Data_Memory control_data[13] -pin UUT|cache_controller write_data[13] -pin UUT|memorycache write_data[13]
load net UUT|Data_in[14] -attr @rip Data_in[14] -attr @name Data_in[14] -hierPin UUT Data_in[14] -pin UUT|Data_Memory control_data[14] -pin UUT|cache_controller write_data[14] -pin UUT|memorycache write_data[14]
load net UUT|Data_in[15] -attr @rip Data_in[15] -attr @name Data_in[15] -hierPin UUT Data_in[15] -pin UUT|Data_Memory control_data[15] -pin UUT|cache_controller write_data[15] -pin UUT|memorycache write_data[15]
load net UUT|Data_in[16] -attr @rip Data_in[16] -attr @name Data_in[16] -hierPin UUT Data_in[16] -pin UUT|Data_Memory control_data[16] -pin UUT|cache_controller write_data[16] -pin UUT|memorycache write_data[16]
load net UUT|Data_in[17] -attr @rip Data_in[17] -attr @name Data_in[17] -hierPin UUT Data_in[17] -pin UUT|Data_Memory control_data[17] -pin UUT|cache_controller write_data[17] -pin UUT|memorycache write_data[17]
load net UUT|Data_in[18] -attr @rip Data_in[18] -attr @name Data_in[18] -hierPin UUT Data_in[18] -pin UUT|Data_Memory control_data[18] -pin UUT|cache_controller write_data[18] -pin UUT|memorycache write_data[18]
load net UUT|Data_in[19] -attr @rip Data_in[19] -attr @name Data_in[19] -hierPin UUT Data_in[19] -pin UUT|Data_Memory control_data[19] -pin UUT|cache_controller write_data[19] -pin UUT|memorycache write_data[19]
load net UUT|Data_in[1] -attr @rip Data_in[1] -attr @name Data_in[1] -hierPin UUT Data_in[1] -pin UUT|Data_Memory control_data[1] -pin UUT|cache_controller write_data[1] -pin UUT|memorycache write_data[1]
load net UUT|Data_in[20] -attr @rip Data_in[20] -attr @name Data_in[20] -hierPin UUT Data_in[20] -pin UUT|Data_Memory control_data[20] -pin UUT|cache_controller write_data[20] -pin UUT|memorycache write_data[20]
load net UUT|Data_in[21] -attr @rip Data_in[21] -attr @name Data_in[21] -hierPin UUT Data_in[21] -pin UUT|Data_Memory control_data[21] -pin UUT|cache_controller write_data[21] -pin UUT|memorycache write_data[21]
load net UUT|Data_in[22] -attr @rip Data_in[22] -attr @name Data_in[22] -hierPin UUT Data_in[22] -pin UUT|Data_Memory control_data[22] -pin UUT|cache_controller write_data[22] -pin UUT|memorycache write_data[22]
load net UUT|Data_in[23] -attr @rip Data_in[23] -attr @name Data_in[23] -hierPin UUT Data_in[23] -pin UUT|Data_Memory control_data[23] -pin UUT|cache_controller write_data[23] -pin UUT|memorycache write_data[23]
load net UUT|Data_in[24] -attr @rip Data_in[24] -attr @name Data_in[24] -hierPin UUT Data_in[24] -pin UUT|Data_Memory control_data[24] -pin UUT|cache_controller write_data[24] -pin UUT|memorycache write_data[24]
load net UUT|Data_in[25] -attr @rip Data_in[25] -attr @name Data_in[25] -hierPin UUT Data_in[25] -pin UUT|Data_Memory control_data[25] -pin UUT|cache_controller write_data[25] -pin UUT|memorycache write_data[25]
load net UUT|Data_in[26] -attr @rip Data_in[26] -attr @name Data_in[26] -hierPin UUT Data_in[26] -pin UUT|Data_Memory control_data[26] -pin UUT|cache_controller write_data[26] -pin UUT|memorycache write_data[26]
load net UUT|Data_in[27] -attr @rip Data_in[27] -attr @name Data_in[27] -hierPin UUT Data_in[27] -pin UUT|Data_Memory control_data[27] -pin UUT|cache_controller write_data[27] -pin UUT|memorycache write_data[27]
load net UUT|Data_in[28] -attr @rip Data_in[28] -attr @name Data_in[28] -hierPin UUT Data_in[28] -pin UUT|Data_Memory control_data[28] -pin UUT|cache_controller write_data[28] -pin UUT|memorycache write_data[28]
load net UUT|Data_in[29] -attr @rip Data_in[29] -attr @name Data_in[29] -hierPin UUT Data_in[29] -pin UUT|Data_Memory control_data[29] -pin UUT|cache_controller write_data[29] -pin UUT|memorycache write_data[29]
load net UUT|Data_in[2] -attr @rip Data_in[2] -attr @name Data_in[2] -hierPin UUT Data_in[2] -pin UUT|Data_Memory control_data[2] -pin UUT|cache_controller write_data[2] -pin UUT|memorycache write_data[2]
load net UUT|Data_in[30] -attr @rip Data_in[30] -attr @name Data_in[30] -hierPin UUT Data_in[30] -pin UUT|Data_Memory control_data[30] -pin UUT|cache_controller write_data[30] -pin UUT|memorycache write_data[30]
load net UUT|Data_in[31] -attr @rip Data_in[31] -attr @name Data_in[31] -hierPin UUT Data_in[31] -pin UUT|Data_Memory control_data[31] -pin UUT|cache_controller write_data[31] -pin UUT|memorycache write_data[31]
load net UUT|Data_in[3] -attr @rip Data_in[3] -attr @name Data_in[3] -hierPin UUT Data_in[3] -pin UUT|Data_Memory control_data[3] -pin UUT|cache_controller write_data[3] -pin UUT|memorycache write_data[3]
load net UUT|Data_in[4] -attr @rip Data_in[4] -attr @name Data_in[4] -hierPin UUT Data_in[4] -pin UUT|Data_Memory control_data[4] -pin UUT|cache_controller write_data[4] -pin UUT|memorycache write_data[4]
load net UUT|Data_in[5] -attr @rip Data_in[5] -attr @name Data_in[5] -hierPin UUT Data_in[5] -pin UUT|Data_Memory control_data[5] -pin UUT|cache_controller write_data[5] -pin UUT|memorycache write_data[5]
load net UUT|Data_in[6] -attr @rip Data_in[6] -attr @name Data_in[6] -hierPin UUT Data_in[6] -pin UUT|Data_Memory control_data[6] -pin UUT|cache_controller write_data[6] -pin UUT|memorycache write_data[6]
load net UUT|Data_in[7] -attr @rip Data_in[7] -attr @name Data_in[7] -hierPin UUT Data_in[7] -pin UUT|Data_Memory control_data[7] -pin UUT|cache_controller write_data[7] -pin UUT|memorycache write_data[7]
load net UUT|Data_in[8] -attr @rip Data_in[8] -attr @name Data_in[8] -hierPin UUT Data_in[8] -pin UUT|Data_Memory control_data[8] -pin UUT|cache_controller write_data[8] -pin UUT|memorycache write_data[8]
load net UUT|Data_in[9] -attr @rip Data_in[9] -attr @name Data_in[9] -hierPin UUT Data_in[9] -pin UUT|Data_Memory control_data[9] -pin UUT|cache_controller write_data[9] -pin UUT|memorycache write_data[9]
load net UUT|Data_out[0] -attr @rip read_data_out[0] -attr @name Data_out[0] -hierPin UUT Data_out[0] -pin UUT|memorycache read_data_out[0]
load net UUT|Data_out[10] -attr @rip read_data_out[10] -attr @name Data_out[10] -hierPin UUT Data_out[10] -pin UUT|memorycache read_data_out[10]
load net UUT|Data_out[11] -attr @rip read_data_out[11] -attr @name Data_out[11] -hierPin UUT Data_out[11] -pin UUT|memorycache read_data_out[11]
load net UUT|Data_out[12] -attr @rip read_data_out[12] -attr @name Data_out[12] -hierPin UUT Data_out[12] -pin UUT|memorycache read_data_out[12]
load net UUT|Data_out[13] -attr @rip read_data_out[13] -attr @name Data_out[13] -hierPin UUT Data_out[13] -pin UUT|memorycache read_data_out[13]
load net UUT|Data_out[14] -attr @rip read_data_out[14] -attr @name Data_out[14] -hierPin UUT Data_out[14] -pin UUT|memorycache read_data_out[14]
load net UUT|Data_out[15] -attr @rip read_data_out[15] -attr @name Data_out[15] -hierPin UUT Data_out[15] -pin UUT|memorycache read_data_out[15]
load net UUT|Data_out[16] -attr @rip read_data_out[16] -attr @name Data_out[16] -hierPin UUT Data_out[16] -pin UUT|memorycache read_data_out[16]
load net UUT|Data_out[17] -attr @rip read_data_out[17] -attr @name Data_out[17] -hierPin UUT Data_out[17] -pin UUT|memorycache read_data_out[17]
load net UUT|Data_out[18] -attr @rip read_data_out[18] -attr @name Data_out[18] -hierPin UUT Data_out[18] -pin UUT|memorycache read_data_out[18]
load net UUT|Data_out[19] -attr @rip read_data_out[19] -attr @name Data_out[19] -hierPin UUT Data_out[19] -pin UUT|memorycache read_data_out[19]
load net UUT|Data_out[1] -attr @rip read_data_out[1] -attr @name Data_out[1] -hierPin UUT Data_out[1] -pin UUT|memorycache read_data_out[1]
load net UUT|Data_out[20] -attr @rip read_data_out[20] -attr @name Data_out[20] -hierPin UUT Data_out[20] -pin UUT|memorycache read_data_out[20]
load net UUT|Data_out[21] -attr @rip read_data_out[21] -attr @name Data_out[21] -hierPin UUT Data_out[21] -pin UUT|memorycache read_data_out[21]
load net UUT|Data_out[22] -attr @rip read_data_out[22] -attr @name Data_out[22] -hierPin UUT Data_out[22] -pin UUT|memorycache read_data_out[22]
load net UUT|Data_out[23] -attr @rip read_data_out[23] -attr @name Data_out[23] -hierPin UUT Data_out[23] -pin UUT|memorycache read_data_out[23]
load net UUT|Data_out[24] -attr @rip read_data_out[24] -attr @name Data_out[24] -hierPin UUT Data_out[24] -pin UUT|memorycache read_data_out[24]
load net UUT|Data_out[25] -attr @rip read_data_out[25] -attr @name Data_out[25] -hierPin UUT Data_out[25] -pin UUT|memorycache read_data_out[25]
load net UUT|Data_out[26] -attr @rip read_data_out[26] -attr @name Data_out[26] -hierPin UUT Data_out[26] -pin UUT|memorycache read_data_out[26]
load net UUT|Data_out[27] -attr @rip read_data_out[27] -attr @name Data_out[27] -hierPin UUT Data_out[27] -pin UUT|memorycache read_data_out[27]
load net UUT|Data_out[28] -attr @rip read_data_out[28] -attr @name Data_out[28] -hierPin UUT Data_out[28] -pin UUT|memorycache read_data_out[28]
load net UUT|Data_out[29] -attr @rip read_data_out[29] -attr @name Data_out[29] -hierPin UUT Data_out[29] -pin UUT|memorycache read_data_out[29]
load net UUT|Data_out[2] -attr @rip read_data_out[2] -attr @name Data_out[2] -hierPin UUT Data_out[2] -pin UUT|memorycache read_data_out[2]
load net UUT|Data_out[30] -attr @rip read_data_out[30] -attr @name Data_out[30] -hierPin UUT Data_out[30] -pin UUT|memorycache read_data_out[30]
load net UUT|Data_out[31] -attr @rip read_data_out[31] -attr @name Data_out[31] -hierPin UUT Data_out[31] -pin UUT|memorycache read_data_out[31]
load net UUT|Data_out[3] -attr @rip read_data_out[3] -attr @name Data_out[3] -hierPin UUT Data_out[3] -pin UUT|memorycache read_data_out[3]
load net UUT|Data_out[4] -attr @rip read_data_out[4] -attr @name Data_out[4] -hierPin UUT Data_out[4] -pin UUT|memorycache read_data_out[4]
load net UUT|Data_out[5] -attr @rip read_data_out[5] -attr @name Data_out[5] -hierPin UUT Data_out[5] -pin UUT|memorycache read_data_out[5]
load net UUT|Data_out[6] -attr @rip read_data_out[6] -attr @name Data_out[6] -hierPin UUT Data_out[6] -pin UUT|memorycache read_data_out[6]
load net UUT|Data_out[7] -attr @rip read_data_out[7] -attr @name Data_out[7] -hierPin UUT Data_out[7] -pin UUT|memorycache read_data_out[7]
load net UUT|Data_out[8] -attr @rip read_data_out[8] -attr @name Data_out[8] -hierPin UUT Data_out[8] -pin UUT|memorycache read_data_out[8]
load net UUT|Data_out[9] -attr @rip read_data_out[9] -attr @name Data_out[9] -hierPin UUT Data_out[9] -pin UUT|memorycache read_data_out[9]
load net UUT|Mem_read -attr @name Mem_read -hierPin UUT Mem_read -pin UUT|cache_controller mem_read
netloc UUT|Mem_read 1 0 2 NJ 268 800
load net UUT|Mem_write -attr @name Mem_write -hierPin UUT Mem_write -pin UUT|cache_controller mem_write
netloc UUT|Mem_write 1 0 2 NJ 288 820
load net UUT|Stall -attr @name Stall -hierPin UUT Stall -pin UUT|cache_controller stall
netloc UUT|Stall 1 2 2 1480 288 NJ
load net UUT|cache_tag[0] -attr @rip cache_tag[0] -attr @name cache_tag[0] -pin UUT|cache_controller cache_tag[0] -pin UUT|memorycache cache_tag[0]
load net UUT|cache_tag[1] -attr @rip cache_tag[1] -attr @name cache_tag[1] -pin UUT|cache_controller cache_tag[1] -pin UUT|memorycache cache_tag[1]
load net UUT|cache_tag[2] -attr @rip cache_tag[2] -attr @name cache_tag[2] -pin UUT|cache_controller cache_tag[2] -pin UUT|memorycache cache_tag[2]
load net UUT|clk -attr @name clk -hierPin UUT clk -pin UUT|Data_Memory clk -pin UUT|cache_controller clk -pin UUT|memorycache clk
netloc UUT|clk 1 0 3 230 308 900 388 NJ
load net UUT|mem_read_access -attr @name mem_read_access -pin UUT|Data_Memory mem_read_access -pin UUT|cache_controller mem_read_access
netloc UUT|mem_read_access 1 0 3 290 208 840J 288 1380
load net UUT|mem_write_access -attr @name mem_write_access -pin UUT|Data_Memory mem_write_access -pin UUT|cache_controller mem_write_access
netloc UUT|mem_write_access 1 0 3 310 348 NJ 348 1340
load net UUT|read_en -attr @name read_en -pin UUT|cache_controller read_en -pin UUT|memorycache read_en
netloc UUT|read_en 1 2 1 1460 148n
load net UUT|ready -attr @name ready -pin UUT|Data_Memory ready -pin UUT|cache_controller ready
netloc UUT|ready 1 1 1 740 188n
load net UUT|reset -attr @name reset -hierPin UUT reset -pin UUT|Data_Memory reset -pin UUT|cache_controller reset -pin UUT|memorycache reset
netloc UUT|reset 1 0 3 210 328 860 428 NJ
load net UUT|update -attr @name update -pin UUT|cache_controller update -pin UUT|memorycache update
netloc UUT|update 1 2 1 1440 188n
load net UUT|update_data[0] -attr @rip mem_data_out[0] -attr @name update_data[0] -pin UUT|Data_Memory mem_data_out[0] -pin UUT|memorycache update_data[0]
load net UUT|update_data[100] -attr @rip mem_data_out[100] -attr @name update_data[100] -pin UUT|Data_Memory mem_data_out[100] -pin UUT|memorycache update_data[100]
load net UUT|update_data[101] -attr @rip mem_data_out[101] -attr @name update_data[101] -pin UUT|Data_Memory mem_data_out[101] -pin UUT|memorycache update_data[101]
load net UUT|update_data[102] -attr @rip mem_data_out[102] -attr @name update_data[102] -pin UUT|Data_Memory mem_data_out[102] -pin UUT|memorycache update_data[102]
load net UUT|update_data[103] -attr @rip mem_data_out[103] -attr @name update_data[103] -pin UUT|Data_Memory mem_data_out[103] -pin UUT|memorycache update_data[103]
load net UUT|update_data[104] -attr @rip mem_data_out[104] -attr @name update_data[104] -pin UUT|Data_Memory mem_data_out[104] -pin UUT|memorycache update_data[104]
load net UUT|update_data[105] -attr @rip mem_data_out[105] -attr @name update_data[105] -pin UUT|Data_Memory mem_data_out[105] -pin UUT|memorycache update_data[105]
load net UUT|update_data[106] -attr @rip mem_data_out[106] -attr @name update_data[106] -pin UUT|Data_Memory mem_data_out[106] -pin UUT|memorycache update_data[106]
load net UUT|update_data[107] -attr @rip mem_data_out[107] -attr @name update_data[107] -pin UUT|Data_Memory mem_data_out[107] -pin UUT|memorycache update_data[107]
load net UUT|update_data[108] -attr @rip mem_data_out[108] -attr @name update_data[108] -pin UUT|Data_Memory mem_data_out[108] -pin UUT|memorycache update_data[108]
load net UUT|update_data[109] -attr @rip mem_data_out[109] -attr @name update_data[109] -pin UUT|Data_Memory mem_data_out[109] -pin UUT|memorycache update_data[109]
load net UUT|update_data[10] -attr @rip mem_data_out[10] -attr @name update_data[10] -pin UUT|Data_Memory mem_data_out[10] -pin UUT|memorycache update_data[10]
load net UUT|update_data[110] -attr @rip mem_data_out[110] -attr @name update_data[110] -pin UUT|Data_Memory mem_data_out[110] -pin UUT|memorycache update_data[110]
load net UUT|update_data[111] -attr @rip mem_data_out[111] -attr @name update_data[111] -pin UUT|Data_Memory mem_data_out[111] -pin UUT|memorycache update_data[111]
load net UUT|update_data[112] -attr @rip mem_data_out[112] -attr @name update_data[112] -pin UUT|Data_Memory mem_data_out[112] -pin UUT|memorycache update_data[112]
load net UUT|update_data[113] -attr @rip mem_data_out[113] -attr @name update_data[113] -pin UUT|Data_Memory mem_data_out[113] -pin UUT|memorycache update_data[113]
load net UUT|update_data[114] -attr @rip mem_data_out[114] -attr @name update_data[114] -pin UUT|Data_Memory mem_data_out[114] -pin UUT|memorycache update_data[114]
load net UUT|update_data[115] -attr @rip mem_data_out[115] -attr @name update_data[115] -pin UUT|Data_Memory mem_data_out[115] -pin UUT|memorycache update_data[115]
load net UUT|update_data[116] -attr @rip mem_data_out[116] -attr @name update_data[116] -pin UUT|Data_Memory mem_data_out[116] -pin UUT|memorycache update_data[116]
load net UUT|update_data[117] -attr @rip mem_data_out[117] -attr @name update_data[117] -pin UUT|Data_Memory mem_data_out[117] -pin UUT|memorycache update_data[117]
load net UUT|update_data[118] -attr @rip mem_data_out[118] -attr @name update_data[118] -pin UUT|Data_Memory mem_data_out[118] -pin UUT|memorycache update_data[118]
load net UUT|update_data[119] -attr @rip mem_data_out[119] -attr @name update_data[119] -pin UUT|Data_Memory mem_data_out[119] -pin UUT|memorycache update_data[119]
load net UUT|update_data[11] -attr @rip mem_data_out[11] -attr @name update_data[11] -pin UUT|Data_Memory mem_data_out[11] -pin UUT|memorycache update_data[11]
load net UUT|update_data[120] -attr @rip mem_data_out[120] -attr @name update_data[120] -pin UUT|Data_Memory mem_data_out[120] -pin UUT|memorycache update_data[120]
load net UUT|update_data[121] -attr @rip mem_data_out[121] -attr @name update_data[121] -pin UUT|Data_Memory mem_data_out[121] -pin UUT|memorycache update_data[121]
load net UUT|update_data[122] -attr @rip mem_data_out[122] -attr @name update_data[122] -pin UUT|Data_Memory mem_data_out[122] -pin UUT|memorycache update_data[122]
load net UUT|update_data[123] -attr @rip mem_data_out[123] -attr @name update_data[123] -pin UUT|Data_Memory mem_data_out[123] -pin UUT|memorycache update_data[123]
load net UUT|update_data[124] -attr @rip mem_data_out[124] -attr @name update_data[124] -pin UUT|Data_Memory mem_data_out[124] -pin UUT|memorycache update_data[124]
load net UUT|update_data[125] -attr @rip mem_data_out[125] -attr @name update_data[125] -pin UUT|Data_Memory mem_data_out[125] -pin UUT|memorycache update_data[125]
load net UUT|update_data[126] -attr @rip mem_data_out[126] -attr @name update_data[126] -pin UUT|Data_Memory mem_data_out[126] -pin UUT|memorycache update_data[126]
load net UUT|update_data[127] -attr @rip mem_data_out[127] -attr @name update_data[127] -pin UUT|Data_Memory mem_data_out[127] -pin UUT|memorycache update_data[127]
load net UUT|update_data[12] -attr @rip mem_data_out[12] -attr @name update_data[12] -pin UUT|Data_Memory mem_data_out[12] -pin UUT|memorycache update_data[12]
load net UUT|update_data[13] -attr @rip mem_data_out[13] -attr @name update_data[13] -pin UUT|Data_Memory mem_data_out[13] -pin UUT|memorycache update_data[13]
load net UUT|update_data[14] -attr @rip mem_data_out[14] -attr @name update_data[14] -pin UUT|Data_Memory mem_data_out[14] -pin UUT|memorycache update_data[14]
load net UUT|update_data[15] -attr @rip mem_data_out[15] -attr @name update_data[15] -pin UUT|Data_Memory mem_data_out[15] -pin UUT|memorycache update_data[15]
load net UUT|update_data[16] -attr @rip mem_data_out[16] -attr @name update_data[16] -pin UUT|Data_Memory mem_data_out[16] -pin UUT|memorycache update_data[16]
load net UUT|update_data[17] -attr @rip mem_data_out[17] -attr @name update_data[17] -pin UUT|Data_Memory mem_data_out[17] -pin UUT|memorycache update_data[17]
load net UUT|update_data[18] -attr @rip mem_data_out[18] -attr @name update_data[18] -pin UUT|Data_Memory mem_data_out[18] -pin UUT|memorycache update_data[18]
load net UUT|update_data[19] -attr @rip mem_data_out[19] -attr @name update_data[19] -pin UUT|Data_Memory mem_data_out[19] -pin UUT|memorycache update_data[19]
load net UUT|update_data[1] -attr @rip mem_data_out[1] -attr @name update_data[1] -pin UUT|Data_Memory mem_data_out[1] -pin UUT|memorycache update_data[1]
load net UUT|update_data[20] -attr @rip mem_data_out[20] -attr @name update_data[20] -pin UUT|Data_Memory mem_data_out[20] -pin UUT|memorycache update_data[20]
load net UUT|update_data[21] -attr @rip mem_data_out[21] -attr @name update_data[21] -pin UUT|Data_Memory mem_data_out[21] -pin UUT|memorycache update_data[21]
load net UUT|update_data[22] -attr @rip mem_data_out[22] -attr @name update_data[22] -pin UUT|Data_Memory mem_data_out[22] -pin UUT|memorycache update_data[22]
load net UUT|update_data[23] -attr @rip mem_data_out[23] -attr @name update_data[23] -pin UUT|Data_Memory mem_data_out[23] -pin UUT|memorycache update_data[23]
load net UUT|update_data[24] -attr @rip mem_data_out[24] -attr @name update_data[24] -pin UUT|Data_Memory mem_data_out[24] -pin UUT|memorycache update_data[24]
load net UUT|update_data[25] -attr @rip mem_data_out[25] -attr @name update_data[25] -pin UUT|Data_Memory mem_data_out[25] -pin UUT|memorycache update_data[25]
load net UUT|update_data[26] -attr @rip mem_data_out[26] -attr @name update_data[26] -pin UUT|Data_Memory mem_data_out[26] -pin UUT|memorycache update_data[26]
load net UUT|update_data[27] -attr @rip mem_data_out[27] -attr @name update_data[27] -pin UUT|Data_Memory mem_data_out[27] -pin UUT|memorycache update_data[27]
load net UUT|update_data[28] -attr @rip mem_data_out[28] -attr @name update_data[28] -pin UUT|Data_Memory mem_data_out[28] -pin UUT|memorycache update_data[28]
load net UUT|update_data[29] -attr @rip mem_data_out[29] -attr @name update_data[29] -pin UUT|Data_Memory mem_data_out[29] -pin UUT|memorycache update_data[29]
load net UUT|update_data[2] -attr @rip mem_data_out[2] -attr @name update_data[2] -pin UUT|Data_Memory mem_data_out[2] -pin UUT|memorycache update_data[2]
load net UUT|update_data[30] -attr @rip mem_data_out[30] -attr @name update_data[30] -pin UUT|Data_Memory mem_data_out[30] -pin UUT|memorycache update_data[30]
load net UUT|update_data[31] -attr @rip mem_data_out[31] -attr @name update_data[31] -pin UUT|Data_Memory mem_data_out[31] -pin UUT|memorycache update_data[31]
load net UUT|update_data[32] -attr @rip mem_data_out[32] -attr @name update_data[32] -pin UUT|Data_Memory mem_data_out[32] -pin UUT|memorycache update_data[32]
load net UUT|update_data[33] -attr @rip mem_data_out[33] -attr @name update_data[33] -pin UUT|Data_Memory mem_data_out[33] -pin UUT|memorycache update_data[33]
load net UUT|update_data[34] -attr @rip mem_data_out[34] -attr @name update_data[34] -pin UUT|Data_Memory mem_data_out[34] -pin UUT|memorycache update_data[34]
load net UUT|update_data[35] -attr @rip mem_data_out[35] -attr @name update_data[35] -pin UUT|Data_Memory mem_data_out[35] -pin UUT|memorycache update_data[35]
load net UUT|update_data[36] -attr @rip mem_data_out[36] -attr @name update_data[36] -pin UUT|Data_Memory mem_data_out[36] -pin UUT|memorycache update_data[36]
load net UUT|update_data[37] -attr @rip mem_data_out[37] -attr @name update_data[37] -pin UUT|Data_Memory mem_data_out[37] -pin UUT|memorycache update_data[37]
load net UUT|update_data[38] -attr @rip mem_data_out[38] -attr @name update_data[38] -pin UUT|Data_Memory mem_data_out[38] -pin UUT|memorycache update_data[38]
load net UUT|update_data[39] -attr @rip mem_data_out[39] -attr @name update_data[39] -pin UUT|Data_Memory mem_data_out[39] -pin UUT|memorycache update_data[39]
load net UUT|update_data[3] -attr @rip mem_data_out[3] -attr @name update_data[3] -pin UUT|Data_Memory mem_data_out[3] -pin UUT|memorycache update_data[3]
load net UUT|update_data[40] -attr @rip mem_data_out[40] -attr @name update_data[40] -pin UUT|Data_Memory mem_data_out[40] -pin UUT|memorycache update_data[40]
load net UUT|update_data[41] -attr @rip mem_data_out[41] -attr @name update_data[41] -pin UUT|Data_Memory mem_data_out[41] -pin UUT|memorycache update_data[41]
load net UUT|update_data[42] -attr @rip mem_data_out[42] -attr @name update_data[42] -pin UUT|Data_Memory mem_data_out[42] -pin UUT|memorycache update_data[42]
load net UUT|update_data[43] -attr @rip mem_data_out[43] -attr @name update_data[43] -pin UUT|Data_Memory mem_data_out[43] -pin UUT|memorycache update_data[43]
load net UUT|update_data[44] -attr @rip mem_data_out[44] -attr @name update_data[44] -pin UUT|Data_Memory mem_data_out[44] -pin UUT|memorycache update_data[44]
load net UUT|update_data[45] -attr @rip mem_data_out[45] -attr @name update_data[45] -pin UUT|Data_Memory mem_data_out[45] -pin UUT|memorycache update_data[45]
load net UUT|update_data[46] -attr @rip mem_data_out[46] -attr @name update_data[46] -pin UUT|Data_Memory mem_data_out[46] -pin UUT|memorycache update_data[46]
load net UUT|update_data[47] -attr @rip mem_data_out[47] -attr @name update_data[47] -pin UUT|Data_Memory mem_data_out[47] -pin UUT|memorycache update_data[47]
load net UUT|update_data[48] -attr @rip mem_data_out[48] -attr @name update_data[48] -pin UUT|Data_Memory mem_data_out[48] -pin UUT|memorycache update_data[48]
load net UUT|update_data[49] -attr @rip mem_data_out[49] -attr @name update_data[49] -pin UUT|Data_Memory mem_data_out[49] -pin UUT|memorycache update_data[49]
load net UUT|update_data[4] -attr @rip mem_data_out[4] -attr @name update_data[4] -pin UUT|Data_Memory mem_data_out[4] -pin UUT|memorycache update_data[4]
load net UUT|update_data[50] -attr @rip mem_data_out[50] -attr @name update_data[50] -pin UUT|Data_Memory mem_data_out[50] -pin UUT|memorycache update_data[50]
load net UUT|update_data[51] -attr @rip mem_data_out[51] -attr @name update_data[51] -pin UUT|Data_Memory mem_data_out[51] -pin UUT|memorycache update_data[51]
load net UUT|update_data[52] -attr @rip mem_data_out[52] -attr @name update_data[52] -pin UUT|Data_Memory mem_data_out[52] -pin UUT|memorycache update_data[52]
load net UUT|update_data[53] -attr @rip mem_data_out[53] -attr @name update_data[53] -pin UUT|Data_Memory mem_data_out[53] -pin UUT|memorycache update_data[53]
load net UUT|update_data[54] -attr @rip mem_data_out[54] -attr @name update_data[54] -pin UUT|Data_Memory mem_data_out[54] -pin UUT|memorycache update_data[54]
load net UUT|update_data[55] -attr @rip mem_data_out[55] -attr @name update_data[55] -pin UUT|Data_Memory mem_data_out[55] -pin UUT|memorycache update_data[55]
load net UUT|update_data[56] -attr @rip mem_data_out[56] -attr @name update_data[56] -pin UUT|Data_Memory mem_data_out[56] -pin UUT|memorycache update_data[56]
load net UUT|update_data[57] -attr @rip mem_data_out[57] -attr @name update_data[57] -pin UUT|Data_Memory mem_data_out[57] -pin UUT|memorycache update_data[57]
load net UUT|update_data[58] -attr @rip mem_data_out[58] -attr @name update_data[58] -pin UUT|Data_Memory mem_data_out[58] -pin UUT|memorycache update_data[58]
load net UUT|update_data[59] -attr @rip mem_data_out[59] -attr @name update_data[59] -pin UUT|Data_Memory mem_data_out[59] -pin UUT|memorycache update_data[59]
load net UUT|update_data[5] -attr @rip mem_data_out[5] -attr @name update_data[5] -pin UUT|Data_Memory mem_data_out[5] -pin UUT|memorycache update_data[5]
load net UUT|update_data[60] -attr @rip mem_data_out[60] -attr @name update_data[60] -pin UUT|Data_Memory mem_data_out[60] -pin UUT|memorycache update_data[60]
load net UUT|update_data[61] -attr @rip mem_data_out[61] -attr @name update_data[61] -pin UUT|Data_Memory mem_data_out[61] -pin UUT|memorycache update_data[61]
load net UUT|update_data[62] -attr @rip mem_data_out[62] -attr @name update_data[62] -pin UUT|Data_Memory mem_data_out[62] -pin UUT|memorycache update_data[62]
load net UUT|update_data[63] -attr @rip mem_data_out[63] -attr @name update_data[63] -pin UUT|Data_Memory mem_data_out[63] -pin UUT|memorycache update_data[63]
load net UUT|update_data[64] -attr @rip mem_data_out[64] -attr @name update_data[64] -pin UUT|Data_Memory mem_data_out[64] -pin UUT|memorycache update_data[64]
load net UUT|update_data[65] -attr @rip mem_data_out[65] -attr @name update_data[65] -pin UUT|Data_Memory mem_data_out[65] -pin UUT|memorycache update_data[65]
load net UUT|update_data[66] -attr @rip mem_data_out[66] -attr @name update_data[66] -pin UUT|Data_Memory mem_data_out[66] -pin UUT|memorycache update_data[66]
load net UUT|update_data[67] -attr @rip mem_data_out[67] -attr @name update_data[67] -pin UUT|Data_Memory mem_data_out[67] -pin UUT|memorycache update_data[67]
load net UUT|update_data[68] -attr @rip mem_data_out[68] -attr @name update_data[68] -pin UUT|Data_Memory mem_data_out[68] -pin UUT|memorycache update_data[68]
load net UUT|update_data[69] -attr @rip mem_data_out[69] -attr @name update_data[69] -pin UUT|Data_Memory mem_data_out[69] -pin UUT|memorycache update_data[69]
load net UUT|update_data[6] -attr @rip mem_data_out[6] -attr @name update_data[6] -pin UUT|Data_Memory mem_data_out[6] -pin UUT|memorycache update_data[6]
load net UUT|update_data[70] -attr @rip mem_data_out[70] -attr @name update_data[70] -pin UUT|Data_Memory mem_data_out[70] -pin UUT|memorycache update_data[70]
load net UUT|update_data[71] -attr @rip mem_data_out[71] -attr @name update_data[71] -pin UUT|Data_Memory mem_data_out[71] -pin UUT|memorycache update_data[71]
load net UUT|update_data[72] -attr @rip mem_data_out[72] -attr @name update_data[72] -pin UUT|Data_Memory mem_data_out[72] -pin UUT|memorycache update_data[72]
load net UUT|update_data[73] -attr @rip mem_data_out[73] -attr @name update_data[73] -pin UUT|Data_Memory mem_data_out[73] -pin UUT|memorycache update_data[73]
load net UUT|update_data[74] -attr @rip mem_data_out[74] -attr @name update_data[74] -pin UUT|Data_Memory mem_data_out[74] -pin UUT|memorycache update_data[74]
load net UUT|update_data[75] -attr @rip mem_data_out[75] -attr @name update_data[75] -pin UUT|Data_Memory mem_data_out[75] -pin UUT|memorycache update_data[75]
load net UUT|update_data[76] -attr @rip mem_data_out[76] -attr @name update_data[76] -pin UUT|Data_Memory mem_data_out[76] -pin UUT|memorycache update_data[76]
load net UUT|update_data[77] -attr @rip mem_data_out[77] -attr @name update_data[77] -pin UUT|Data_Memory mem_data_out[77] -pin UUT|memorycache update_data[77]
load net UUT|update_data[78] -attr @rip mem_data_out[78] -attr @name update_data[78] -pin UUT|Data_Memory mem_data_out[78] -pin UUT|memorycache update_data[78]
load net UUT|update_data[79] -attr @rip mem_data_out[79] -attr @name update_data[79] -pin UUT|Data_Memory mem_data_out[79] -pin UUT|memorycache update_data[79]
load net UUT|update_data[7] -attr @rip mem_data_out[7] -attr @name update_data[7] -pin UUT|Data_Memory mem_data_out[7] -pin UUT|memorycache update_data[7]
load net UUT|update_data[80] -attr @rip mem_data_out[80] -attr @name update_data[80] -pin UUT|Data_Memory mem_data_out[80] -pin UUT|memorycache update_data[80]
load net UUT|update_data[81] -attr @rip mem_data_out[81] -attr @name update_data[81] -pin UUT|Data_Memory mem_data_out[81] -pin UUT|memorycache update_data[81]
load net UUT|update_data[82] -attr @rip mem_data_out[82] -attr @name update_data[82] -pin UUT|Data_Memory mem_data_out[82] -pin UUT|memorycache update_data[82]
load net UUT|update_data[83] -attr @rip mem_data_out[83] -attr @name update_data[83] -pin UUT|Data_Memory mem_data_out[83] -pin UUT|memorycache update_data[83]
load net UUT|update_data[84] -attr @rip mem_data_out[84] -attr @name update_data[84] -pin UUT|Data_Memory mem_data_out[84] -pin UUT|memorycache update_data[84]
load net UUT|update_data[85] -attr @rip mem_data_out[85] -attr @name update_data[85] -pin UUT|Data_Memory mem_data_out[85] -pin UUT|memorycache update_data[85]
load net UUT|update_data[86] -attr @rip mem_data_out[86] -attr @name update_data[86] -pin UUT|Data_Memory mem_data_out[86] -pin UUT|memorycache update_data[86]
load net UUT|update_data[87] -attr @rip mem_data_out[87] -attr @name update_data[87] -pin UUT|Data_Memory mem_data_out[87] -pin UUT|memorycache update_data[87]
load net UUT|update_data[88] -attr @rip mem_data_out[88] -attr @name update_data[88] -pin UUT|Data_Memory mem_data_out[88] -pin UUT|memorycache update_data[88]
load net UUT|update_data[89] -attr @rip mem_data_out[89] -attr @name update_data[89] -pin UUT|Data_Memory mem_data_out[89] -pin UUT|memorycache update_data[89]
load net UUT|update_data[8] -attr @rip mem_data_out[8] -attr @name update_data[8] -pin UUT|Data_Memory mem_data_out[8] -pin UUT|memorycache update_data[8]
load net UUT|update_data[90] -attr @rip mem_data_out[90] -attr @name update_data[90] -pin UUT|Data_Memory mem_data_out[90] -pin UUT|memorycache update_data[90]
load net UUT|update_data[91] -attr @rip mem_data_out[91] -attr @name update_data[91] -pin UUT|Data_Memory mem_data_out[91] -pin UUT|memorycache update_data[91]
load net UUT|update_data[92] -attr @rip mem_data_out[92] -attr @name update_data[92] -pin UUT|Data_Memory mem_data_out[92] -pin UUT|memorycache update_data[92]
load net UUT|update_data[93] -attr @rip mem_data_out[93] -attr @name update_data[93] -pin UUT|Data_Memory mem_data_out[93] -pin UUT|memorycache update_data[93]
load net UUT|update_data[94] -attr @rip mem_data_out[94] -attr @name update_data[94] -pin UUT|Data_Memory mem_data_out[94] -pin UUT|memorycache update_data[94]
load net UUT|update_data[95] -attr @rip mem_data_out[95] -attr @name update_data[95] -pin UUT|Data_Memory mem_data_out[95] -pin UUT|memorycache update_data[95]
load net UUT|update_data[96] -attr @rip mem_data_out[96] -attr @name update_data[96] -pin UUT|Data_Memory mem_data_out[96] -pin UUT|memorycache update_data[96]
load net UUT|update_data[97] -attr @rip mem_data_out[97] -attr @name update_data[97] -pin UUT|Data_Memory mem_data_out[97] -pin UUT|memorycache update_data[97]
load net UUT|update_data[98] -attr @rip mem_data_out[98] -attr @name update_data[98] -pin UUT|Data_Memory mem_data_out[98] -pin UUT|memorycache update_data[98]
load net UUT|update_data[99] -attr @rip mem_data_out[99] -attr @name update_data[99] -pin UUT|Data_Memory mem_data_out[99] -pin UUT|memorycache update_data[99]
load net UUT|update_data[9] -attr @rip mem_data_out[9] -attr @name update_data[9] -pin UUT|Data_Memory mem_data_out[9] -pin UUT|memorycache update_data[9]
load net UUT|valid -attr @name valid -pin UUT|cache_controller valid -pin UUT|memorycache valid
netloc UUT|valid 1 1 3 940 368 1380J 308 1890
load net UUT|write_en -attr @name write_en -pin UUT|cache_controller write_en -pin UUT|memorycache write_en
netloc UUT|write_en 1 2 1 1400 208n
load netBundle @UUT|Address 10 UUT|Address[9] UUT|Address[8] UUT|Address[7] UUT|Address[6] UUT|Address[5] UUT|Address[4] UUT|Address[3] UUT|Address[2] UUT|Address[1] UUT|Address[0] -autobundled
netbloc @UUT|Address 1 0 3 270 228 880 328 1420
load netBundle @UUT|Data_in 32 UUT|Data_in[31] UUT|Data_in[30] UUT|Data_in[29] UUT|Data_in[28] UUT|Data_in[27] UUT|Data_in[26] UUT|Data_in[25] UUT|Data_in[24] UUT|Data_in[23] UUT|Data_in[22] UUT|Data_in[21] UUT|Data_in[20] UUT|Data_in[19] UUT|Data_in[18] UUT|Data_in[17] UUT|Data_in[16] UUT|Data_in[15] UUT|Data_in[14] UUT|Data_in[13] UUT|Data_in[12] UUT|Data_in[11] UUT|Data_in[10] UUT|Data_in[9] UUT|Data_in[8] UUT|Data_in[7] UUT|Data_in[6] UUT|Data_in[5] UUT|Data_in[4] UUT|Data_in[3] UUT|Data_in[2] UUT|Data_in[1] UUT|Data_in[0] -autobundled
netbloc @UUT|Data_in 1 0 3 250 248 780 488 NJ
load netBundle @UUT|update_data 128 UUT|update_data[127] UUT|update_data[126] UUT|update_data[125] UUT|update_data[124] UUT|update_data[123] UUT|update_data[122] UUT|update_data[121] UUT|update_data[120] UUT|update_data[119] UUT|update_data[118] UUT|update_data[117] UUT|update_data[116] UUT|update_data[115] UUT|update_data[114] UUT|update_data[113] UUT|update_data[112] UUT|update_data[111] UUT|update_data[110] UUT|update_data[109] UUT|update_data[108] UUT|update_data[107] UUT|update_data[106] UUT|update_data[105] UUT|update_data[104] UUT|update_data[103] UUT|update_data[102] UUT|update_data[101] UUT|update_data[100] UUT|update_data[99] UUT|update_data[98] UUT|update_data[97] UUT|update_data[96] UUT|update_data[95] UUT|update_data[94] UUT|update_data[93] UUT|update_data[92] UUT|update_data[91] UUT|update_data[90] UUT|update_data[89] UUT|update_data[88] UUT|update_data[87] UUT|update_data[86] UUT|update_data[85] UUT|update_data[84] UUT|update_data[83] UUT|update_data[82] UUT|update_data[81] UUT|update_data[80] UUT|update_data[79] UUT|update_data[78] UUT|update_data[77] UUT|update_data[76] UUT|update_data[75] UUT|update_data[74] UUT|update_data[73] UUT|update_data[72] UUT|update_data[71] UUT|update_data[70] UUT|update_data[69] UUT|update_data[68] UUT|update_data[67] UUT|update_data[66] UUT|update_data[65] UUT|update_data[64] UUT|update_data[63] UUT|update_data[62] UUT|update_data[61] UUT|update_data[60] UUT|update_data[59] UUT|update_data[58] UUT|update_data[57] UUT|update_data[56] UUT|update_data[55] UUT|update_data[54] UUT|update_data[53] UUT|update_data[52] UUT|update_data[51] UUT|update_data[50] UUT|update_data[49] UUT|update_data[48] UUT|update_data[47] UUT|update_data[46] UUT|update_data[45] UUT|update_data[44] UUT|update_data[43] UUT|update_data[42] UUT|update_data[41] UUT|update_data[40] UUT|update_data[39] UUT|update_data[38] UUT|update_data[37] UUT|update_data[36] UUT|update_data[35] UUT|update_data[34] UUT|update_data[33] UUT|update_data[32] UUT|update_data[31] UUT|update_data[30] UUT|update_data[29] UUT|update_data[28] UUT|update_data[27] UUT|update_data[26] UUT|update_data[25] UUT|update_data[24] UUT|update_data[23] UUT|update_data[22] UUT|update_data[21] UUT|update_data[20] UUT|update_data[19] UUT|update_data[18] UUT|update_data[17] UUT|update_data[16] UUT|update_data[15] UUT|update_data[14] UUT|update_data[13] UUT|update_data[12] UUT|update_data[11] UUT|update_data[10] UUT|update_data[9] UUT|update_data[8] UUT|update_data[7] UUT|update_data[6] UUT|update_data[5] UUT|update_data[4] UUT|update_data[3] UUT|update_data[2] UUT|update_data[1] UUT|update_data[0] -autobundled
netbloc @UUT|update_data 1 1 2 760 468 NJ
load netBundle @UUT|cache_tag 3 UUT|cache_tag[2] UUT|cache_tag[1] UUT|cache_tag[0] -autobundled
netbloc @UUT|cache_tag 1 1 3 920 308 1360J 268 1910
load netBundle @UUT|Data_out 32 UUT|Data_out[31] UUT|Data_out[30] UUT|Data_out[29] UUT|Data_out[28] UUT|Data_out[27] UUT|Data_out[26] UUT|Data_out[25] UUT|Data_out[24] UUT|Data_out[23] UUT|Data_out[22] UUT|Data_out[21] UUT|Data_out[20] UUT|Data_out[19] UUT|Data_out[18] UUT|Data_out[17] UUT|Data_out[16] UUT|Data_out[15] UUT|Data_out[14] UUT|Data_out[13] UUT|Data_out[12] UUT|Data_out[11] UUT|Data_out[10] UUT|Data_out[9] UUT|Data_out[8] UUT|Data_out[7] UUT|Data_out[6] UUT|Data_out[5] UUT|Data_out[4] UUT|Data_out[3] UUT|Data_out[2] UUT|Data_out[1] UUT|Data_out[0] -autobundled
netbloc @UUT|Data_out 1 3 1 1930 268n
levelinfo -pg 1 0 180 2090
levelinfo -hier UUT * 530 1150 1690 *
pagesize -pg 1 -db -bbox -sgen 0 -10 2090 580
pagesize -hier UUT -db -bbox -sgen 180 28 1960 548
show
zoom 0.268243
scrollpos 76 -3
#
# initialize ictrl to current module Cache_Test work:Cache_Test:NOFILE
ictrl init topinfo |
