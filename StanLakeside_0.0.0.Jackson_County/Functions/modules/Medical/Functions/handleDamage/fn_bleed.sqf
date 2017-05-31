params["_newParam"];
if(medical_bleedingEffect < 0) then { medical_bleedingEffect = 0};
if(medical_bleedingEffect > 0) exitwith { medical_bleedingEffect = medical_bleedingEffect + _newParam; };
medical_bleedingEffect = _newParam;
while {medical_bleedingEffect > 0} do {
	999 cutRsc ["HUDbleed","PLAIN"];
	uisleep 3;
	["Remove",0.05] call ClientModules_medical_fnc_DoHealth;
	medical_bleedingEffect = medical_bleedingEffect - 3;
};
