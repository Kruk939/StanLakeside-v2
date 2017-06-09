
disableSerialization;
//_display = findDisplay 1104;
//_msg = _display displayCtrl 1700;

_indx = lbCurSel 1500;
if (_indx == -1) exitWith {};
_str = lbData [1500, _indx];
_arr = call compile _str;
diag_log _arr;
//_data = lbData[1500,lbCurSel (1500)];
//_data = call compile format["%1", _data];
ctrlSetText [1400, format["%1", _arr select 0]];
diag_log (_arr select 0);
//ctrlSetStructuredText [1700, parsetext format["<t color='#33CC33'>TYTUŁ: %2 <t color='#ffffff'> <br/><br/> %1 <t color='#33CC33'> <br/><br/> NADAWCA: %3", _arr select 0, _arr select 1, _arr select 2]];