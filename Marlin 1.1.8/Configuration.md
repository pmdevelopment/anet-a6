# Configuration.h

## Printer Settings

Option                                  | Default       | New       | Setting 
--------------------------------------- | ------------- | --------- | -----------
Machine Label                           | -             | Anet A6   | #define CUSTOM_MACHINE_NAME "Anet A6"
Filament diameter                       | 3.0           | 1.75      | #define DEFAULT_NOMINAL_FILAMENT_DIA 1.75
Waiting for stable extruder temperature | 10            | 6         | #define TEMP_RESIDENCY_TIME 6
Waiting for stable bed temperature      | 10            | 6         | #define TEMP_BED_RESIDENCY_TIME 6


## Manual Leveling Settings

Option                                  | Setting 
--------------------------------------- | -----------------------
Disable safe Z homing                   | //#define Z_SAFE_HOMING


## Auto Leveling Settings

### Universal

Option                                  | Setting 
--------------------------------------- | -----------------------
Enable safe Z homing                    | #define Z_SAFE_HOMING

### Sensor

#### LJ18A3-8-Z/BX (Inductive 8mm)

[Amazon](http://amzn.to/2I8QVjB)

Option                                  | Setting 
--------------------------------------- | -----------------------
Z axis probe endstop signal             | #define Z_MIN_PROBE_ENDSTOP_INVERTING true
Enable probe                            | #define FIX_MOUNTED_PROBE
Turn of heaters while probing           | #define PROBING_HEATERS_OFF
Turn of fans while probing              | #define PROBING_FANS_OFF
Travel speed while probing              | #define XY_PROBE_SPEED 8000
Repetition per probe                    | #define MULTIPLE_PROBING 2
Type of leveling                        | #define AUTO_BED_LEVELING_LINEAR


### Mount
 
#### Thingiverse 2586179

[Download](https://www.thingiverse.com/thing:2586179)

Option                                  | Setting 
--------------------------------------- | -----------------------
Probe X offset                          | #define X_PROBE_OFFSET_FROM_EXTRUDER -38
Probe Y offset                          | #define Y_PROBE_OFFSET_FROM_EXTRUDER   5
Probe Z offset                          | #define Z_PROBE_OFFSET_FROM_EXTRUDER   0
Probe left position                     | #define LEFT_PROBE_BED_POSITION 20
Probe right position                    | #define RIGHT_PROBE_BED_POSITION 160
Probe front position                    | #define FRONT_PROBE_BED_POSITION 20
Probe back position                     | #define BACK_PROBE_BED_POSITION 180
