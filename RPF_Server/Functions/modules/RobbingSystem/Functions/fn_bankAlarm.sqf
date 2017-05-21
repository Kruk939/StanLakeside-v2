while {RPFServer_BankRobbing && RPFServer_BankOneSound < 6} do {
	playSound3D ["sl_client\sounds\bankAlarm.ogg", RPFServer_BankOne, false, getPosASL RPFServer_BankOne, 2, 1, 150]; 
	sleep 130;
	RPFServer_BankOneSound = RPFServer_BankOneSound + 1;
};
while {RPFServer_BankRobbingSecond && RPFServer_BankTwoSound < 6} do {
	playSound3D ["sl_client\sounds\bankAlarm.ogg", RPFServer_BankTwo, false, getPosASL RPFServer_BankTwo, 2, 1, 150]; 
	sleep 130;
	RPFServer_BankTwoSound = RPFServer_BankTwoSound + 1;
};