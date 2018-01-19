G21            ;metric values
G90            ;absolute positioning
M82            ;set extruder to absolute mode
M107           ;start with the fan off
M140 S0        ;Heated bed off
G28            ;Auto home (all axes)
G29            ;Auto bed leveling
M140 S65       ;Heated bed to 65
G92 E0         ;zero the extruded length
G1 F200 E8     ;extrude 9mm of feed stock
G92 E0         ;zero the extruded length again
G1 F9000
M117 Printing...