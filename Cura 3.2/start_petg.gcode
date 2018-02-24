;PETG: 220° / 70°

;This start setting doesn't include any auto home or bed leveling commands. Start them yourself
;before printing. Also it forces the starting temperatures, make sure to remove other commands
;from the generated gcode.

;{material_bed_temperature} Unused parameter to prevent cura from adding temperature
;{material_print_temperature} Another unused parameter

G21                                 ;metric values
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode

M140 S60                            ;set the bed temperature and continue on
M190 S60			              				;Wait for 70 degrees
M140 S70		              					;Set to 90 degrees

M104 S150                           ;already start heating up the extruder
M190 S70                            ;wait for the bed to be heated up
M104 S220                           ;set the extruder temperature and continue on
M109 S220                           ;wait for the extruder temperature

M107                                ;start with the fan off

G92 E0                              ;zero the extruded length

G1 F9000
M117 Printing...
