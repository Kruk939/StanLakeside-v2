AcetoneArray = ["UWAGA: Substancja jest zbyt ciemna!","UWAGA: Substancja wydaje się być czarna!","UWAGA: Substancja jest zbyt jaskrawa!","UWAGA: Do substancji wpadł proszek do prania!","UWAGA: Substancja jest zanieczyszczona!"];
PseudoArray = ["UWAGA: Substancja traci kolor!","UWAGA: Substancja jest mętna!","UWAGA: Substancja jest prawie przeźroczysta!","UWAGA: Substancja zmienia kolor na różowy!","UWAGA: Substancja ma odczyn kwasowy!"];
CoolArray = ["UWAGA: Wydziela się zbyt dużo pary!","UWAGA: Kończy się gaz w palniku!","UWAGA: Robi się gorąco!","UWAGA: Substancja się pieni!","UWAGA: Substancja pachnie jak olej!","UWAGA: Substancja się przelewa!"];
HeatArray = ["UWAGA: Substancja nie może przedostać się przez rurkę!","UWAGA: Substancja jest bardzo gęsta!","UWAGA: Substancja wygląda jak klej!","UWAGA: Substancja ma konsystencję gumy!"];
ReleaseArray = ["UWAGA: Substancja płynie zbyt szybko!","UWAGA: Para zaczyna się ulatniać!","UWAGA: Fiolki wyglądają na zamglone!"];

_count = 0;
RPF_statusCooking = false;
while{_count < 10 && RPF_nowMethCooking} do {
	RPF_statusCooking = true;
	sleep 10;
	RPF_statusCooking = false;
	_randomValue = round(random 5);
	if(_randomValue == 1 || _randomvalue == 0) then {RPF_requiredOutput = "Acetone"; _message = AcetoneArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 2) then { RPF_requiredOutput = "Pseudo"; _message = PseudoArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 3) then { RPF_requiredOutput = "Cool"; _message = CoolArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 4) then { RPF_requiredOutput = "Heat"; _message = HeatArray call BIS_fnc_selectRandom; hint _message; };
	if(_randomValue == 5) then { RPF_requiredOutput = "Release"; _message = ReleaseArray call BIS_fnc_selectRandom; hint _message; };
	sleep 30;
	_count = _count + 1;
};

RPF_drugValue = RPF_drugValue - RPF_lvlMeth;
player removeaction myAction1;
player removeaction myAction2;
player removeaction myAction3;
player removeaction myAction4;
player removeaction myAction5;
player removeaction myActionPack;

if(isNull RPF_methLabObj) exitwith {};

_randomValue = round(random 5) + 1;

if(RPF_drugValue < 50) then { RPF_drugValue = 50; };
_item = format["CG_MethBag%1", RPF_drugValue];
["Sukces",format["Ugotowałeś %1 worków metamfetaminy", _randomvalue],[0,255,0,1],""] call Client_fnc_showNotification;
[player,objNull,28,format ["%1 ugotował %2 worków metamfetaminy o jakości %3 CLASSNAME %4",name player, _randomValue, RPF_drugValue, _item],_randomValue] remoteExec ["server_fnc_actionLog", 2];
//hint format["Ugotowałeś %1 worków metamfetaminy!",_randomvalue];
player additem "NP_DrugTable";
["MethGathered"] call mav_ttm_fnc_addExp;

while {_randomValue > 0} do { player additem _item; _randomValue = _randomValue - 1; };

deletevehicle RPF_methLabObj;