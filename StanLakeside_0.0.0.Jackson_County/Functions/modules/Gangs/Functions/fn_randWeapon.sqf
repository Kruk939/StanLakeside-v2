// kupno losowego pistoletu w sklepie dla gangow, magazynki dodac do osobnego sklepu
// przed uzyciem skonsultuj sie z SIDem gdyz aktualnie przycisk bedzie dostepny wszedzie, a docelowo ma byc w konkretnym miejscu

private ["_HGweapon", "_cashCheck", "_currentHG"];

_cashCheck = [1, 10000] call Client_fnc_checkMoney;
if !(_cashCheck) exitwith { hint "Nie posiadasz 10 000$!"; };

_HGweapon = randomPistol call bis_fnc_selectrandom;
player addWeaponGlobal _HGweapon;

[10000] call Client_fnc_removeCash;
