params["_data"];
disableSerialization;

lbClear 1500;
{
	_itemDetails = [(_x select 0)] call client_fnc_fetchItemType;
	_itemList = lbAdd [1500, format["%1", (_itemDetails select 1)]];
	lbSetPicture[1500, _itemList, (_itemDetails select 2)];
	lbSetData [1500, _itemList, str [(_x select 0), (_x select 1), (_x select 2), (_x select 3), (_x select 4)]];
} forEach _data;

lbSetCurSel [1500,0];
