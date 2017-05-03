/*
Handle Health Changes by Koil
*/
if(deadPlayer) exitwith {};	

params [["_adjust", "", [""]], ["_amount", 0, [0]], ["_source", objNull, [objNull]],["_headshot", 0, [0]]];
_change = false;

if(_adjust == "Add") then {
	RPF_myHealth = RPF_myHealth - _amount;
	if(_amount > 0.1) then {
		//[6] spawn ClientModules_Medical_fnc_HudElements;	
	};	
};
if(_adjust == "Remove") then {
	RPF_myHealth = RPF_myHealth + _amount; 
	if(_amount > 0.1) then {
		//[5] spawn ClientModules_Medical_fnc_HudElements;
	};
};

if(_adjust == "Set") then {
	//[6] spawn ClientModules_Medical_fnc_HudElements; 
	RPF_myHealth = _amount; 
};

if(RPF_myHealth < 0) then { RPF_myHealth = 0; };

_myStatuses = player getvariable "statuses";
_myStatuses set [5, RPF_myHealth]; 
player setVariable ["statuses",_mystatuses,false];


/* TODO
[player, "statuses", (player getvariable "statuses")] remoteExec ["Server_fnc_setVariable",2];
[_mystatuses,getplayeruid player] remoteExec ["server_fnc_syncStatuses",2];
*/
if(RPF_myHealth > 0.99) exitwith { 
	if(RPF_myHealth > 1.8) then { RPF_myHealth = 1.8; };
	_damage = RPF_myHealth - 1;
	_damage = _damage * 10;
	//[] spawn ClientModules_Medical_fnc_hudhealth;
	//[] spawn ClientModules_Medical_fnc_hudeffects;
	[player,_source,_damage,_headshot] spawn ClientModules_Medical_fnc_HandleKilled;
};

if((damage player) != RPF_myHealth) then {
	player setdamage RPF_myHealth;
};


//[] spawn ClientModules_Medical_fnc_hudhealth;
//[] spawn ClientModules_Medical_fnc_hudeffects;