closeDialog 0;
createDialog "phonekeys";
[] call ClientModules_Phone_fnc_loadSkin;

disableSerialization; 
//_display = findDisplay 1103; 
//_vehList = _display displayCtrl 1500; 
 
lbClear 1500; 
{ 
	_vehList = lbAdd [1500, format["%1", getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName")]];
	//_vehList lbAdd format["%1", getText(configFile >> "CfgVehicles" >> (_x select 1) >> "displayName")]; 
} foreach RPF_Cars;