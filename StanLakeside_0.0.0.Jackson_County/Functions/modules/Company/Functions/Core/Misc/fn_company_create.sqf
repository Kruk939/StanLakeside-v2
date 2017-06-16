/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.06.2017
		Params:
			0 - Number, id of company player to check
		Description: Checking if player works for company given with id
		Return: Boolean
*/
disableSerialization;
private["_display", "_edit_shortcut", "_edit_fullname"];
_display = findDisplay 666012;
_edit_shortcut = _display displayCtrl 1400;
_edit_fullname = _display displayCtrl 1401;
