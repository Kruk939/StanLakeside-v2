if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
profilenamespace setVariable ['GUI_BCG_RGB_R',0.118];
profilenamespace setVariable ['GUI_BCG_RGB_G',0.545];
profilenamespace setVariable ['GUI_BCG_RGB_B',0.765];
profilenamespace setVariable ['GUI_BCG_RGB_A',1];
waitUntil {!(isNil {player}) && player == player && alive player};
400 cutRsc ["HUDLoading","PLAIN"];
cutText ["","BLACK",1];
//disableUserInput true;
	
[player, false] remoteExec ["Server_fnc_initStats", 2];
	
waitUntil {player getVariable ["loadedIn", false]};

400 cutfadeout 1;
cutText ["","plain",1];
//disableUserInput false;

[] call Client_fnc_miscVariables;
	
[] call Client_fnc_initInteractions;
	
player setVariable ["cuffed", false, true];

RPF_Holstered = 0;

//https://github.com/CBATeam/CBA_A3/wiki/Keybinding#example
//https://community.bistudio.com/wiki/DIK_KeyCodes
["StanLakeside.pl","InteractionKey","Interaction Key",{call Client_fnc_openInteraction},{true},[0xDB, [false, false, false]],false] call cba_fnc_addKeybind;
	
//[] spawn Client_fnc_initSurvivalLoop;
[] call ClientModules_fnc_initModules;
