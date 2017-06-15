if ((player getVariable ["gag",false])) exitWith {
	player setVariable ["gag",false,true];
	playSound3D ["sl_playerinteractions_blindfold", player, false, getPosASL player, 1, 1, 10];
	player setVariable ["tf_voiceVolume", 1, true];
};