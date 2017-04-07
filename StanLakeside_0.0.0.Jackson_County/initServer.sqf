["rpframework", "SQL_CUSTOM", "rpframework.ini"] spawn ExternalS_fnc_ExtDBinit; 
sleep 3;
[] call Server_fnc_handleDisconnect;
[] spawn Server_fnc_statSaveLoop;
	
[] call ServerModules_fnc_initModules;