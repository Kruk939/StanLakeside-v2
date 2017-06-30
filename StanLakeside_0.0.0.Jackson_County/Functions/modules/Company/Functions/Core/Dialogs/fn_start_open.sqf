if((count company_var_active_data) > 0) exitWith {};
disableSerialization;
private["_display","_listbox_companies"];
createDialog "company_start";
_display = findDisplay 666019;
_listbox_companies = _display displayCtrl 1500;
{
      private["_index","_company_name","_short_name"];
      _company_name = _x select 2;
      _short_name = _x select 1;
      _index = lbAdd [1500, format["[%1] - %2", _short_name, _company_name]];
      _listbox_companies lbSetData [_index, str(_x)];
} forEach company_var_data;
