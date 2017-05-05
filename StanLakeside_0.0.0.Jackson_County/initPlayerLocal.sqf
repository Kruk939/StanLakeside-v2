if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
waitUntil {!(isNil {player}) && player == player && alive player};
400 cutRsc ["HUDLoading","PLAIN"];
cutText ["","BLACK",1];
disableUserInput true;
	
[player, false] remoteExec ["Server_fnc_initStats", 2];
	
waitUntil {player getVariable ["loadedIn", false]};

400 cutfadeout 1;
cutText ["","plain",1];
disableUserInput false;

[] call Client_fnc_miscVariables;
	
[] call Client_fnc_initInteractions;
	
player setVariable ["cuffed", false, true];

RPF_Holstered = 0;
	
(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if ((_this select 1) == RPF_InteractionKey) then {
		[] call Client_fnc_openInteraction;
		false;
	}
}];
	
[] spawn Client_fnc_initSurvivalLoop;
[] call ClientModules_fnc_initModules;
