/*
		Author: Kajetan "Kruk" Mruk
		Date: 12.06.2017
		Params:
		Description: Mark player as dead so he cannot be revived
		Return: none
*/
private["_isUnconsious"];
_isUnconsious = cursorTarget getVariable ["medical_deadPlayer",false];
if (!_isUnconsious) exitWith {};
cursorTarget setVariable ["EMS_markedDead",true,true];
