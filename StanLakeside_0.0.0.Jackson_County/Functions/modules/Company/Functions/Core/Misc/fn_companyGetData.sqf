/*
		Author: Kajetan "Kruk" Mruk
		Date: 12.06.2017
		Params:
			0 - Number, id of company player to check
		Description: Checking if player works for company given with id
		Return: Boolean
*/
private["_xID","_data"];
params["_company_id"];
{
      _xID = _x select 0;
      if(_xID == _company_id) exitWith {
            _data = _x;
      };
} forEach company_var_data;
_data
