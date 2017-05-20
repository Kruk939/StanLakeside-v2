RPFServer_BankRobbing = false;
RPFServer_BankRobbingSecond = false;

RPFServer_BankOne = objNull;
RPFServer_BankTwo = objNull;

[] call ServerModules_RobbingSystem_fnc_spawnChestsBank;

diag_log "# RobbingSystem Loaded #";