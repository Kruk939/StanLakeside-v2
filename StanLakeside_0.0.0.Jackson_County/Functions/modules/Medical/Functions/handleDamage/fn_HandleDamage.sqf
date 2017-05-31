/*
		Module: Medical
		Author: Kajetan "Kruk" Mruk
		Date: 04.05.2017
		Params: HandleDamage eventhandler
		Description: Handle Damage from eventhandler preventing player to die in the engine
		Return: false
*/
if(medical_deadPlayer) exitwith { false };
params ["_unit","_selectionName","_damage","_source","_projectile","_hitPartIndex","_vehicle","_speed","_curWep,","_curWep","_isWater"];
hint str(_this);
if(!isNull _source) then {
	if(_source != _unit) then {
		if (vehicle _unit == _unit) then {
			_vehicle = vehicle _source;
			if ( _vehicle isKindOf "Air" || _vehicle isKindOf "Car" || _vehicle isKindOf "Boat" ) then {
		    		if(typeof _vehicle == "B_MRAP_01_hmg_F") exitwith {};
				_speed = speed _vehicle;
				[] spawn KK_fnc_forceRagdoll;
				if(_speed < 70) then { _damage = 0.1; };
				if(_speed < 25) then { _damage = 0; };
				if(_speed > 69) then { _damage = _speed / 100; };
		    };
		};
		_curWep = currentWeapon _source;
		if(_curWep in ["CG_CROSS","CG_BATON","CG_TELBAT","CG_SHOVEL"] && vehicle player == player) exitwith {
			[_unit,_source] spawn ClientModules_Medical_fnc_blunthit;
			_damage = 0;
		};
		if(_curWep in ["cg_scythe","CG_PICKAXE","cg_hatchet","cg_machete","CG_BAT"] && vehicle player == player) exitwith {
			[_unit,_source] spawn ClientModules_Medical_fnc_sharphit;
			_damage = 0;
		};
		if(_curWep == "Taser" && vehicle player == player && vehicle _source == _source) exitwith {
			if(player distance _source < 40) then {
				[_unit,_source] spawn ClientModules_Medical_fnc_tazed;
			};
			_damage = 0;
		};
	} else {
		_isWater = surfaceIsWater (getPosASL player);
		if(_isWater) then { player setOxygenRemaining 1; _damage = 0.05; };
	};
};
if(_selectionName == "") then {
	["Remove",_damage,_source] spawn ClientModules_Medical_Fnc_DoHealth;
} else {
	if(!isNull _source && isPlayer _source && _source != _unit && _damage > 0.1) then {
		[_damage,_selectionName,_source] spawn ClientModules_Medical_fnc_damageChance;
	} else {
		_source = player;
		if(_damage > 0.65) then { [_damage,_selectionName,_source] spawn ClientModules_Medical_fnc_damageChance; };
	};
};
false
