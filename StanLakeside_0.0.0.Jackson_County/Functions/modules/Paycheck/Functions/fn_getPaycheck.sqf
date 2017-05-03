if (paycheck != 0) then {
	[paycheck] call Client_fnc_addCash;
	hint format["Odebrałeś %1 $ wypłaty!", paycheck];
	paycheck = 0;
} else {
	hint "You don't have any money in paycheck!";
};