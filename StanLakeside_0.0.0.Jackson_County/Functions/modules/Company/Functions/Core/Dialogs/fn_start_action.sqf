disableSerialization;
private["_display","_listbox_companies","_text_information"];
if(!dialog) exitWith {};
params[["_type",""]];
_display = findDisplay 666019;
_listbox_companies = _display displayCtrl 1500;
_text_information = _display displayCtrl 1000;
if(_type == "companiesLBselect") exitWith {
      private["_data","_index","_short_name","_full_name","_access_level","_salary"];
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _short_name = _data select 1;
      _full_name = _data select 2;
      _access_level = _data select 4;
      _salary = _data select 5;
      _text_information ctrlSetText format[(localize "STR_RPF_MODULES_COMPANY_COMPANY_INFOLB"), _short_name, _full_name,_access_level, _salary];
};
if(_type == "start") exitWith {
      private["_data","_index","_id"];
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _id = _data select 0;
      closeDialog 0;
      [_id] spawn ClientModules_Company_fnc_job_start;
};
