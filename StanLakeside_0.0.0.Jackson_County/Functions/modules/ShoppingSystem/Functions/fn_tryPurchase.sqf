_index = lbCurSel (1500);
_status = lbData[1500, _index];
_data = call compile format["%1", _status];

_check = [1, (_data select 1)] call Client_fnc_checkMoney;
if (_check) exitWith {hint "Nie masz wystarczająco pieniędzy!";};

[player, (_data select 0), RPF_ShopType, (_data select 1)] remoteExecCall ["ServerModules_ShoppingSystem_fnc_tryPurchase",2];