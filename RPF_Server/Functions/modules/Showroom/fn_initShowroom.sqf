/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
Here you can add some scripts to run on the server.
*/
RPF_Showroom_prices_air = [];
RPF_Showroom_prices_car = [];
RPF_Showroom_prices_ship = [];


[] call ServerModules_Showroom_fnc_fetchPrices;

diag_log (localize "STR_RPF_SHOWROOM_INIT");