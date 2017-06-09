RPF_Showroom_prices_car = [(format["showroom_fetchPrices:%1", "car"]), 2] call ExternalS_fnc_ExtDBasync;
RPF_Showroom_prices_ship = [(format["showroom_fetchPrices:%1", "ship"]), 2] call ExternalS_fnc_ExtDBasync;
RPF_Showroom_prices_air = [(format["showroom_fetchPrices:%1", "air"]), 2] call ExternalS_fnc_ExtDBasync;

diag_log format["Showroom array price car is %1", RPF_Showroom_prices_car];
diag_log format["Showroom array price ship is %1", RPF_Showroom_prices_ship];
diag_log format["Showroom array price air is %1", RPF_Showroom_prices_air];