/*
	File: fn_testIntox.sqf
	@Deo
	Description:
	Starts the testing process.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
[(localize "STR_RPF_MODULES_INTOX_BREATHTEST2"), false] spawn domsg;
uiSleep 2;
if(player distance _unit > 5 || deadPlayer || !alive _unit) exitWith {[(localize "STR_RPF_MODULES_INTOX_BREATHTESTFAIL"), false] spawn domsg;};
[player] remoteExec ["client_fnc_testIntoxClient",_unit];
