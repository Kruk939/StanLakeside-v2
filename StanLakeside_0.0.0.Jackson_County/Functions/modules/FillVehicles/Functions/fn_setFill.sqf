private ["_count"];

_nearVehicles = nearestObjects [player, ["Car","Air","Ship"], 10];
FillVehicles_var_startPos = getpos player;

if ((count _nearVehicles) < 1) exitwith {hint (localize "STR_RPF_MODULES_FILLVEHICLES_NONEARBY");};

hint (localize "STR_RPF_MODULES_FILLVEHICLES_SELECT");

Rpf_filling = 1;
