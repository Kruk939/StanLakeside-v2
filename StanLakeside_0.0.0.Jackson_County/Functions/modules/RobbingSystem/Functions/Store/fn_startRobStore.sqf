params["_cursorTarget"];
private["_suitCaseName","_suitCases","_item","_startTime""_position","_timeLeft","_taskMessage","_lastRobbed","_timeExit","_doTaskBackground", "_doTaskPopup", "_doTaskText"];

_startTime = time;
_timeLeft = 360; //time to rob store

if (!(typeOf _cursorTarget in RPF_StoreList)) exitWith {};

// currently disabled
//if ((count RPF_CurrentCop) < 3) exitWith {hint "Za mało policjantów!";};

_lastRobbed = _cursorTarget getVariable ["RPF_lastRobbed",0];
if (_startTime - _lastRobbed < 600) exitWith {hint "Ten sklep był niedawno zrabowany!";};

disableSerialization;
_position = getPos _cursorTarget;

if (RPF_currentlyRobbing) exitWith {};
RPF_currentlyRobbing = true;

_doTaskBackground = uiNameSpace getVariable ["RSC_dotask",displayNull];
_doTaskPopup = _doTaskBackground displayCtrl 9119;
_doTaskText = "Okradam sklep";

for "_i" from 0 to 1 step 0 do {
	sleep 1;
	_timeLeft = _timeLeft - 1;
	_doTaskPopup ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='2'>%2</t>",_doTaskText,_timeLeft];
	if (_timeLeft isEqualTo 0) exitWith {_timeExit = true;};
	if (_timeLeft isEqualTo 330) then {playSound3D ["sl_client\sounds\shopAlarm.ogg", _cursorTarget, false, getPosASL _cursorTarget, 5, 1, 150];};
	if (medical_deadPlayer) exitWith {};
	if (player distance2D _position > 10) exitWith {};
	if (currentWeapon player isEqualTo "") exitWith {};
};

_doTaskPopup ctrlSetStructuredText parseText format["<img size='1' image='cg_mission_files\icons\info.paa'/> <t color='#FFCC00'><t size='0.9'>%1</t> <br/> <t size='1'>%2</t>",_doTaskText,""];
sleep 1;
player say "slideout";
_doTaskPopup ctrlSetStructuredText parseText format["",_doTaskText,_timeLeft];

if (_timeExit) then {
	_suitCases = ["kif_5k","kif_5k","kif_5k","kif_10k"];
	_item = _suitCases call BIS_fnc_selectRandom;
	player addItem _item;

	_suitCaseName = [_item] call Client_fnc_getMagazineName;

	[format["Okradłeś sklep, zabrałeś $%1", _suitCaseName], false] call ClientModules_Notification_fnc_doMsg;
	//[player,objNull,19,format ["%1 okradł sklep na kwotę %2", name player, _amount],_amount] remoteExec ["server_fnc_actionLog", 2];
	_cursorTarget setVariable ["RPF_lastRobbed", time, true];
};
