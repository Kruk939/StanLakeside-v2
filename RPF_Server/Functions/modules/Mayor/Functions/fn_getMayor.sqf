 diag_log "Mayor: Setup mayor";

_fuck = 1;
_fetchstr = format ["getMayor:%1", _fuck]; 
_fetch = [_fetchstr, 2] call ExternalS_fnc_ExtDBasync; 

currentMayor = (_fetch select 0) select 0;
if(isNil "currentMayor") then {currentMayor = ""};
diag_log format ["Mayor: %1 (%2)", currentMayor, typeName currentMayor];