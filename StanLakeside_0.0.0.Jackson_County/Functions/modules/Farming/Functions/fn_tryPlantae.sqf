/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

if ((surfaceType position player) in RPF_farmGroundTypes) then {
	[_seed, player] call ClientModules_Farming_fnc_plantPlantae;
} else {
	player addItem _seed;
	hint (localize "STR_RPF_MODULES_FARMING_CANTPLANT");
};