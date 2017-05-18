private["_user","_arrayCount","_amount","_myInjuries"];
if(medical_imHealing) exitwith {};
medical_imHealing = true;
_user = _this select 0;
_arrayCount = _this select 1;
_amount = _this select 2;
_myInjuries = _user getVariable "medical_playerInjuries";
if(_arrayCount < 10) then {
	if(_amount == 1) then { if("CG_ATF_Bandage_i" in magazines player || myJob == "EMS" || myjob == "Fire") then {  ["Bandażuję",3,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount == 2) then { if("CG_ATF_Bandage_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Bandażuję",4,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!s!"; }; };
	if(_amount == 3) then { if("CG_ATF_First_Aid_Kit_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Korzystam z apteczki (Poziom 2)",5,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount == 4) then { if("CG_ATF_First_Aid_Kit_i" in magazines player || myJob == "EMS" || myjob == "Fire") then { ["Korzystam z apteczki (Poziom 3)",12,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
};
if(_arrayCount == 10) then {
	if(_amount == 1) then { if("kif_fish_oil" in magazines player) then { ["Podaję tran",10,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"kif_fish_oil"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount > 0) then { if(myJob == "EMS" || myjob == "Fire") then { ["Podaję antybiotyk",5,ClientModules_medical_fnc_healTime,_user,"AinvPknlMstpSnonWnonDnon_medic_1",[_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"],"cg_mission_files\sounds\patdown1.ogg"] spawn client_fnc_dotask; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
};
closedialog 0;
sleep 3;
medical_imHealing = false;
