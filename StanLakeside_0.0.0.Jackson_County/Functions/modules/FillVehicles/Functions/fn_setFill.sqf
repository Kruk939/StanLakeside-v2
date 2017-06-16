private ["_count"];

_nearVehicles = nearestObjects [player, ["Car","Air","Ship"], 10];
FillVehicles_var_startPos = getpos player;

if ((count _nearVehicles) < 1) exitwith {hint "W poblizu nie ma zadnych pojazdow!";};

hint "Wybierz pojazd do zatankowania!";

Rpf_filling = 1;
