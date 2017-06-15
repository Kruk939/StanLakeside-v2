_animation = ((call compile format["%1", (lbData[1500, (lbCurSel (1500))])]) select 0);
_type = ((call compile format["%1", (lbData[1500, (lbCurSel (1500))])]) select 1);
hint _animation;

closeDialog 0;
if ((primaryWeapon player) != "" && _animation isEqualTo "") exitWith {player switchMove "";};
switch (_type) do {
	case 1: {player switchMove ""; uiSleep 0.1; player playMove _animation;};
	case 2: {player switchMove _animation;};
};