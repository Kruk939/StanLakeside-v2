/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
This is the example additional module.
This mainly gives an idea how you can structure your module and what kind of things modules can currently do in RPF.

Read the readme file for full documentation on modules.
*/

RPF_ShoppingChest = "plp_ct_woodboxlightsmall" createVehicleLocal [0,0,0];
player disablecollisionwith RPF_ShoppingChest;

[] call ClientModules_ShoppingSystem_fnc_initShoppingSystemMenu;

ShoppingSystem_inited = true;
diag_log "ShoppingSystem Module inited";
