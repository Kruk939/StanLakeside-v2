
//Medical Variables
medical_deadPlayer = false;
medical_istazed = false;
medical_bleedingEffect = 0;
medical_selected_user = objNull;
medical_imHealing = false;
medical_im_dead = false;
player setVariable["medical_deadPlayer",false,true];
player setVariable["medical_playerInjuries_toUpdate", [0,0,0,0,0,0,0,0,0,0,0], false];



//Items
removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;
_clothingarray = ["np_shirt_1","np_shirt_2","np_shirt_3","np_shirt_4","np_shirt_5","np_shirt_6","np_shirt_7","np_shirt_8","vvv_ropa_comun_f_1","vvv_ropa_comun_f_2","vvv_ropa_comun_f_4","vvv_ropa_comun_f_5","vvv_ropa_comun_f_6","vvv_ropa_comun_f_7","vvv_ropa_comun_f_8","vvv_ropa_comun_f_9","vvv_ropa_comun_f_10","CUP_U_I_GUE_Anorak_03","CUP_U_I_GUE_Anorak_02","U_BG_Guerilla3_1","U_OrestesBody","CUP_O_TKI_Khet_Jeans_04","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Jeans_01","CUP_O_TKI_Khet_Jeans_03"];
_clothing = _clothingarray call BIS_FNC_SELECTRANDOM;
player adduniform _clothing;
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";





//Force Sync
["set",0] call ClientModules_Medical_fnc_DoHealth;
[true] call ClientModules_Medical_fnc_update;


closedialog 0;
player setpos [7641.1,2555.71,0.00143623];
