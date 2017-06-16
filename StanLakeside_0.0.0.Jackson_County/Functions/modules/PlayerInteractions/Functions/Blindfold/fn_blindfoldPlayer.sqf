RPF_imBlindfolded = true;
playSound3D ["sl_playerinteractions_blindfold", player, false, getPosASL player, 1, 1, 10];
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]];
"colorCorrections" ppEffectCommit 0.3;
RPF_blindfold_oldHeadgear = headgear player;
removeHeadGear player;
player addheadgear "mgsr_headbag";

while{RPF_imBlindfolded} do {
	if(headgear player != "mgsr_headbag") exitwith {
		RPF_imBlindfolded = false;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];
		"colorCorrections" ppEffectCommit 3;
		"colorCorrections" ppEffectEnable false;
	};
	sleep 1;
};
RPF_imBlindfolded = false;
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable false;