/*
	File: fn_intoxTestReturn.sqf
	@Deo
	Description:
	Returns the Intox Results.
*/

params [["_civ", Objnull, [Objnull]], ["_intox", 0, [0]]];

if(isNull _civ) exitWith {};

if(_intox > 0.08) then
{
	[format[(localize "STR_RPF_MODULES_INTOX_BREATHTEST"),name _civ,_intox], false] spawn domsg;
}
else
{
	[format[(localize "STR_RPF_MODULES_INTOX_BREATHTEST1"),name _civ,_intox], false] spawn domsg;
};

/*if (_intox > 0.20) then
{
	[getPlayerUID _civ,name _civ,"647"] remoteExec ["life_fnc_wantedAdd",2];
};*/
