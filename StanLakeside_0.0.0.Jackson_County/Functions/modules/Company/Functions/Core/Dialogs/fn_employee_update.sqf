
disableSerialization;
private["_company_id","_employee_id","_description","_employe_id","_employe_uid","_employe_name","_access_level","_salary","_display","_edit_paycheck","_edit_access_level","_listbox_logs","_text_employee_name","_text_empoyee_info"];

_display = findDisplay 666018;
_edit_access_level = _display displayCtrl 1400;
_edit_paycheck = _display displayCtrl 1401;
_listbox_logs = _display displayCtrl 1500;
_text_employee_name = _display displayCtrl 1000;
_text_empoyee_info = _display displayCtrl 1002;

_employee_id = (_display getVariable["displayData",[0]]) select 0;
if(_employee_id == 0) exitWith {};

_company_id = company_var_active_data select 0;
_access_level = parseNumber(ctrlText 1400);
_salary = parseNumber(ctrlText 1401);
if(_access_level < 0) then { _access_level = 0; };
if(_access_level > 10) then { _access_level = 10; };
if(_salary < 0) then { _salary = 0; };
_salary = round(_salary);
["update",[_salary,_access_level,_employee_id,_company_id]] remoteExec ["ServerModules_Company_fnc_employeesUpdate",2];
