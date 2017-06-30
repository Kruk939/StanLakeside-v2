disableSerialization;
private["_listbox_employees","_listbox_applicants","_text_company_name","_display","_text_application_preview"];
if(!dialog) exitWith {};
params[["_type",""]];
_display = findDisplay 666011;
_listbox_employees = _display displayCtrl 1500;
_listbox_applicants = _display displayCtrl 1501;
_text_company_name = _display displayCtrl 1000;
_text_application_preview = _display displayCtrl 1001;
if(_type == "applicationLBselect") exitWith {
      private["_data","_index","_name","_description"];
      _index = lbCurSel 1501;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1501, _index]);
      _name = _data select 4;
      _description = _data select 2;
      _text_application_preview ctrlSetText _description;
};
if(_type == "kickEmployee") exitWith {
      private["_data","_index","_employee_id"];
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _employee_id = _data select 3;
      closeDialog 0;
      ["employee",[company_var_active_data select 0, _employee_id]] remoteExec ["ServerModules_Company_fnc_employeesDelete",2];
      [] spawn ClientModules_Company_fnc_main_open;
};
if(_type == "editEmployee") exitWith {
      private["_data","_index","_employee_id"];
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _employee_id = _data select 3;
      closeDialog 0;
      [_employee_id] spawn ClientModules_Company_fnc_employee_open;
};
if(_type == "acceptApplication") exitWith {
      private["_data","_index","_applicant_id","_applicant_uid"];
      _index = lbCurSel 1501;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1501, _index]);
      _applicant_id = _data select 0;
      _applicant_uid = _data select 3;
      ["applicant",[ _applicant_id]] remoteExec ["ServerModules_Company_fnc_employeesDelete",2];
      ["new", [company_var_active_data select 0, _applicant_uid, 1]] remoteExec ["ServerModules_Company_fnc_employeesInsert",2];
      [] spawn ClientModules_Company_fnc_main_open;
};
if(_type == "declineApplication") exitWith {
      private["_data","_index","_applicant_id","_applicant_uid"];
      _index = lbCurSel 1501;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1501, _index]);
      _applicant_id = _data select 0;
      _applicant_uid = _data select 3;
      ["applicant",[ _applicant_id]] remoteExec ["ServerModules_Company_fnc_employeesDelete",2];
      [] spawn ClientModules_Company_fnc_main_open;
};
