company_inited = false;


//RPF_ItemNames pushBack ["OfficeTable_01_new_F", "Meth Lab"];
company_var_data = [];
company_var_active_data = [];
company_var_privliges = [];
company_var_active_bank = [];
company_var_company_create_price = 50000;

//Init serwerowy
[player, getPlayerUID player] remoteExec ["ServerModules_Company_fnc_startInit",2];
