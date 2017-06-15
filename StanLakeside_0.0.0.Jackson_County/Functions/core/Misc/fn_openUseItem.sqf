/*
Author: Kerkkoh
First Edit: 24.4.2016
*/
createDialog "useItem";

{
	_y = _x;
	{
		if ((_y select 0) isEqualTo (_x select 0)) then {
			shopItems = lbAdd [1500, format["%1 x %2", [_y select 0]call Client_fnc_getWeaponName, _y select 1]];
			lbSetData [1500, shopItems, str _y];
		};
	}forEach RPF_Usables;
}forEach ([items player]call Client_fnc_sortArray);

{
	_y = _x;
	{
		if ((_y select 0) isEqualTo (_x select 0)) then {
			_shopItemsMagazine = lbAdd [1500, format["%1 x %2", [_y select 0]call Client_fnc_getMagazineName, _y select 1]];
			_shopItemsMagazine = _shopItemsMagazine + shopItems;
			lbSetData [1500, _shopItemsMagazine, str _y];
		};
	}forEach RPF_Usables;
}forEach ([magazines player]call Client_fnc_sortArray);

lbSortByValue ((findDisplay 1019) displayCtrl 1500);

lbSetCurSel [1500, 0];
