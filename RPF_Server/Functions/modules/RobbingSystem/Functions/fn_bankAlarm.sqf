while {RPFServer_BankRobbing} do {
	playSound3D ["sl_client\sounds\bankAlarm.ogg", RPFServer_BankOne, false, getPosASL RPFServer_BankOne, 2, 1, 150]; 
};
while {RPFServer_BankRobbingSecond} do {
	playSound3D ["sl_client\sounds\bankAlarm.ogg", RPFServer_BankTwo, false, getPosASL RPFServer_BankTwo, 2, 1, 150]; 
};