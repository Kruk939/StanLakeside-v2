/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of get
			1 - String, Data string(id or plate)
			2 - String, name of the function to return to
			3 - Object, player object to return to
		Description: Returns data to player
		Return: nothing
*/
params["_type","_data","_function_name","_player"];
private["_uid_player","_query","_queryString"];
if(_type == "new") exitWith {
	_uid_player = _data select 0;
	_queryString = format["medical_insertStatuses:%1", _uid_player];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
