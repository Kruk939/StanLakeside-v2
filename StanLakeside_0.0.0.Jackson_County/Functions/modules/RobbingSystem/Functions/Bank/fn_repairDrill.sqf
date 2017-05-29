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


RPF_DrillStopped = false;
hint "Wygląda dobrze!";