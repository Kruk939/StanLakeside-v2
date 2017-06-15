while {RPF_phoneInCall && !RPF_phoneDisabled} do {
	playSound "sl_phone_static";
	if ((player getVariable "phoneBalance") isEqualTo 0 || (player getVariable "phoneBalance") < 0) exitWith {[] call ClientModules_Phone_fnc_endCall; hint "Skończyły ci się środki na koncie!";};
	if ((player getVariable "phoneBalance") > 0) then {
		_balance = (player getVariable "phoneBalance") - (getNumber(missionConfigFile >> "RPF_phoneModule" >> "PhoneChargePrice"));
		player setVariable ["phoneBalance", _balance, true];
	};
	sleep 120;
};