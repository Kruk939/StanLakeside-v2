params["_data"];
private["_dead","_playerInjuries"];
medical_myHealth = _data deleteAT 0;
_dead = _data deleteAT 0;
medical_bleedingEffect = _data deleteAT 0;
_playerInjuries = _data;
if(_dead != 0) then { medical_deadPlayer = true; medical_im_dead = true; };
player setVariable["medical_deadPlayer",medical_deadPlayer,true];
player setVariable["medical_playerInjuries", _playerInjuries, true];
player setVariable["medical_playerInjuries_toUpdate", _playerInjuries, false];

medical_inited = true;
diag_log "Medical Module inited";