disableSerialization;
_check = [1, 575] call Client_fnc_checkMoney;
if (!_check) exitWith {hint "Nie masz wystarczająco pieniędzy! (575$)";};

_plate = ctrlText 1400;
hint _plate;
closedialog 0;

_string = _plate splitString " " joinString "";
_string = _string splitString "#" joinString "";
_string = _string splitString "*" joinString "";
_string = _string splitString "-" joinString "";
_string = _string splitString "." joinString "";
_string = _string splitString "/" joinString "";
_string = _string splitString "\" joinString "";
_string = _string splitString ">" joinString "";
_string = _string splitString "<" joinString "";
_string = _string splitString "_" joinString "";
_string = _string splitString "|" joinString "";
_string = _string splitString "?" joinString "";
_string = _string splitString "!" joinString "";
_string = _string splitString "," joinString "";
_string = _string splitString "@" joinString "";
_string = _string splitString "$" joinString "";
_string = _string splitString "%" joinString "";
_string = _string splitString "^" joinString "";
_string = _string splitString "&" joinString "";
_string = _string splitString "(" joinString "";
_string = _string splitString ")" joinString "";
_string = _string splitString "=" joinString "";
_string = _string splitString "+" joinString "";
_string = _string splitString "[" joinString "";
_string = _string splitString "]" joinString "";
_string = _string splitString "{" joinString "";
_string = _string splitString "}" joinString "";
_string = _string splitString "'" joinString "";
_string = _string splitString ";" joinString "";
_string = _string splitString ":" joinString "";
_string = _string splitString "€" joinString "";
_string = _string splitString "ł" joinString "";
_string = _string splitString "ó" joinString "";
_string = _string splitString "ą" joinString "";
_string = _string splitString "ć" joinString "";
_string = _string splitString "ż" joinString "";
_string = _string splitString "ź" joinString "";
_string = _string splitString "ć" joinString "";
_string = _string splitString "ę" joinString "";
_string = _string splitString "ń" joinString "";
_string = _string splitString "ś" joinString "";
_string = _string splitString "`" joinString "";
_string = _string splitString "~" joinString "";
_string = _string splitString '"' joinString "";


if (_string isEqualTo "") exitWith {hint "Twoja tablica jest pusta!";};
if (isNil "_string") exitWith {hint "Twoja tablica jest pusta!";};
if ((count _string) > 7) exitWith {hint "Twoja tablica ma więcej niż 7 znaków!";};
hint "1";
[plateOld,_string,player] remoteExecCall ["ServerModules_Garage_fnc_tryChangePlate",2];
plateOld = "";
hint "2";