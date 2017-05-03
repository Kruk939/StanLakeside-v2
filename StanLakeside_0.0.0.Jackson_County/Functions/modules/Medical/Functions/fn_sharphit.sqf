/*
sharp melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; medical_istazed = false;};
if(medical_deadPlayer) exitWith {};
if(_shooter isKindOf "Man" && !medical_deadPlayer) then {
	["Remove",0.1] call ClientModules_medical_fnc_doHealth;
};