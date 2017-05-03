params ["_plant"];
switch (typeof _plant) do {
	case "RPF_Plant_Olive": {[_plant] call ClientModules_Farming_fnc_cutDownPlantae;};
	case "RPF_Plant_Poppy": {[_plant] call ClientModules_Farming_fnc_cutDownPlantae;};
	case "vvv_cannabis1_plan": {[_plant] call ClientModules_Farming_fnc_cutDownWeedPlantae;};
};