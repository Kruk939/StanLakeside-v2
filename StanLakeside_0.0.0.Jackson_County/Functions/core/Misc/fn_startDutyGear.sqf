params ["_d", "_t"];
if (_d == 0) then {
	if (_t == 0) then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player addWeapon "Binocular";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "ItemGPS";
		player linkitem "tf_anprc152";
		player addweapon "cg_baton";
		player addBackpack "AM_PoliceBelt";
		player additemtobackpack "RH_uspm";
		player addweapon "taser";
		for "_i" from 1 to 8 do {player addItemToBackpack "RH_16Rnd_40cal_usp"; };
		for "_i" from 1 to 10 do {player addItemToBackPack "vvv_np_magazine_taser"; };
		for "_i" from 1 to 2 do {player addItemToBackPack "nonlethal_swing"; };
		{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_Spikes_Collapsed","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];

		_level = player getvariable ["cop", 0];
		
		if(female) then { player forceAddUniform "female_police"; player addHeadgear "EF_Fcap_P"; } else { 
			if(_level == 1) then {
				player forceAddUniform "jamie_police1";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 2) then {
				player forceAddUniform "jamie_police2";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 3) then {
				player forceAddUniform "jamie_police2_2";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 4) then {
				player forceAddUniform "jamie_police2_3";
				player addVest "jamie_blue";
				player addHeadgear "kif_police_blue";
			};
			if(_level == 5) then {
				player forceAddUniform "Sheriff_rang1";
				player addVest "kenny_vest_Sheriff";
				player addHeadgear "jamie_pcapgreen";
			};
			if(_level == 6) then {
				player forceAddUniform "police_kevuni7";
				player addVest "kenny_vest_police";
				player addHeadgear "jamie_pcapblack";
			};
			if(_level == 7) then {
				player forceAddUniform "police_kevuni4";
				player addVest "kenny_vest_police";
				player addHeadgear "KMC_Cap_sert";
			};
			if(_level == 8) then {
				player forceAddUniform "silver_lake_statepolice";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 9) then {
				player forceAddUniform "jamie_police3_1";
				player addVest "jamie_black2";
				player addHeadgear "Campaign_Hat_Dark";
			};
			if(_level == 10) then {
				player forceAddUniform "vvv_traje_policia_3";
			};
		};
	};

	if (_t == 1) then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;

		player forceAddUniform "TRYK_U_B_BLKBLK_CombatUniform";
		player addVest "EF_PBDF_M1";
		for "_i" from 1 to 5 do {player addItemToVest "30Rnd_556x45_Stanag";};
		for "_i" from 1 to 2 do {player addItemToVest "RH_33Rnd_9x19_g18";};
		player addBackpack "TRYK_B_BAF_BAG_BLK";
		player addHeadgear "TRYK_H_PASGT_BLK";
		
		player additemtobackpack "taser";
		for "_i" from 1 to 5 do {player addItemToBackpack "vvv_np_magazine_taser"; };

		{ player additemtobackpack _x; } foreach ["np_energydrink","RH_33Rnd_9x19_g18","RH_33Rnd_9x19_g18","CUP_15Rnd_9x19_M9","CUP_15Rnd_9x19_M9","CG_Spikes_Collapsed","CG_Spikes_Collapsed","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","cg_atf_bandage_i","CG_ATF_First_Aid_Kit_i","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","kif_gopro","kif_panicbutton"];
		player addWeapon "CUP_arifle_M4A1_black";
		player addPrimaryWeaponItem "CUP_muzzle_snds_M16";
		player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
		player addWeapon "RH_g18";
		player addHandgunItem "RH_gemtech9";
		player addWeapon "Rangefinder";

		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "Itemwatch";
		player linkItem "tf_anprc148jem_2";
		player linkItem "ItemGPS";
		player linkItem "TRYK_G_bala_ess_NV";

	};
};

if (_d == 1) then {
	if (_t == 0) then {
		removeAllWeapons player;
	    removeAllItems player;
	    removeAllAssignedItems player;
	    removeUniform player;
	    removeVest player;
	    removeBackpack player;
	    removeHeadgear player;
	    removeGoggles player;


	    player addWeapon "Binocular";
	    player linkItem "ItemMap";
	    player linkItem "ItemCompass";
	    player linkItem "Itemwatch";
	    player linkitem "tf_anprc152";
	    player linkItem "ItemGPS";


	    _level = player getVariable "ems";

	    if(female) then { player forceAddUniform "female_ems"; } else { player forceAddUniform "CUP_U_C_Rescuer_01"; };
	
	    player addBackpack "CUP_B_SLA_Medicbag";
	    { player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];
	};
};

if (_d == 2) then {
	if (_t == 0) then {
		removeAllWeapons player;
        removeAllItems player;
        removeAllAssignedItems player;
        removeUniform player;
        removeVest player;
        removeBackpack player;
        removeHeadgear player;
        removeGoggles player;


        player addWeapon "Binocular";
        player linkItem "ItemMap";
        player linkItem "ItemCompass";
        player linkItem "Itemwatch";
        player linkitem "tf_anprc152";
        player linkItem "ItemGPS";


	_level = player getVariable "fire";
	player forceAddUniform "CUP_U_C_Fireman_01";
	player addBackpack "TAC_LBT_LEGAB_BK";
	player addgoggles "TAC_SF10";
	player addHeadgear "CUP_H_C_Fireman_Helmet_01";
	{ player additemtobackpack _x; } foreach ["NP_8mPoliceLine","NP_4mPoliceLine","NP_1mPoliceLine","NP_PoliceBarrierL","NP_PoliceBarrierS","CG_wheel","cg_atf_bandage_i","cg_atf_bandage_i","kif_gopro","kif_panicbutton"];

	for "_i" from 1 to 10 do {player addItemToBackPack "Manguera_magazine";};
	player addweapon "fireextinguisher";    
	};
};