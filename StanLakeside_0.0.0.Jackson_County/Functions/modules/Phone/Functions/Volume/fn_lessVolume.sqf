_volume = (call TFAR_fnc_ActiveSwRadio) call TFAR_fnc_getSwVolume;
_volume = _volume - 1;
if(_volume < 1) then {_volume = 1;};
hint format[(localize "STR_RPF_MODULES_PHONE_VOLUME"), _volume];
[(call TFAR_fnc_ActiveSWRadio), _volume] call TFAR_fnc_setSwVolume;