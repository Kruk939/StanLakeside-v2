/*
Author: Kerkkoh
First Edit: 20.4.2016
*/
params ["_seed"];

if ((surfaceType position player) in RPF_farmGroundTypes) then {
	[_seed, player] spawn ClientModules_Farming_fnc_plantPlantae;
} else {
	player addItem _seed;
	hint "Can't plant here";
};