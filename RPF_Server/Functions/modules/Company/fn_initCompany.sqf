/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Here you can add some scripts to run on the server.
*/
diag_log "# Company System Loaded #";
private["_queryString","_query"];
_queryString = format["company_garage_updateStatusReset:%1:%2", 0, 1];
_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
