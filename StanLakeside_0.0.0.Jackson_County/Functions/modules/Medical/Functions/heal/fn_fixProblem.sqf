private["_user","_arrayCount","_amount","_myInjuries"];
if(medical_imHealing) exitwith {};
medical_imHealing = true;
_arrayCount = _this select 0;
_user = medical_selected_user;
_myInjuries = _user getVariable ["medical_playerInjuries", [0,0,0,0,0,0,0,0,0,0,0]];
_amount = _myInjuries select _arrayCount;
if(_arrayCount < 10) then {
	if(_amount isEqualTo 1) then { if("CG_ATF_Bandage_i" in magazines player) then {  [_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"] spawn ClientModules_medical_fnc_healTime; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount isEqualTo 2) then { if("CG_ATF_Bandage_i" in magazines player) then { [_user,_myInjuries,_arrayCount,"CG_ATF_Bandage_i"] spawn ClientModules_medical_fnc_healTime; } else { hint "Nie posiadasz wymaganego przedmiotu!!"; }; };
	if(_amount isEqualTo 3) then { if("CG_ATF_First_Aid_Kit_i" in magazines player) then { [_user,_myInjuries,_arrayCount,"CG_ATF_First_Aid_Kit_i"] spawn ClientModules_medical_fnc_healTime; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount isEqualTo 4) then { if("CG_ATF_First_Aid_Kit_i" in magazines player) then { [_user,_myInjuries,_arrayCount,"CG_ATF_First_Aid_Kit_i"] spawn ClientModules_medical_fnc_healTime; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
};
if(_arrayCount isEqualTo 10) then {
	if(_amount isEqualTo 1) then { if("kif_fish_oil" in magazines player) then { [_user,_myInjuries,_arrayCount,"kif_fish_oil"] spawn ClientModules_medical_fnc_healTime;  } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
	if(_amount > 0) then { if(myJob isEqualTo "EMS" || myjob isEqualTo "Fire") then { [_user,_myInjuries,_arrayCount,"CG_ATF_First_Aid_Kit_i"] spawn ClientModules_medical_fnc_healTime; } else { hint "Nie posiadasz wymaganego przedmiotu!"; }; };
};
closedialog 0;
sleep 3;
medical_imHealing = false;
