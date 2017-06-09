/*
Author: Kerkkoh
First Edit: 24.11.2015
*/
params ["_veh"];
if ((RPF_Cars find _veh) != -1) then {
	_locked = locked _veh;
	if(_locked isEqualTo 2 || _locked isEqualTo 3) then {
		[player, "unlockCar"] remoteExecCall ["Client_fnc_playSound", 0];
		_veh lock 0;
	} else {
		[player, "unlockCar"] remoteExecCall ["Client_fnc_playSound", 0];
		_veh lock 2;
	};
} else {
	hint "Your key can't open this vehicle.";
};