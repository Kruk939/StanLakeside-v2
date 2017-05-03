private["_id"];
_id = parseNumber "1";
_debug = 1;

_query = format ["getMafiaATM:%1", _id];
_queryResult = [_query,2] call ExternalS_fnc_ExtDBasync;

//mafiaBank = str _queryResult;
mafiaBank = call compile format ["%1",_queryResult select 0 select 0];
publicvariable "mafiaBank";
//mafiabank = format["%1",_queryResult];



if(_debug == 1) then {
	
	diag_log "------------------ getMafiaATM -----------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Result: %1",_queryResult];
	diag_log "------------------------------------------------";
};