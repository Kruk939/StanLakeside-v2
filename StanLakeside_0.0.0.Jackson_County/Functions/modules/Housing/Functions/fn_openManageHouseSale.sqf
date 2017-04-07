/*
Author: Kerkkoh
First Edit: 26.12.2016
*/

params["_house"];

createDialog "manageHouseSale";

if ((_house getVariable ["price", -1]) != -1) then {
	ctrlSetText[1000, "Currently for sale"];
	ctrlSetText[1400, str (_house getVariable "price")];
	ctrlShow[1600, false];
} else {
	ctrlShow[1601, false];
	ctrlShow[1602, false];
	{
		if ((_x select 0) == typeOf _house) then {
			ctrlSetText[1400, str (_x select 1)];
		};
	}forEach RPF_buyableHouses;
};
