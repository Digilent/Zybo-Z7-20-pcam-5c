#Associate IDELAYCTRL with IDELAYE2 primitives
set_property IODELAY_GROUP MIPI_DPHY [get_cells {*GenIDELAYCTRL.IDelayCtrlX *DPHY_LaneSFEN_X/HSDeserializerX/InputDelay *ClockLane/HSClockingX/InputDelay }]

### Asynchronous clock domain crossings ###
set_false_path -through [get_pins -filter {NAME =~ *SyncAsync*/oSyncStages*/PRE || NAME =~ *SyncAsync*/oSyncStages*/CLR} -hier]
set_false_path -through [get_pins -filter {NAME =~ *SyncAsync*/oSyncStages_reg[0]/D} -hier]
#set_false_path -through [get_pins -filter {NAME =~ *SyncBase*/iIn_q*/PRE || NAME =~ *SyncBase*/iIn_q*/CLR} -hier]