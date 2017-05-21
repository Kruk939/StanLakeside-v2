private["_timeCounter","_random"];

//if ("sl_lockpick" in magazines player) then {

	if (typeOf cursorObject isEqualTo "Land_CommonwealthBank") then {
		_bank = nearestObject [player, "Land_CommonwealthBank"];
		player removeItem "sl_lockpick";

		if(isNil "RPF_VaultDoor") then { RPF_VaultDoor = false; };
		if (RPF_VaultDoor) exitWith {};
		RPF_VaultDoor = true;

		//hint parsetext "<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>WYTRYCHUJĘ ZAMEK DO DRZWI</t><br/> ZAMEK ZOSTAŁ NARUSZONY!";
		//playSound3D ["sl_client\sounds\bankAlarm.ogg", _bank, false, getPosASL _bank, 2, 1, 150]; 

		_timeCounter = 0;
		_random = round(random 60) + 15;
		player playmove "AinvPknlMstpSnonWnonDnon_medic_1";
		playSound3D ["cg_sndimg\sounds\repair.ogg", player, false, getPosASL player, 8, 1, 45];

		for "_i" from 0 to 1 step 0 do {
			if(animationstate player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playmove "AinvPknlMstpSnonWnonDnon_medic_1"; };
			_timeCounter = _timeCounter + 1;
			if(_timeCounter > _random) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>WYTRYCHUJĘ ZAMEK</t><br/> %1 z %2 sekund.",_timeCounter, _random];
		};
		_bank animate ["Door_5",1];

		RPF_VaultDoor = false;
	};
//} else {
	//hint "Nie posiadasz narzędzia do otworzenia drzwi!";
//};