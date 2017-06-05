params ["_obiekt"];
private ["_myInfo", "_playerInfo", "_nearPlayers", "_getPos", "_lootAmount", "_i", "_d", "_lootType", "_lootItem", "_lootMoney", "_lootTypeArray", "_lTAsel", "_distance"];

Trash_var_enable = 1;
hint "Przeszukiwanie...";

_lootTypeArray = [];
_lootAmount = selectRandom [0, 1, 3, 0, 1, 2, 0, 1, 1, 0, 1, 2, 1, 0, 1, 2, 0, 1, 4, 0];
_getPos = getPos player;
_error = false;
  _nearPlayers = nearestObjects [_obiekt, ["Man"], 1];
  if ((count _nearPlayers) > 1) then {
    {
      if (_x != player) then {
        if ((animationState _x) isEqualTo "AinvPknlMstpSnonWnonDnon_medic_1") exitWith {_error = true; _obiekt setDamage 1;};
      };
    }forEach _nearPlayers;
  };
if (_error) exitWith {hint "W pobliżu jest osoba, która przeszukuje te same śmieci!";};

if (_lootAmount isEqualTo 0) then {
player playmove "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 4;
hint "Nie ma tu nic wartego uwagi!";
Trash_var_enable = 0;
_obiekt setDamage 1;
} else {
for "_d" from 0 to _lootAmount do {

  _nearPlayers = nearestObjects [_obiekt, ["Man"], 1];
  if ((count _nearPlayers) > 1) then {
  {
  if ((animationstate _x) isEqualTo "AinvPknlMstpSnonWnonDnon_medic_1") exitWith {
    player playmove "AinvPknlMstpSnonWnonDnon_medic_1";
    uiSleep 2;
    hint "Rozerwaliście te śmieci na strzępy!";
    Trash_var_enable = 0;
    _obiekt setDamage 1;};
  } forEach _nearPlayers;};

  _lootType = selectRandom [1, 2];
  _lootTypeArray set [_d, _lootType];
  if (animationstate player != "AinvPknlMstpSnonWnonDnon_medic_1") then {player playmove "AinvPknlMstpSnonWnonDnon_medic_1";};
  uiSleep 1;
};

  if ((_lootTypeArray find 1) != -1) then {
  clearItemCargoGlobal Trash_var_box;
  clearMagazineCargoGlobal Trash_var_box;
  clearWeaponCargoGlobal Trash_var_box;
  clearBackpackCargoGlobal Trash_var_box;
  Trash_var_box setPos [getPos player select 0, getPos player select 1, getpos player select 2];
  };

  uiSleep 1;

for "_i" from 0 to _lootAmount do {

  uiSleep 1;
  _nearPlayers = nearestObjects [_obiekt, ["Man"], 1];
  if ((count _nearPlayers) > 1) then {
  {
  if ((animationstate _x) isEqualTo "AinvPknlMstpSnonWnonDnon_medic_1") exitWith {
    player playmove "AinvPknlMstpSnonWnonDnon_medic_1";
    uiSleep 2;
    hint "Rozerwaliście te śmieci na strzępy!";
    Trash_var_enable = 0;
    _obiekt setDamage 1;};
  } forEach _nearPlayers;};

  if (animationstate player != "AinvPknlMstpSnonWnonDnon_medic_1") then {player playmove "AinvPknlMstpSnonWnonDnon_medic_1";};
  _lTAsel = _lootTypeArray select _i;
  _distance = player distance _getPos;
  if (_distance > 2) exitWith {
  hint "Za bardzo się oddaliłes!";
  player playmove "";
  Trash_var_enable = 0;
  _obiekt setDamage 1;};

  if (_lTAsel isEqualTo 1) then {
    _lootItem = Trash_var_loot call BIS_fnc_selectRandom;
    Trash_var_box addItemCargoGlobal [_lootItem, 1];
    hint "Znalazłeś jakiś przedmiot";
    } else {
    _lootMoney = Trash_var_money call BIS_fnc_selectRandom;
    [_lootMoney] call Client_fnc_addCash;
    hint "Znalazłeś trochę pieniędzy";};
    };
  };

player playmove "";
Trash_var_enable = 0;
_obiekt setDamage 1;
