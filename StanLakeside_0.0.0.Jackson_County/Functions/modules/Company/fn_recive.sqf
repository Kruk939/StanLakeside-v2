params[["_companies",[]],["_privlages",[]]];
private["_company_id","_player_level"];

//Dane
//c.id, c.short_name, c.name, c.bank, c.uid_owner, c.members_current, c.members_max, c.level, m.level, c.variable_name, c.job_name
company_var_data = _companies;
company_var_privliges = _privlages;


//Funkcje pomocnicze
company_fnc_dialog_garageOpen = {
	if((count client_company_active_data) != 0) then {
		_company_id = client_company_active_data select 0;
		_player_level = client_company_active_data select 8;
		["avialable",[_company_id, _player_level],"client_fnc_company_garageOpen",player] remoteExec ["server_fnc_company_garageGet",2]
	};
};



company_inited = true;
diag_log "Company Module inited";
