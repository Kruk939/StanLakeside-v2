_prices = ["showroom_prices", 2] call ExternalS_fnc_ExtDBasync;

{
	if ((_x select 3) isEqualTo "car") then {RPF_Showroom_prices_car pushBack _x;};
	if ((_x select 3) isEqualTo "ship") then {RPF_Showroom_prices_ship pushBack _x;};
	if ((_x select 3) isEqualTo "air") then {RPF_Showroom_prices_air pushBack _x;};
} forEach _prices;

diag_log format["Showroom array price car is %1", RPF_Showroom_prices_car];
diag_log format["Showroom array price ship is %1", RPF_Showroom_prices_ship];
diag_log format["Showroom array price air is %1", RPF_Showroom_prices_air];