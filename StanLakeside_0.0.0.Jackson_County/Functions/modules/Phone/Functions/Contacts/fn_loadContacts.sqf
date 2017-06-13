closeDialog 0;
createDialog "phonecontacts";
[] call ClientModules_Phone_fnc_loadSkin;

lbClear 1500;
{
	_new = lbAdd [1500, format["%1 (%2)",(_x select 0),(_x select 1)]];
	lbSetData [1500, _new, str [(_x select 1), (_x select 2)]];
}forEach RPF_phoneContacts;