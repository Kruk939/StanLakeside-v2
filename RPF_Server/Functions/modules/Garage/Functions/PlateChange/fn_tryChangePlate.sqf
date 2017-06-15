params["_plateOld","_plate","_player"];
if ((([0, format ["garage_existLicense:%1", _plate]] call ExternalS_fnc_ExtDBquery) select 0) select 0) then { 
	diag_log "true";
	[2] remoteExecCall ["ClientModules_Garage_fnc_finishChangePlate", _player]; 
} else { 
	diag_log "false 0";
	_check = [0, (format ["garage_updateLicense:%1:%2", _plate, _plateOld])] call ExternalS_fnc_ExtDBquery; 
	diag_log "false 1";
	[1] remoteExecCall ["ClientModules_Garage_fnc_finishChangePlate", _player]; 
	diag_log "false 2";
}; 