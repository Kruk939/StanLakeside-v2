params ["_type"];
if (_type isEqualTo "car") exitWith {
	_index = lbCurSel (1500);
	_status = lbData[1500, _index];
	_data = call compile format["%1", _status];
	_classname = _data select 0;
	_price = _data select 1;
	_count = _data select 2;

	if (RPF_Showroom_veh isKindOf "Car") then {
		_index = lbCurSel (1502);
		_status = lbData[1502, _index];
		_data = call compile format["%1", _status];
		_pricePaint = _data select 1;
		_price = _price + _pricePaint;
	};

	ctrlSetText[1002,format[localize ("STR_RPF_MODULES_SHOWROOM_PRICE"),_price]];
	_engine = getNumber(configFile >> "CfgVehicles" >> _classname >> "enginePower");
	ctrlSetText[1001,format[localize ("STR_RPF_MODULES_SHOWROOM_HP"),_engine]];
	_transportSoldier = getNumber(configFile >> "CfgVehicles" >> _classname >> "transportSoldier");
	ctrlSetText[1003,format[localize ("STR_RPF_MODULES_SHOWROOM_SEATS"),_transportSoldier]];
	ctrlSetText[1004,format[localize ("STR_RPF_MODULES_SHOWROOM_AVAILABLE"),_count]];

	if (!isNil "RPF_Showroom_veh") then {deleteVehicle RPF_Showroom_veh;};

	player allowDamage false;
	if (_classname isKindOf "Car") then {
		RPF_Showroom_veh = _classname createVehicleLocal [9635.05,977.753,0.00141358];
		RPF_Showroom_veh setPos [9635.05,977.753,0.00141358];
		RPF_Showroom_veh setDir 180;
		RPF_Showroom_veh allowDamage false;
	};
	if (_classname isKindOf "Air") then {
		RPF_Showroom_veh = _classname createVehicleLocal [2544.39,801.722,0.00144196];
		RPF_Showroom_veh setPos [2544.39,801.722,0.00144196];
		RPF_Showroom_veh setDir 180;
		RPF_Showroom_veh allowDamage false;
	};
	if (_classname isKindOf "Ship") then {
		RPF_Showroom_veh = _classname createVehicleLocal [696.876,416.723,3.13335];
		RPF_Showroom_veh setPos [696.876,416.723,3.13335];
		RPF_Showroom_veh setDir 180;
		RPF_Showroom_veh allowDamage false;
	};

	RPF_camera camSetTarget RPF_Showroom_veh;
	RPF_camera camSetRelPos [2.7,1,0.25];
	RPF_camera camSetFOV .99;
	RPF_camera camCommit 0;

	player disableCollisionWith RPF_Showroom_veh;
	player allowdamage true;

	if (RPF_Showroom_veh isKindOf "Car") then {
		["color"] call ClientModules_Showroom_fnc_onLBChange;
		["material"] call ClientModules_Showroom_fnc_onLBChange;
	};
};

if (_type isEqualTo "material") exitWith {
	if (RPF_Showroom_veh isKindOf "Car") exitWith {
		_index = lbCurSel (1500);
		_status = lbData[1500, _index];
		_data = call compile format["%1", _status];
		_classname = _data select 0;
		_price = _data select 1;
		_count = _data select 2;

		_index = lbCurSel (1502);
		_status = lbData[1502, _index];
		_data = call compile format["%1", _status];
		_material = _data select 0;
		_priceMaterial = _data select 1;

		_material = getText(configfile >> "CfgIvoryMaterials" >> _material >> "material");
		RPF_Showroom_veh setObjectMaterial [0, _material];
		_price = _price + _priceMaterial;

		ctrlSetText[1002,format[localize ("STR_RPF_MODULES_SHOWROOM_PRICE"),_price]];
	};
};

if (_type isEqualTo "color") exitWith {
	if (RPF_Showroom_veh isKindOf "Car") exitWith {
		_index = lbCurSel (1501);
		_status = lbData[1501, _index];
		_data = call compile format["%1", _status];
		_color = getText(configfile >> "CfgIvoryTextures" >> _data >> "texture");

		RPF_Showroom_veh setObjectTexture [0, _color];
	};
};