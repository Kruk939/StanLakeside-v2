params ["_seed"];
private ["_plant", "_aciton"];

if((count RPF_plantArray) > 6) exitwith { ["Nie możesz posadzić więcej niż 7 krzaczków!",false] spawn ClientModules_Notification_fnc_doMsg; };

_no = nearestObjects [player, RPF_plantTypes, 2];

if (count _no == 0) then {
	switch (_seed) do {
		case "RPF_Items_PoppySeed": {
			_plantC = "RPF_Plant_Poppy";
			_plant = createVehicle [_plantC, [0,0,0], [], 0, "NONE"];
			_plant attachto [player, [0, 1.3, -1] ]; 
			RPF_plantArray pushBack _plant;
			RPF_currentSeed = "RPF_Items_PoppySeed";
			_action = player addAction [ "Zasadź sadzonkę", ClientModules_Farming_fnc_dropPlantae, _plant ];
		};
		case "RPF_Items_OliveSeed": {
			_plantC = "RPF_Plant_Olive";
			_plant = createVehicle [_plantC, [0,0,0], [], 0, "NONE"];
			_plant attachto [player, [0, 1.3, -1] ]; 
			RPF_plantArray pushBack _plant;
			RPF_currentSeed = "RPF_Items_OliveSeed";
			_action = player addAction [ "Zasadź sadzonkę", ClientModules_Farming_fnc_dropPlantae, _plant ];
		};
		case "NP_GrowingPlot": {
			_plantC = "RPF_Plant_Olive";
			_plantC = "vvv_cannabis1_plan";
			_plant = createVehicle [_plantC, [0,0,0], [], 0, "NONE"];
			_plant attachto [player, [0, 1.3, -1] ]; 
			_plant setVariable ["itemFinish", _plantC, 0];
			RPF_plantArray pushBack _plant;
			RPF_currentSeed = "NP_GrowingPlot";
			_action = player addAction [ "Zasadź sadzonkę", ClientModules_Farming_fnc_dropPlantae, _plant ];
		};
	};
} else {
	hint "Nie możesz posadzić kolejnej tak blisko!";
};
