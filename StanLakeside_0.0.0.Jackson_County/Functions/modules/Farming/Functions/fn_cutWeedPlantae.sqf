params["_object"];
_randomValue = round(random 3) + 1;
_quality = _object getVariable["quality",0];
if(_quality <= 0) then { _quality = 1; };
_item = format["CG_WeedBag%1", _quality];


_msg = format[(localize "STR_RPF_MODULES_FARMING_CUTDOWN_WEED"),_randomValue];
["MarihuanaGathered"] call mav_ttm_fnc_addExp;
//[player,objNull,26,format ["%1 ściął marychę w sztukach %2 i jakości %3 CLASSNAME: %4",name player, _randomValue, _quality, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];
["Sukces", _msg, [0,255,0,1],""] call ClientModules_Notification_fnc_showNotification;
while {_randomValue > 0} do { player addItem _item; _randomValue = _randomValue - 1; };
_point = RPF_plantArray find _object;

if(_point >= 0) then {RPF_plantArray deleteAt _point };
deletevehicle _object;
player additem "NP_GrowingPlot";