for "_i" from 0 to 1 step 0 do {
	switch (RPF_currentJob) do {
		case "none": {paycheck = paycheck + 35; hint format["Otrzymałeś 35 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];};
		case "Cop": {paycheck = paycheck + 75; hint format["Otrzymałeś 75 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];};
		case "EMS": {paycheck = paycheck + 75; hint format["Otrzymałeś 75 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];};
		case "Fire": {paycheck = paycheck + 75; hint format["Otrzymałeś 75 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];};
		case "Mafia": {paycheck = paycheck + 75; hint format["Otrzymałeś 75 $ wypłaty! Łącznie już masz %1 $. Odbierz ją w lokalnym banku!", paycheck];};
		default {paycheck = paycheck + 35;};
	};
	if (life_perksInitialized) then {["Paycheck"] spawn mav_ttm_fnc_addExp;};
	sleep 300;
};