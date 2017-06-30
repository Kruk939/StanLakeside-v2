params[["_companies",[]]];
private["_display","_listbox_companies"];
disableSerialization;
waitUntil {dialog};

_display = findDisplay 666017;
_listbox_companies = _display displayCtrl 1500;
{
      private["_index","_veh_id","_clasname","_license","_name"];
      _veh_id = _x select 0;
      _clasname = _x select 1;
      _name = getText(configFile >> "CfgVehicles" >> _clasname >> "displayName");
      _license = _x select 3;
      _index = lbAdd [1500, format["%1 | %2(%3)", _veh_id, _name,_license]];
      _listbox_companies lbSetData [_index, str(_x)];
} forEach _companies;
