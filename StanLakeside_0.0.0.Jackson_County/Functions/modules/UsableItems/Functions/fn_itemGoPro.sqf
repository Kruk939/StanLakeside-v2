if !(RPF_gopro) then {
    RPF_gopro = true;
    ["Włączyłeś Go Pro!", false] spawn ClientModules_Notification_fnc_doMsg;
    490 cutRsc ["HUDGoPro","PLAIN"]; 
} else {
    RPF_gopro = false;
    ["Wyłączyłeś Go Pro!", false] spawn ClientModules_Notification_fnc_doMsg;
    490 cutfadeout 1;
};