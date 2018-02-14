;{material_bed_temperature} Unused parameter to prevent cura from adding temperature
;{material_print_temperature} Another unused parameter

G21                                 ;metric values
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode

M140 S65                            ;set the bed temperature and continue on


G28                                 ;Auto home (all axes)
G29                                 ;Auto bed leveling

M104 S100                           ;already start heating up the extruder
M190 S65                            ;wait for the bed to be heated up
M104 S200                           ;set the extruder temperature and continue on
M109 S200                           ;wait for the extruder temperature

M107                                ;start with the fan off

G92 E0                              ;zero the extruded length
G1 F200 E8                          ;extrude 9mm of feed stock
G92 E0                              ;zero the extruded length again
G1 F9000
M117 Printing...
