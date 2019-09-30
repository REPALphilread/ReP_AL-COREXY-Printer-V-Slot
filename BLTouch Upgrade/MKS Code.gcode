
# Switch module for Bltouch control
# ==============================================
switch.servo.enable                        true          # Activate this new module
switch.servo.input_on_command              M280          # Command to set PWM value
switch.servo.input_off_command             M281          # Command to turn off switch
switch.servo.output_pin                    1.23          # This must be a PWM pin, see smoothieware.org/pinout   
switch.servo.output_type                   hwpwm         # Hardware PWM, as software PWM is not adequate for servo/bltouch
switch.servo.pwm_period_ms                 20            # 20ms period, or 50Hz



# Enable Probe
# =======================================
gamma_min_endstop            nc                 # normally 1.28. Change to nc to prevent conflict, not needed on Azteeg X5

zprobe.enable                true               # set to true to enable a zprobe
zprobe.probe_pin             1.28^              # pin probe is attached to if NC remove the !, Azteeg X5 this is 1.29
zprobe.slow_feedrate         5                  # mm/sec probe feed rate
#zprobe.debounce_ms          1                  # set if noisy
zprobe.fast_feedrate         100                # move feedrate
zprobe.probe_height          5                  # how much above bed to start probe NB only needed for G32 on delta
zprobe.return_feedrate       0                  # feedrate after a probe, default 0 is double of slow_feedrate (mm/s)
zprobe.max_z                 200                # maximum default travel for the probe command, will use gamma_max if not defined


# Levelling Strategy Rectangle Grid
#=========================================================================================
leveling-strategy.rectangular-grid.enable               true     # The strategy must be enabled in the config, as well as the zprobe module.
leveling-strategy.rectangular-grid.x_size               300      # size of bed in the X axis
leveling-strategy.rectangular-grid.y_size               300      # size of bed in the Y axis
leveling-strategy.rectangular-grid.size                 3 	     # The size of the grid, for example, 7 causes a 7x7 grid with 49 points. 
                                                                 # Must be an odd number.
leveling-strategy.rectangular-grid.do_home              false              
leveling-strategy.rectangular-grid.probe_offsets        0,0,0    # Optional probe offsets from the nozzle or tool head
leveling-strategy.rectangular-grid.save                 false    # If the saved grid is to be loaded on boot then this must be set to true
leveling-strategy.rectangular-grid.initial_height       10       # will move to Z10 before the first probe
mm_per_line_segment      



# 3 Point Levelling strategy
# =======================================
leveling-strategy.three-point-leveling.enable       false           # Set to true to enable the leveling strategy that probes three points to define
                                                                    # a plane and then keeps the Z parallel to that plane. This is useful if 
                                                                    # your Z plate/bed is not perfectly aligned with your XY gantry
leveling-strategy.three-point-leveling.point1        100.0,30.0     # The first probe point (X, Y)
leveling-strategy.three-point-leveling.point2        200.0,200.0    # The second probe point (X, Y)
leveling-strategy.three-point-leveling.point3        30.0,200.0     # The third probe point (X, Y)
leveling-strategy.three-point-leveling.home_first    false          # Home the X and Y axes before probing
leveling-strategy.three-point-leveling.tolerance     0.03           # The probe tolerance in millimetres, anything less that this will be
                                                                    # ignored, default is 0.03mm
leveling-strategy.three-point-leveling.probe_offsets -30,-30,0      # The probe offset from nozzle, must be X,Y,Z (Z should always be 0), 
                                                                    # default is no offset. This is used if your nozzle is not exactly 
                                                                    # at the same position as where your tool would be.
leveling-strategy.three-point-leveling.save_plane    true           # Set to true to allow the bed plane to be saved with M500, default is false
