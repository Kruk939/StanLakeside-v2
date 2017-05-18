//maxtime = 0;
medical_deadPlayer = false;
medical_im_dead = false;
closedialog 0;
["set",0.25] call ClientModules_Medical_fnc_DoHealth;

sleep 1;
[player,""] remoteExec ["Client_fnc_animSync"];
player switchmove "";
player setVariable ["tf_voiceVolume", 1, true];
