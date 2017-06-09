
params["_player","_uid_player"];
private["_result"];
_result = ((["exists", [_uid_player], "", ""] call ServerModules_Medical_fnc_get) select 0) select 0;
//diag_log _result;
if(_result) then {
      ["all", [_uid_player],"ClientModules_Medical_fnc_recive",_player] call ServerModules_Medical_fnc_get;
} else {
      ["new",[_uid_player],"",""] call ServerModules_Medical_fnc_insert;
      [_player,_uid_player] call ServerModules_Medical_fnc_startInit;
};
