private["_cModules","_cModulesCount","_cModule","_i"];
_cModules = [
	"ClientModules_CompanyModules_fnc_initEMSMedical"
];

_cModulesCount = count _cModules;
for [{_i = 0}, {_i < _cModulesCount}, {_i = _i + 1}] do {
	_cModule = _cModules select _i;
	[] spawn (call compile _cModule);
};
