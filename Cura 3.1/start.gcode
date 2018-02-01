G21                                 ;metric values
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode

M140 S{material_bed_temperature}    ;set the bed temperature and continue on

G28                                 ;Auto home (all axes)
G29                                 ;Auto bed leveling

M190 S{material_bed_temperature}    ;wait for the bed to be heated up
M104 S{material_print_temperature}  ;set the extruder temperature and continue on
M109 S{material_print_temperature}  ;wait for the extruder temperature

M107                                ;start with the fan off

G92 E0                              ;zero the extruded length
G1 F200 E8                          ;extrude 9mm of feed stock
G92 E0                              ;zero the extruded length again
G1 F9000
M117 Printing...
