/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Here you can add some scripts to run on the server.
*/

RPF_Shopping_General = [];
RPF_Shopping_Pizza = [];
RPF_Shopping_Fastfood = [];
RPF_Shopping_Bar = [];
RPF_Shopping_ClothingMen = [];
RPF_Shopping_ClothingWomen = [];
RPF_Shopping_Donuts = [];
RPF_Shopping_Glasses = [];
RPF_Shopping_Gun = [];

[] call ServerModules_ShoppingSystem_fnc_fetchShoppingPrices;

diag_log (localize "STR_RPF_SHOPPINGSYSTEM_INIT");