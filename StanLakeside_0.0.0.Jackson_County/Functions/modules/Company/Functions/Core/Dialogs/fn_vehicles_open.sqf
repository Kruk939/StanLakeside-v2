private["_display","_text_name"];
if(count company_var_active_data == 0) exitWith {};
if(dialog) then { closeDialog 0; };
disableSerialization;
createDialog "company_vehicles";
_display = findDisplay 666017;
["all",[company_var_active_data select 0],"ClientModules_Company_fnc_vehicles_recieve",player] remoteExec ["serverModules_Company_fnc_garageGet",2];
