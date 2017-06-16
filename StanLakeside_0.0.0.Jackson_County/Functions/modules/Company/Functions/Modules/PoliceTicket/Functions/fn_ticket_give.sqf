/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params:
		Description: Reads personal data and display it on computer screen.
		Return: none
*/
private["_target","_display","_edit_amount","_edit_points","_edit_reason","_amount","_points","_reason"];
_target = currentCursorTarget;
if(!dialog) exitWith {};
if(isNull _target) exitWith {};
if((player distance _target) > 10) exitWith {};

disableSerialization;
_display = findDisplay 666006;
_edit_amount = _display displayCtrl 1001;
_edit_points = _display displayCtrl 1002;
_edit_reason = _display displayCtrl 1003;
_amount = ctrlText _edit_amount;
_points = ctrlText _edit_points;
_reason = ctrlText _edit_reason;
player playmove "vvv_anim_ticket";
[[_amount, _points, _reason],player] remoteExec ["ClientModules_CompanyModules_fnc_ticket_receive", _target];
closeDialog 0;
