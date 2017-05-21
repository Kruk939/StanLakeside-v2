private ["_count"];

FillVehicles_var_vehicleLIST = nearestObjects [player, ["Car","Air","Ship"], 10];
_count = count FillVehicles_var_vehicleLIST;

if (_count < 1) exitwith {hint "W poblizu nie ma zadnych pojazdow!";};

hint "Wybierz pojazd do zatankowania!";

Rpf_filling = 1;
