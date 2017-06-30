_length = ctrlText 2222;
_reason = ctrlText 1111;
[currentCursorTarget, player, _length, _reason] remoteExec ["ServerModules_SLPD_fnc_slpdPrisonInsert",2];
[player,currentcursortarget,4,format [(localize "STR_RPF_MODULES_COMPANY_JAIL_ARREST"), name player, name currentcursortarget, _length, _reason],_length] remoteExec ["ServerModules_SLPD_fnc_copLog", 2];
closedialog 0;
