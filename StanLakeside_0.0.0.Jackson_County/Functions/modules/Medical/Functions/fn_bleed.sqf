params["_newParam"];

if(isNil "RPF_bleedingEffect") then { RPF_bleedingEffect = 0; };

if(RPF_bleedingEffect < 0) then { RPF_bleedingEffect = 0};

if(RPF_bleedingEffect > 0) exitwith { RPF_bleedingEffect = RPF_bleedingEffect + _newParam; };
RPF_bleedingEffect = _newParam;
while {RPF_bleedingEffect > 0} do {
	999 cutRsc ["HUDbleed","PLAIN"]; 
	uisleep 3;
	["Remove",0.05] call ClientModules_Medical_fnc_DoHealth;
	RPF_bleedingEffect = RPF_bleedingEffect - 3;
};