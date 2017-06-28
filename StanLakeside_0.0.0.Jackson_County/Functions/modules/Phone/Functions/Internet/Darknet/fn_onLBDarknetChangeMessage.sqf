disableSerialization;

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_str = lbData [1500, _indx];
_arr = call compile _str;
ctrlSetText [1400, format["%1 ", _arr select 0]];