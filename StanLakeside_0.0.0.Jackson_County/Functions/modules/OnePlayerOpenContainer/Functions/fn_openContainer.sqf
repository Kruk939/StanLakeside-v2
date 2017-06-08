params["_object","_player"];

if (_object getVariable "currentlyOpened" isEqualTo 1) exitWith {closeDialog 0;};

_object setVariable ["currentlyOpened", 1, true];