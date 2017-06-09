if (isNull RPF_phoneCallerObj) exitWith {};
if (RPF_phoneDisabled) exitWith {hint "Mam wyłączone rozmowy!"; [1] remoteExecCall ["ClientModoules_Phone_fnc_failCall", RPF_phoneCallerObj];};
if (RPF_phoneInCall) exitWith {hint "Jestem już w rozmowie!"; [2] remoteExecCall ["ClientModoules_Phone_fnc_failCall", RPF_phoneCallerObj];};
if (RPF_phoneTryingCall) exitWith {hint "Jestem już w trakcie dzwonienia!"; [2] remoteExecCall ["ClientModoules_Phone_fnc_failCall", RPF_phoneCallerObj];};
if(count (player call TFAR_fnc_radiosList) isEqualTo 0) exitWith {hint "Nie masz telefonu"; [3] remoteExecCall ["ClientModoules_Phone_fnc_failCall", RPF_phoneCallerObj];};

_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
_channel = _channel + 1;
[(call TFAR_fnc_activeSwRadio), _channel, RPF_phoneCallerNumber] call TFAR_fnc_SetChannelFrequency;
player setVariable ["tf_unable_to_use_radio", false];

playSound "sl_phone_static";

RPF_phoneInCall = true;
[RPF_phoneCallerNumber, player] remoteExecCall ["ClientModules_Phone_fnc_answeredCall",RPF_phoneCallerObj];