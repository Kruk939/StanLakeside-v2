params["_data"];

disableSerialization;
_display = findDisplay 1444;
_vehicleList = _display displayCtrl 1500;
_colorList = _display displayCtrl 1501;
_materialList = _display displayCtrl 1502;

// ***************************************************************************
// vehicleList section
// ***************************************************************************
lbClear _vehicleList;
{
	_classname = _x select 0;
	_name = getText(configFile >> "CfgVehicles" >> _classname >> "displayName");
	_price = _x select 1;
	_count = _x select 2;

	_vehicleList lbAdd format["%1",_name]; 
	_vehicleList lbSetdata [(lbSize _vehicleList)-1,str([_classname, _price, _count])];
} forEach _data;

// ***************************************************************************
// colorList section
// ***************************************************************************
lbClear _colorList;
{
	_TextureDisplayName = getText(configFile >> "CfgIvoryTextures" >> _x >> "displayName");
	_colorList lbAdd format["%1",_TextureDisplayName];
	_colorList lbSetdata [(lbSize _colorList)-1,str(_x)];
} foreach RPF_TextureList;

// ***************************************************************************
// materialList section
// ***************************************************************************
lbClear _materialList;
{
	_material = _x select 0;
	_price = _x select 1;	
	_FinishDisplayName = getText(configFile >> "CfgIvoryMaterials" >> _material >> "displayName");
	_materialList lbAdd format["$%2 - %1",_FinishDisplayName,_price];
	_materialList lbSetdata [(lbSize _materialList)-1,str([_material, _price])];
} foreach RPF_materialList;


lbSetCurSel [1500, 0];
lbSetCurSel [1501, 0];
lbSetCurSel [1502, 0];