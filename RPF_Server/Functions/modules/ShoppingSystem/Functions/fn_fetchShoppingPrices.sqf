_prices = ["shoppingsystem_prices", 2] call ExternalS_fnc_ExtDBasync;

{
	if ((_x select 3) isEqualTo "general") then {RPF_Shopping_General pushBack _x;};
	if ((_x select 3) isEqualTo "pizza") then {RPF_Shopping_Pizza pushBack _x;};
	if ((_x select 3) isEqualTo "fastfood") then {RPF_Shopping_Fastfood pushBack _x;};
	if ((_x select 3) isEqualTo "bar") then {RPF_Shopping_Bar pushBack _x;};
	if ((_x select 3) isEqualTo "clothingmen") then {RPF_Shopping_ClothingMen pushBack _x;};
	if ((_x select 3) isEqualTo "clothingwomen") then {RPF_Shopping_ClothingWomen pushBack _x;};
	if ((_x select 3) isEqualTo "donuts") then {RPF_Shopping_Donuts pushBack _x;};
	if ((_x select 3) isEqualTo "glasses") then {RPF_Shopping_Glasses pushBack _x;};
	if ((_x select 3) isEqualTo "gun") then {RPF_Shopping_Gun pushBack _x;};

} forEach _prices;