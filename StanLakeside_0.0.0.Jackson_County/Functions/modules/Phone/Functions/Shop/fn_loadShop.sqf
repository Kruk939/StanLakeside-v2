closeDialog 0;
createDialog "phoneskinshop";

lbClear 1500;
lbClear 1501;
lbClear 1502;

{
	_new = lbAdd [1500, format["%1",(_x select 0)]];
	lbSetData [1500, _new, str [(_x select 1), (_x select 2)]];
}forEach (getArray(missionConfigFile >> "RPF_phoneModule" >> "Skins" >> "PhoneSkins"));
{
	_new = lbAdd [1501, format["%1",(_x select 0)]];
	lbSetData [1501, _new, str [(_x select 1), (_x select 2)]];
}forEach (getArray(missionConfigFile >> "RPF_phoneModule" >> "Backgrounds" >> "PhoneBackgrounds"));
{
	_new = lbAdd [1502, format["%1",(_x select 0)]];
	lbSetData [1502, _new, str [(_x select 1), (_x select 2)]];
}forEach (getArray(missionConfigFile >> "RPF_phoneModule" >> "Ringtones" >> "PhoneRingtones"));

lbSetCurSel[1500,0];
lbSetCurSel[1501,0];
lbSetCurSel[1502,0];