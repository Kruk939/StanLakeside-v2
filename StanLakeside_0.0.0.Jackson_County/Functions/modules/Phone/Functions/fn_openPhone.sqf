/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
if (!call TFAR_fnc_haveSWRadio) exitWith {hint "Nie posiadasz telefonu!"};
closeDialog 0;
createDialog "phone";
[] call ClientModules_Phone_fnc_loadSkin;