params[["_employees",[]],["_applicants",[]]];
private["_company_name","_listbox_employees","_listbox_applicants","_text_company_name","_display"];
disableSerialization;
if((count company_var_active_data) == 0) exitWith {};
if(dialog) then { closeDialog 0; };
createDialog "company_main";
waitUntil {dialog};
_display = findDisplay 666011;
_listbox_employees = _display displayCtrl 1500;
_listbox_applicants = _display displayCtrl 1501;
_text_company_name = _display displayCtrl 1000;
_company_name = company_var_active_data select 2;
_text_company_name ctrlSetText _company_name;
{
      private["_index"];
      _index = lbAdd [1500, (_x select 1)];
      _listbox_employees lbSetData [_index, str(_x)];
} forEach _employees;
{
      private["_index"];
      _index = lbAdd [1501, (_x select 4)];
      _listbox_applicants lbSetData [_index, str(_x)];
} forEach _applicants;
