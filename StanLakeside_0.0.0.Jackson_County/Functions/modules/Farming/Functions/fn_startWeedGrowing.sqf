params["_object"];

_object setVariable ["growing",true,true];
_object setVariable ["count",0];
_object setVariable ["quality",4];

_count = 0;
_random = round(random 10) + 10;
while{_count < _random && (_object getVariable ["growing",false])} do {
	_object setVariable ["checkFinish", true];
	_object setVariable ["actionPerformed", false];
	sleep round(random 15) + 15;
	_object setVariable ["checkFinish", false];
	_randomValue = round(random 5);
	if(_randomValue isEqualTo 1 || _randomvalue isEqualTo 0) then { _object setVariable["requiredOutput", "Water"]; };
	if(_randomValue isEqualTo 2) then { _object setVariable["requiredOutput", "Prune"]; };
	if(_randomValue isEqualTo 3) then { _object setVariable["requiredOutput", "Cool"]; };
	if(_randomValue isEqualTo 4) then { _object setVariable["requiredOutput", "Heat"]; };
	if(_randomValue isEqualTo 5) then { _object setVariable["requiredOutput", "Turnover"]; };
	sleep round(random 15) + 15;
	_count = _count + 1;
	_object setpos [(getpos _object select 0),(getpos _object select 1),(getpos _object select 2)+0.15];
	_skip = random(20);
	waitUntil{_object getVariable ["actionPerformed",false] || _skip < 5};
};
removeAllActions _object;
if(isNull _object) exitwith {};
_object setVariable ["ready",true,false];