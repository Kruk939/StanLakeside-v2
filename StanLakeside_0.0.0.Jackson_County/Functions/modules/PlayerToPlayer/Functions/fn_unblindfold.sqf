RPF_blindfolded = false;
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable false;	

removeHeadGear player;
player addheadgear RPF_oldHeadgear;