
RPF_fadeSound = false;

["OpenRP.net", "fadeSoundKey", "Fade Sound Key", {_this call ClientModules_FadeSound_fnc_fadeSound}, "",  [0x18, [false, true, false]]] call cba_fnc_addKeybind;
//["StanLakeside.pl", "fadeSoundKey", "Fade Sound Key", {_this call ClientModules_FadeSound_fnc_fadeSound}, {_this call ClientModules_FadeSound_fnc_fadeSound}, [0x19, [false, true, false]]] call cba_fnc_addKeybind;

FadeSound_inited = true;
diag_log "FadeSound Module inited";
