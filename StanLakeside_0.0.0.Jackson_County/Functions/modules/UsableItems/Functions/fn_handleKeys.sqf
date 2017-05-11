params ["_ctrl", "_code", "_shift", "_ctrlKey", "_alt", ["_handled", false, [false]], "_veh", "_locked", "_interactionKey", "_mapKey", ["_interruptionKeys", [17,30,31,32]]];

switch (_code) do
{
	case 19:
	{
		if(_shift && (driver (vehicle player) isEqualTo player) && (vehicle player) != player) then {
		[] spawn ClientModules_UsableItems_fnc_itemNOS;
		_handle = true;
		};
	};
};
_handle