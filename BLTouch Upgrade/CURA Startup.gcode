M280S7.43 ;   Store Pin
G4S1;
G92Z0 ;       Reset Z Axis  
G1Z10F300 ;   Move 10mm down from current position;
G28;          Home Axis
G4S1;
G1X60Y60F5000;
M280S3.3 ;    Drop BLTOUCH Pin Down
G4P2;
G30Z3.3 ;     Probe down and set Z offset
M280S7.43 ;   Store BLTOUCHPin
G4S2;
G1Z10F500 ;   Move Z to 10mm
M280S3.3 ;    Drop BLTOUCH Pin Dow
G4S1;
G32;         Start Bed Levelling
M280S7.43;   Store Pin
M500 ;       save results
G4S3;
G28;         Home Axis




