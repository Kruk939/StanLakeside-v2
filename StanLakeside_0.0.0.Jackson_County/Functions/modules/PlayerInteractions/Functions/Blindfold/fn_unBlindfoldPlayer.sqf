RPF_imBlindfolded = false;
playSound3D ["sl_playerinteractions_blindfold", player, false, getPosASL player, 1, 1, 10];
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]];
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable false;
removeHeadGear player;
player addheadgear RPF_blindfold_oldHeadgear;