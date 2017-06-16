/*
		Author: Kajetan "Kruk" Mruk
		Date: 15.03.2017
		Params:
			0 - Array, case data
			1 - String, type of data(vehicle/personal)
		Description: Reads data from case and display it on computer
		Return: none
*/
disableSerialization;
params[["_data",[]],["_type",""]];
private["_ok", "_display", "_title", "_text_title", "_text_info", "_plate"];

if(count _data == 0) exitWith {};
if(_type == "vehicle") exitWith {
	private["_description", "_officer_name", "_reason", "_wanted_level", "_text_info", "_plate","_string"];
	//v.id, v.plate, v.description, v.uid_officer, u.name, v.reason, v.wanted_level, v.active
	closeDialog 0;
	_ok = createDialog "kruk_slpd_info";
	if(!_ok) exitWith { hint "Dialog not created"; };
	_display = findDisplay 666003;
	_title = format [(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_VEHICLEID"), (_data select 0)];
	_text_title = _display displayCtrl 1000;
	_text_info = _display displayCtrl 1001;
	_text_title ctrlSetText _title;
	_plate = toUpper(_data select 1);
	_description = _data select 2;
	_officer_name = _data select 4;
	_reason = _data select 5;
	_wanted_level = _data select 6;
	kruk_slpd_computer_data = [(_data select 0), "vehicle", getPlayerUID player];

	_string = format[(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_SEARCHINFO"), _plate, _description, _wanted_level, _reason, _officer_name];
	_text_info ctrlSetText _string;
};
if(_type == "personal") exitWith {
	private["_suspect_uid", "_suspect_name", "_officer_name", "_wanted_level", "_charges","_string"];
	//w.id, w.uid_suspect, s.name, w.uid_officer, o.name, w.charges, w.wanted_level, w.active
	closeDialog 0;
	_ok = createDialog "kruk_slpd_info";
	if(!_ok) exitWith { hint "Dialog not created"; };
	_display = findDisplay 666003;
	_title = format [(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_PERSONID"), (_data select 0)];
	_text_title = _display displayCtrl 1000;
	_text_info = _display displayCtrl 1001;
	_text_title ctrlSetText _title;
	_suspect_uid = _data select 1;
	_suspect_name = _data select 2;
	_officer_name = _data select 4;
	_charges = _data select 5;
	_wanted_level = _data select 6;
	kruk_slpd_computer_data = [(_data select 0), "personal"];

	_string = format[(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_PERSONIDSEARCH"), _suspect_name, _suspect_uid, _wanted_level, _charges, _officer_name];
	_text_info ctrlSetText _string;
};
if(_type == "plate") exitWith {
	private["_enginePower", "_maxSpeed", "_name", "_owner_name", "_owner_uid", "_finish","_color","_class","_button_caseClose", "_button_caseClose", "_vehInfo", "_wantedInfo", "_vehInfo","_wantedString","_string"];
	closeDialog 0;
	_ok = createDialog "kruk_slpd_info";
	if(!_ok) exitWith { hint "Dialog not created"; };
	_display = findDisplay 666003;
	_text_title = _display displayCtrl 1000;
	_text_info = _display displayCtrl 1001;
	_button_caseClose = _display displayCtrl 1201;
	_button_caseClose ctrlShow false;
	_vehInfo = _data select 0;
	_wantedInfo = _data select 1;
	if(count _vehInfo != 0) then {
		_plate = toUpper(_vehInfo select 0);
		_class = _vehInfo select 1;
		_color = _vehInfo select 2;
		_color = getText(configFile >> "CfgIvoryTextures" >> _color >> "displayName");
		_finish = _vehInfo select 3;
		_finish = getText(configFile >> "CfgIvoryMaterials" >> _finish >> "displayName");
		_owner_uid = _vehInfo select 4;
		_owner_name = _vehInfo select 5;
		_name = getText(configFile >> "CfgVehicles" >> _class >> "displayName");
		_maxSpeed = getNumber(configFile >> "CfgVehicles" >> _class >> "maxSpeed");
		_enginePower = round(getNumber(configFile >> "CfgVehicles" >> _class >> "enginePower") * 1.341);
		_wantedString = "";
		{
			if((_x select 7) == 1) then {
				_wantedString = _wantedString + format["%1 ",_x select 0];
			};
		} forEach _wantedInfo;

		if(_wantedString == "") then { _wantedString = "NIE"; } else {
			_wantedString = format["TAK ( %1)",_wantedString];
		};
		_title = format [(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_VEHICLEINFO"), _plate];
		_text_title ctrlSetText _title;
		_string = format[(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_VEHICLEINFOSEARCH"), _plate, _owner_name, _owner_uid, _wantedString, _name, _color, _finish, _enginePower, _maxSpeed];
		_text_info ctrlSetText _string;
	} else { _title = format[(localize "STR_RPF_MODULES_COMPANY_POLICECOMPUTER_VEHICLENOTFOUND")]; };
};
