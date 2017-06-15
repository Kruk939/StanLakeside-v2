closeDialog 0;
createDialog "animation";

lbClear 1500;
{
	_new = lbAdd [1500, format["%1",(_x select 0)]];
	lbSetData [1500, _new, str [(_x select 1), (_x select 2)]];
}forEach (getArray(missionConfigFile >> "RPF_playerInteractions" >> "Animations" >> "playerAnimations"));