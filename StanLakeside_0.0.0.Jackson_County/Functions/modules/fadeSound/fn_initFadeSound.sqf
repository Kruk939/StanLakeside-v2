
RPF_fadeSound = false;

//(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call ClientModules_fadeSound_fnc_handleKeys"];
//(findDisplay 46) displayAddEventHandler ["KeyUp", "_this call ClientModules_fadeSound_fnc_handleKeys"];

FadeSound_inited = true;
diag_log "FadeSound Module inited";