private["_id"];
_id = parseNumber "1";
_debug = 1;

_query = format ["getTax:%1", _id];
_queryResult = [_query,2] call ExternalS_fnc_ExtDBasync;

RPF_Tax = call compile format ["%1",_queryResult select 0 select 0];
publicvariable "RPF_Tax";



if(_debug isEqualTo 1) then {
	
	diag_log "-------------------- getTax -------------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Result: %1",_queryResult];
	diag_log "------------------------------------------------";
};