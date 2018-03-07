# Configuration.h

## Printer Settings

Option                                  | Default       | New       | Setting 
--------------------------------------- | ------------- | --------- | -----------
Machine Label                           | -             | Anet A6   | #define CUSTOM_MACHINE_NAME "Anet A6"
Filament diameter                       | 3.0           | 1.75      | #define DEFAULT_NOMINAL_FILAMENT_DIA 1.75
Waiting for stable extruder temperature | 10            | 6         | #define TEMP_RESIDENCY_TIME 6
Waiting for stable bed temperature      | 10            | 6         | #define TEMP_BED_RESIDENCY_TIME 6



## Auto Leveling Settings

These settings depend on the hardware and parts used.

### Sensor: LJ18A3-8-Z/BX (Inductive 8mm)

Option                                  | Setting 
--------------------------------------- | -----------------------
Z axis probe endstop signal             | #define Z_MIN_PROBE_ENDSTOP_INVERTING true
Enable probe                            | #define FIX_MOUNTED_PROBE
Turn of heaters while probing           | #define PROBING_HEATERS_OFF
Turn of fans while probing              | #define PROBING_FANS_OFF
Travel speed while probing              | #define XY_PROBE_SPEED 8000
Repetition per probe                    | #define MULTIPLE_PROBING 2
Type of leveling                        | #define AUTO_BED_LEVELING_LINEAR


### Mount: Thingiverse 2586179

Option                                  | Setting 
--------------------------------------- | -----------------------
Probe X offset                          | #define X_PROBE_OFFSET_FROM_EXTRUDER -38
Probe Y offset                          | #define Y_PROBE_OFFSET_FROM_EXTRUDER   5
Probe Z offset                          | #define Z_PROBE_OFFSET_FROM_EXTRUDER   0
Probe left position                     | #define LEFT_PROBE_BED_POSITION 0
Probe right position                    | #define RIGHT_PROBE_BED_POSITION 160
Probe front position                    | #define FRONT_PROBE_BED_POSITION 0
Probe back position                     | #define BACK_PROBE_BED_POSITION 200
