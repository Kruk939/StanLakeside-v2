 /*
	Author: KifKick
	For: stanlakeside.pl
	Date: 19.01.2017 (Non-retard Units)
	
		Params:
		0 - Object - player object
		1 - String - 1 or 0
		Description: Function that send SQL query to the server for get connected to server or not.
		Return: nothing
*/
 
 params["_playerUID","_type", "_name"];
 private["_updateStr"];

if(isNil "_playerUID" || isNil "_type") exitWith {diag_log "fn_updateConnection.sqf: nil (1)";}; 
if("_type" isEqualTo "") exitWith {diag_log "fn_updateConnection.sqf: _type empty (2)";}; 
//if(isNull _playerUID || isNull "_type") exitWith {diag_log "fn_updateConnection.sqf: _playerUID is null (3)"};

if(_type isEqualTo "connected") exitWith {
	 _update = [0, format["updateConnection_connected:%1:%2", _name, _playerUID]] call ExternalS_fnc_ExtDBquery;
};
if(_type isEqualTo "disconnected") exitWith {
	 _update = [0, format["updateConnection_disconnected:%1", _playerUID]] call ExternalS_fnc_ExtDBquery;
};
if (_type isEqualTo "reset") exitWith {
 	_update = [0, "updateConnection_reset:0"] call ExternalS_fnc_ExtDBquery;
};

