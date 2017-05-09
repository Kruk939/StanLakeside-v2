haveItemToMeth = {
	if (_this select 0 IN (magazines player)) then {
			_counter = count (_this select 0 IN (magazines player))
			if (_counter > 0) then {
				_return = true;
			}
		} else {
			hint "Nie masz potrzebnego przedmiotu do methy!";
			_return = false;
		};
		_return
};

_required = _this select 0;
if(RPF_statusCooking) exitwith { hint "Nie tak szybko!"; };

if(RPF_requiredOutput == _required) then {
 
	if(_required == "Acetone") then {
		if (["kif_Acetone"] call haveItemToMeth) then {
			player removeItem "kif_Acetone";
			playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; 
			hint "Zadziałało! Produkt nie stracił na wartości!";
			RPF_lvlMeth = RPF_lvlMeth - 10;
		};
	};
	if(_required == "Pseudo") then {
		if (["kif_Pseudo"] call haveItemToMeth) then {
			player removeItem "kif_Pseudo";
			playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; 
			hint "Zadziałało! Produkt nie stracił na wartości!";
			RPF_lvlMeth = RPF_lvlMeth - 10;
		};
		playSound3D ["CG_Jobs\sounds\meth\drugAdd.ogg", player, false, getPosasl player, 2, 1, 15]; 
	};
	if(_required == "Cool") then {
		playSound3D ["CG_Jobs\sounds\meth\drugCool.ogg", player, false, getPosasl player, 2, 1, 15]; 
		hint "Zadziałało! Produkt nie stracił na wartości!";
			RPF_lvlMeth = RPF_lvlMeth - 10;
	};
	if(_required == "Heat") then {
		playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 2, 1, 15]; 
		hint "Zadziałało! Produkt nie stracił na wartości!";
			RPF_lvlMeth = RPF_lvlMeth - 10;
	};
	if(_required == "Release") then {
		playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 2, 1, 15]; 
		hint "Zadziałało! Produkt nie stracił na wartości!";
			RPF_lvlMeth = RPF_lvlMeth - 10;
	};
} else { 
	RPF_drugValue = RPF_drugValue - 10; 
	hint "Źle.. miejmy nadzieję że uda się zapobiec eksplozji";
	_randomValue = random 30;
	playSound3D ["CG_Jobs\sounds\meth\drugBoil.ogg", player, false, getPosasl player, 5, 1, 15];
	playSound3D ["CG_Jobs\sounds\meth\drugPressure.ogg", player, false, getPosasl player, 5, 1, 15];
	if(_randomValue < 3) exitwith { 
		"R_60mm_HE" createvehicle (getPosatl player); 
		hint "BOOOOOOOOOOOOOOOOOOOOM!"; 
		RPF_statusCooking = false;
		//[(getpos player)] remoteExec ["server_fnc_firestart",2];
		player removeaction myAction1;
		player removeaction myAction2;
		player removeaction myAction3;
		player removeaction myAction4;
		player removeaction myAction5;
		player removeaction myActionPack;
		deletevehicle RPF_methLabObj;
	};
};
RPF_statusCooking = true;

