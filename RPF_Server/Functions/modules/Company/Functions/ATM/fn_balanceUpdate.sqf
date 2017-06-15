/*
		Author: Kajetan "Kruk" Mruk
		Date: 09.06.2017
		Params:
			0 - String, Type of update
			1 - Array, data
			2 - String, function name to return to
			3 - Object, object to return to
		Description: Updates data in the database
		Return: nothing
*/
params[["_type",""],["_data",[]],["_function_name",""],["_player",objNull]];
private["_query","_data","_id_company","_amount","_queryString"];
if(_type == "add_id") exitWith {
	_id_company = _data select 0;
	_amount = _data select 1;
	if(_amount <= 0) exitWith {};
	_queryString = format["company_updateBankAdd_id:%1:%2", _amount, _id_company];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "remove_id") exitWith {
	_id_company = _data select 0;
	_amount = _data select 1;
	if(_amount <= 0) exitWith {};
	_queryString = format["company_updateBankRemove_id:%1:%2", _amount, _id_company];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
