private["_timeCounter","_random"];

//if ("sl_VaultCrasher" in magazines player) then {

	if (typeOf cursorObject isEqualTo "Land_CommonwealthBank") then {
		_bank = nearestObject [player, "Land_CommonwealthBank"];
		player removeItem "sl_VaultBomb";

		if(isNil "RPF_VaultDoor") then { RPF_VaultDoor = false; };
		if (RPF_VaultDoor) exitWith {};
		RPF_VaultDoor = true;

		hint parsetext "<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>NASŁUCHUJĘ DZIAŁANIE MECHANIZMU ZAMKA</t><br/> ZAMEK ZOSTAŁ NARUSZONY!";

		_timeCounter = 0;
		_random = round(random 60) + 65;
		player playmove "AinvPknlMstpSnonWnonDnon_medic_1";
		

		for "_i" from 0 to 1 step 0 do {
			if(animationstate player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playmove "AinvPknlMstpSnonWnonDnon_medic_1"; };
			_timeCounter = _timeCounter + 1;
			if(_timeCounter > _random) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>ODGADUJĘ SZYFR ZAMKA</t><br/> %1 z %2 sekund.",_timeCounter, _random];
		};
		_bank animate ["Vault_Door", 1];

		RPF_VaultDoor = false;
	};
//} else {
	//hint "Nie posiadasz urządzenia do otworzenia sejfu!";
//};