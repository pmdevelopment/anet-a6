;PLA: Preheats to 140°/50°

;This start setting doesn't include any auto home or bed leveling commands. Start them yourself
;before printing.

; Another unused parameter

G21                                 ;metric values
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode

M140 S50                            ;set the bed temperature and continue on

G1 X0 Y0 F3000                      ;Move to Corner
G1 Z0    F1500                      ;Lower nozzle to the bed

M190 S50                            ;wait for the heated bed to get some temperature

M140 S{material_bed_temperature}    ;set the final temperature for the heated bed
M104 S140                           ;already start heating up the extruder
M190 S{material_bed_temperature}    ;wait for the bed to be heated up
M104 S{material_print_temperature}  ;set the final extruder temperature and continue on
M109 S{material_print_temperature}  ;wait for the extruder temperature

M107                                ;start with the fan off

G92 E0                              ;zero the extruded length

G1 F9000
M117 Printing...
