private["_cModules","_cModulesCount","_cModule","_i"];
_cModules = [
	"ClientModules_CompanyModules_fnc_initEMSMedical",
	"ClientModules_CompanyModules_fnc_initVehicleInteraction",
	"ClientModules_CompanyModules_fnc_initPoliceArrest",
	"ClientModules_CompanyModules_fnc_initPoliceTicket",
	"ClientModules_CompanyModules_fnc_initCopInteraction",
	"ClientModules_CompanyModules_fnc_initPoliceComputer"
];

_cModulesCount = count _cModules;
for [{_i = 0}, {_i < _cModulesCount}, {_i = _i + 1}] do {
	_cModule = _cModules select _i;
	[] spawn (call compile _cModule);
};
