/*
Author: Kerkkoh
First Edit: 14.3.2016

Additional Information:
This is the example additional module.
This mainly gives an idea how you can structure your module and what kind of things modules can currently do in RPF.

Read the readme file for full documentation on modules.
*/

player addEventHandler["ContainerOpened", {_this call ClientModules_OPOC_fnc_openContainer;}];
player addEventHandler["ContainerClosed", {_this call ClientModules_OPOC_fnc_closeContainer;}];

OPOC_inited = true;
diag_log "OnePlayerOpenContainer Module inited";
