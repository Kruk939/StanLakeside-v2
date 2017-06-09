_toEnd = 0;
while {RPF_phoneTryingCall && !RPF_phoneInCall && !RPF_phoneDisabled} do {
	playSound "sl_phone_call";
	_toEnd = _toEnd + 1;
	sleep 5;
	if (_toEnd > 12) exitWith  {RPF_phoneTryingCall = false; hint "Osoba do której dzwoniłeś nie odebrała telefonu!"; playSound "sl_phone_hangup";};
};