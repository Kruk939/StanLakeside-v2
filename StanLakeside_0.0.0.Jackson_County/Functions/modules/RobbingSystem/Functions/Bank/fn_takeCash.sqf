if(!RPF_readyTakeCash) exitwith {};

_timeCounter = 0;
_random = round(random 60) + 120;

player playmove "AinvPknlMstpSnonWnonDnon_medic_1";

for "_i" from 0 to 1 step 0 do {
	if(animationstate player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playmove "AinvPknlMstpSnonWnonDnon_medic_1"; };
	_timeCounter = _timeCounter + 1;
	if(_timeCounter > _random) exitwith {};
	uisleep 1;
	hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>NAPRAWIAM WIERTŁO</t><br/> %1 z %2 sekund.",_timeCounter, _random];
};

_suitCases = ["kif_10k","kif_10k","kif_10k","kif_10k","kif_5k","kif_5k","kif_5k","kif_10k","kif_10k","kif_10k","kif_10k","kif_50k","kif_50k","kif_50k","kif_50k","kif_100k"];

for [{_i = 0}, {_i < 3}, {_i = _i + 1}] do {
	_item = _suitCases call BIS_fnc_selectRandom;
	player addItem _item;
};

_random = round(random(25000)) + 20000;
//[format["Ukradles $%1, przez 5 minut służby porządkowe mają podgląd na Twoją pozycję", _random], false] call domsg;
//[player,player,15,format ["%1 ukradł %2 $ z banku!", name player, _random],""] remoteExec ["server_fnc_actionLog", 2];
[_random] call Client_fnc_addCash;
closedialog 0;
//player setvariable ["robber",true,true];
//sleep 300;
//player setvariable ["robber",nil,true];