/*
		Author: Kajetan "Kruk" Mruk
		Date: 08.06.2017
		Params:
			0 - String, Type of get
			1 - String, Data string(id or plate)
			2 - String, name of the function to return to
			3 - Object, player object to return to
		Description: Returns data to player
		Return: nothing
*/
private["_company_id","_xID","_variableName"];
if((count company_var_active_data) == 0) exitWith {};
_company_id = company_var_active_data select 0;
hint format["%1 %2",(localize "STR_RPF_MODULES_COMPANY_STOP_MSG"), company_var_active_data select 2];
{
      _xID = _x select 0;
      if(_xID == _company_id) then {
            _variableName = _x select 1;
            player setVariable  [_variableName, nil];
      };
} forEach company_var_privliges;
company_var_active_data = [];
