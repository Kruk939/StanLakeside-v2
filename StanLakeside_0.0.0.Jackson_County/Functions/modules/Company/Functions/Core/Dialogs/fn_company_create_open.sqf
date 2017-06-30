
private["_id_company","_level","_display","_price_txt"];
disableSerialization;
createDialog "company_create";
waitUntil {dialog};
_display = findDisplay 666012;
_price_txt = _display displayCtrl 1003;
_price_txt ctrlSetText format["$%1",company_var_company_create_price];
