closeDialog 0;
createDialog "phonemsg";
[] call ClientModules_Phone_fnc_loadSkin;
lbClear 1500;
{
	_name = _x select 0;
	_number = _x select 1;
	_id = _x select 2;
	_new = lbAdd [1500, format["%1 (%2)",_name,_number]];
	lbSetData [1500, _new, str [_number, _id]];
}forEach RPF_phoneContacts;