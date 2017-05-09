RPF_methLabObj = createVehicle ["itemsdruglab1", [0,0,0], [], "NONE"];
RPF_methLabObj attachTo [player, [0, 1.3, 0.9]];
RPF_actionMethLab = player addAction [ "Rozstaw stół", {[] call ClientModules_methLab_fnc_setMethCooking;}];
RPF_actionTwoMethLab = player addAction [ "Złóż stół", {[] call ClientModules_methLab_fnc_removeMethCooking;}];