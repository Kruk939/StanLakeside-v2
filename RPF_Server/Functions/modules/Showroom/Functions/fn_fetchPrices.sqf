_prices = ["showroom_fetchPrices", 2] call ExternalS_fnc_ExtDBasync;

{
	if ((_x select 3) isEqualTo "car") then {RPF_Showroom_prices_car pushBack _x;};
	if ((_x select 3) isEqualTo "ship") then {RPF_Showroom_prices_ship pushBack _x;};
	if ((_x select 3) isEqualTo "air") then {RPF_Showroom_prices_air pushBack _x;};
} forEach _prices;