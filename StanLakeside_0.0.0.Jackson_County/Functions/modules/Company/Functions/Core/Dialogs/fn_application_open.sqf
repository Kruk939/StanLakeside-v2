private["_display","_text_name"];
if(dialog) then { closeDialog 0; };
disableSerialization;
createDialog "company_application";
_display = findDisplay 666015;
_text_name = _display displayCtrl 1000;
_text_name ctrlSetText (name player);
["NOT_IN_COMPANY",[getPlayerUID player],"ClientModules_Company_fnc_application_recieve",player] remoteExec ["serverModules_Company_fnc_employeesGet",2];
