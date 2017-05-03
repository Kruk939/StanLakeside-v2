RPF_blindfolded = true;
"colorCorrections" ppEffectEnable true;			
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
"colorCorrections" ppEffectCommit 0.3;
RPF_oldHeadgear = headgear player;
removeHeadGear player;
player addheadgear "mgsr_headbag";

while{RPF_blindfolded} do {
	if(headgear player != "mgsr_headbag") exitwith { 
		RPF_blindfolded = false;
		"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
		"colorCorrections" ppEffectCommit 3;
		"colorCorrections" ppEffectEnable false;	
	};
	sleep 1;
};
RPF_blindfolded = false;
"colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1],  [0, 0, 0, 0.0]]; 
"colorCorrections" ppEffectCommit 3;
"colorCorrections" ppEffectEnable false;	