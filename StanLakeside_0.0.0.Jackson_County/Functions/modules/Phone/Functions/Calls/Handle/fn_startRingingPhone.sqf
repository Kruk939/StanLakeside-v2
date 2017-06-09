params["_nameContact", "_senderPhone"];
_toEnd = 0;
_soundSource = objNull;
while {RPF_phoneRinging && !RPF_phoneInCall && !RPF_phoneDisabled} do {
	if (isNull _soundSource) then {_soundSource = createSoundSource [format["SFX_SL_Ringtone%1",(player getVariable "phoneRing")], position player, [], 0]; _soundSource attachTo[player, [0,0,0]];};
	//playSound3D ["SL_Client\Sounds\Phone\phone_call.ogg", player, false, getPosASL player, 1, 1, 8];
	_toEnd = _toEnd + 1;

	if (_nameContact != "") then {
		hint format["Kontakt: %1 dzwoni do Ciebie!!",_nameContact];
	} else {
		hint format["Numer: %1 dzwoni do Ciebie!",_senderPhone];
	};

	sleep 5;
	if (_toEnd > 12) exitWith {RPF_phoneRinging = false; hint "Nie odebrałeś połączenia!"; deleteVehicle _soundSource; if (!isNull RPF_phoneCallerObj) then {[4] remoteExecCall ["ClientModoules_Phone_fnc_failCall", RPF_phoneCallerObj];};};
};
deleteVehicle _soundSource;