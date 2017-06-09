params["_freq", "_answerPlayer"];
if (RPF_phoneDisabled) exitWith {hint "Mam wyłączone rozmowy!";};
if (RPF_phoneInCall) exitWith {hint "Jestem już w rozmowie!";};
//if (RPF_phoneTryingCall) exitWith {hint "Jestem już w trakcie dzwonienia!";};
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith {hint "Nie masz telefonu";};

RPF_phoneAnswerObj = _answerPlayer;

_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, _freq] call TFAR_fnc_SetChannelFrequency;
player setVariable ["tf_unable_to_use_radio", false];

playSound "sl_phone_static";

RPF_phoneInCall = true;
RPF_phoneTryingCall = false;
[] spawn ClientModules_Phone_fnc_startChargingCall;