{
	detach _x
} forEach attachedObjects player;

RPF_nowMethCooking = true;
player removeAction RPF_actionMethLab;
player removeAction RPF_actionTwoMethLab;

myActionStart = RPF_methLabObj addAction [ "Zacznij gotować", {  
	[] spawn ClientModules_methLab_fnc_initMethCooking;
	RPF_lvlMeth = 100;
	RPF_drugValue = 100;
	RPF_methLabObj removeaction myActionStart;
	myAction1 = RPF_methLabObj addAction [ "Zmieszaj aceton", { ["Acetone"] call ClientModules_methLab_fnc_doMethCooking; } ];
	myAction2 = RPF_methLabObj addAction [ "Dodaj pseudoefedrynę", { ["Pseudo"] call ClientModules_methLab_fnc_doMethCooking; } ];
	myAction3 = RPF_methLabObj addAction [ "Zmniejsz temperaturę", { ["Cool"] call ClientModules_methLab_fnc_doMethCooking; } ];
	myAction4 = RPF_methLabObj addAction [ "Zwiększ temperaturę", { ["Heat"] call ClientModules_methLab_fnc_doMethCooking; } ];
	myAction5 = RPF_methLabObj addAction [ "Obniż ciśnienie", { ["Release"] call ClientModules_methLab_fnc_doMethCooking; } ];
	//[player,objNull,27,format ["%1 postawił stół do mety",name player],""] remoteExec ["server_fnc_actionLog", 2];
} ];