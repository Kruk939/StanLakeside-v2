/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - Array, case data
		Description: Reads data from avialable company garage
		Return: none
*/
private["_oldVar"];
if((count company_var_active_data) != 0) then {
	_oldVar = company_var_active_data select 9;
	player setVariable[_oldVar, nil];
	company_var_active_data = [];
};
