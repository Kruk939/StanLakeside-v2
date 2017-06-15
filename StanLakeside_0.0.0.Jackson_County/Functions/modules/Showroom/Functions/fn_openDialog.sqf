params["_type"];

createDialog "showroom";

[_type,player] remoteExecCall ["ServerModules_Showroom_fnc_loadData",2];