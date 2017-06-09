if (RPF_phoneInCall) exitWith {
	_channel = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwChannel;
	_channel = _channel + 1;
	[(call TFAR_fnc_activeSwRadio), _channel, getPlayerUID player] call TFAR_fnc_SetChannelFrequency;
	player setVariable ["tf_unable_to_use_radio", true];
	playSound "sl_phone_hangup";
	hint "Zakończyłeś rozmowę.";
	if (!isNull RPF_phoneAnswerObj) then {[] remoteExec ["ClientModules_Phone_fnc_endCall", RPF_phoneAnswerObj]; RPF_phoneAnswerObj = objNull; RPF_phoneInCall = false;};
	if (!isNull RPF_phoneCallerObj) then {[] remoteExec ["ClientModules_Phone_fnc_endCall", RPF_phoneCallerObj]; RPF_phoneCallerObj = objNull; RPF_phoneInCall = false;};
};