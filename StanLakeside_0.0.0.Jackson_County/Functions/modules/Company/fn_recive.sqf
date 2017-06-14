params[["_companies",[]],["_privlages",[]]];
private["_company_id","_player_level"];

//Dane
//c.id, c.short_name, c.name, c.bank, c.uid_owner, c.members_current, c.members_max, c.level, m.level, c.variable_name, c.job_name
company_var_data = _companies;
company_var_privliges = _privlages;


company_inited = true;
diag_log "Company Module inited";
