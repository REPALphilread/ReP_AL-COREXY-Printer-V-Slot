M280 S7.43				; Store Pin
G92 Z0					; Reset Z Axis
G1 Z10 F300;				; Move 10mm down from current position
G28;					; Home Axis
G1 X150 Y150 F2000			; Go to center of the bed			
M280 S3.3				; Drop BLTOUCH Pin Down
G4 S1					; Wait 1 second
G32					; Start Bed Levelling
M500					; save results
M280 S7.43				; Store BLTOUCHPin
G1 X150 Y150 F2000			; Go to center of the bed
M280 S3.3				; Drop BLTOUCH Pin Down
G4 S1					; Wait 1 second
G30 Z3.7;				; Probe down and set Z offset
M280 S7.43				; Store BLTOUCHPin
G4 S1					; Wait 1 second
G1 Z1.0 F400				; Go to Z=1









