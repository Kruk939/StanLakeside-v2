params["_type"];
if (_type isEqualTo 1) exitWith {
	[575] call Client_fnc_removeCash;
	hint "Pomyślnie zmieniłeś rejestrację pojazdu!";
};	
if (_type isEqualTo 2) exitWith {
	hint "Taka rejestracja już istnieje!";
};