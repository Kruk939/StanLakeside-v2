params[["_object",objNull],["_variable",""],"_value",["_public",false, [true,false]]];
private["_goodVars"];
_goodVars = ["medical_playerInjuries_toUpdate"];
if(_variable IN _goodVars) exitWith {
      _object setVariable[_variable, _value, _public];
}
