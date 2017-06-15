for "_i" from 0 to 1 step 0 do {
	paycheck = paycheck + 35;
	hint format["Otrzymałeś 35 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];
	if (life_perksInitialized) then {["Paycheck"] call mav_ttm_fnc_addExp;};
	sleep 300;
};