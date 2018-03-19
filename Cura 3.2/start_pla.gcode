;PLA: 200° / 65°

;This start setting doesn't include any auto home or bed leveling commands. Start them yourself
;before printing. Also it forces the starting temperatures, make sure to remove other commands
;from the generated gcode.

;{material_bed_temperature} Unused parameter to prevent cura from adding temperature
;{material_print_temperature} Another unused parameter

G21                                 ;metric values
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode

M140 S50                            ;set the bed temperature and continue on

G1 X0 Y0 F3000                      ;Move to Corner
G1 Z0    F1500                      ;Lower nozzle to the bed

M190 S50                            ;wait for the heated bed to get some temperature

M140 S65                            ;set the final temperature for the heated bed
M104 S100                           ;already start heating up the extruder
M190 S65                            ;wait for the bed to be heated up
M104 S200                           ;set the final extruder temperature and continue on
M109 S200                           ;wait for the extruder temperature

M107                                ;start with the fan off

G92 E0                              ;zero the extruded length

G1 F9000
M117 Printing...
