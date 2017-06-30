
disableSerialization;
params[["_employee_data",[]],["_last_actions",[]]];
private["_description","_employee_id","_employee_uid","_employee_name","_access_level","_salary","_display","_edit_paycheck","_edit_access_level","_listbox_logs","_text_employee_name","_text_empoyee_info"];
_employee_id = _employee_data select 0;
_employee_uid = _employee_data select 1;
_employee_name = _employee_data select 2;
_access_level = _employee_data select 3;
_salary = _employee_data select 4;
_description = _employee_data select 5;

createDialog "company_employee";
waitUntil {dialog};
_display = findDisplay 666018;

_display setVariable["displayData", _employee_data];
_edit_access_level = _display displayCtrl 1400;
_edit_paycheck = _display displayCtrl 1401;
_listbox_logs = _display displayCtrl 1500;
_text_employee_name = _display displayCtrl 1000;
_text_empoyee_info = _display displayCtrl 1002;

_edit_access_level ctrlSetText format["%1",_access_level];
_edit_paycheck ctrlSetText format["%1",_salary];
_text_empoyee_info ctrlSetText _description;
_text_employee_name ctrlSetText _employee_name;
{
      private["_index"];
      _index = lbAdd [1500, str(_x)];
      _listbox_logs lbSetData [_index, str(_x)];
} forEach _last_actions;
