if(typeof cursorTarget != "plp_ct_HighSecMediumBlack") exitwith { hint "Musisz tego uzyc na czarnej skrzyni"; };
_blackChest = cursorTarget;

RPF_Drill = "itemsvaultdrill1" createvehicle getpos player;
RPF_Drill attachTo [_blackChest, [0, -0.9, 0] ];
player removeitem "NP_drillitem";

_finishBankRob = false;

for "_i" from 0 to 1 step 0 do {
	_timeCounter = 0;
	_position = getPosATL _blackChest;
	
	_PS = "#particlesource" createVehicleLocal _position;  
	_PS setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];
	_PS setDropInterval 0.001;
	_PS setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[0, 0, 1],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_PS,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
	_PS attachTo [RPF_Drill,[0,0.525,0.22]];

	_random = round(random 100);

	if (_random < 20 && _timeCounter > 7) then {
		RPF_DrillStopped = true;
		hint "Wiertło utkneło!!!";
		while {RPF_DrillStopped} do{
			deletevehicle _PS;
			playSound3D ["cg_mission_files\sounds\npdrillfailing.ogg", player, false, getPosAtL RPF_Drill, 1, 1, 45];
			uisleep 15;
		};
	};

	if (_random < 60 && _random > 50 && _timeCounter > 7) then {
		RPF_DrillStopped = true;
		hint "Wiertło utkneło!!!";
		while {RPF_DrillStopped} do{
			deletevehicle _PS;
			playSound3D ["cg_mission_files\sounds\npdrillfailing.ogg", player, false, getPosAtL RPF_Drill, 1, 1, 45];
			uisleep 15;
		};
	};

	if (_random > 97 && !RPF_DrillStopped && _timeCounter > 10) exitWith {deleteVehicle _ps; _finishBankRob = true;};

	uiSleep 5;
};

if (_finishBankRob) exitWith {
	hint "Przewierciłeś się, zabierz pieniądze!";
	RPF_readyTakeCash = true;

	uiSleep 300;
	deletevehicle _blackChest;
	deletevehicle RPF_Drill;
};

//_suitcaseHolder = "plp_ct_woodboxlightsmall" createVehicleLocal (getpos player); 


