if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
waitUntil {!(isNil {player}) && player == player && alive player};
cutText ["Loading in...","BLACK",1];
	
[player, false] remoteExec ["Server_fnc_initStats", 2];
	
waitUntil {player getVariable ["loadedIn", false]};
	
cutText ["","plain",1];
[] spawn Client_fnc_initHudLoop;

[] call Client_fnc_miscVariables;
	
[] call Client_fnc_initInteractions;
	
player setVariable ["cuffed", false, true];

RPF_Holstered = 0;
	
(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if ((_this select 1) == RPF_InteractionKey) then {
		[]call Client_fnc_openInteraction;
		false;
	}
}];
	
[] spawn Client_fnc_initSurvivalLoop;
	
[] call ClientModules_fnc_initModules;