params["_type", "_amount"];

if(isNil "_type" || isNil "_amount") exitWith {diag_log "fn_updateMayorATM.sqf: nil (1)";}; 
if("_type" == "") exitWith {diag_log "fn_updateMayorATM.sqf: _type empty (2)";}; 

switch(_type) do {
    case "Add": {mayorBank = mayorBank + _amount;};
    case "Remove": {mayorBank = mayorBank - _amount;};
    default {mayorBank = "";};
};
publicvariable "mayorBank";

//if(mayorBank == "") exitWith {diag_log "ERROR: Can't update mayorBank! Check code! (maybe null mayorBank?) (fn_updatemayorBank.sqf)";};

 _updatestr = format["updateMayorATM:%1", mayorBank];
 _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;
 diag_log format ["Succesfully updated mayorBank to 1%", mayorBank];