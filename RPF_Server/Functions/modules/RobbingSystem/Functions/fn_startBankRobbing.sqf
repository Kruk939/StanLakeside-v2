params["_bank"];

if(isNull RPFServer_BankOne) then {RPFServer_BankOne = _bank;};
if(!isNull RPFServer_BankOne && isNull RPFServer_BankTwo) then {RPFServer_BankTwo = _bank;};

[] spawn ServerModules_RobbingSystem_fnc_bankAlarm;

if (!RPFServer_BankRobbing) exitWith {
	RPFServer_BankRobbing = true;
};
if (!RPFServer_BankRobbingSecond && RPFServer_BankRobbing) exitWith{
	RPFServer_BankRobbingSecond = true;
};

