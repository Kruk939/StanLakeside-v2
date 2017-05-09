if(isNull cursorTarget) exitWith { createdialog "medical_findPlayer"; };
if(!(cursorTarget IN playableUnits)) exitWith { createdialog "medical_findPlayer"; };
if(player distance cursorTarget > 4) exitWith { createdialog "medical_findPlayer"; };
[cursorTarget] spawn ClientModules_medical_fnc_medicUpdater;
