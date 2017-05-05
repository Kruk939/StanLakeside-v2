/*
Author: Kerkkoh
First Edit: 16.4.2016

Colors:
	1 - blue
	2 - black
	3 - green
	4 - red

Example:
	[
		["if one", "if two", "if 3 and can more if's"],
		["Name of interaction", "what is exec, call, spawn function",color of button]
	],

*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608,
	1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 
	1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626,
	16001, 16011, 16021, 16031, 16041, 16051, 16061, 16071, 16081,
	16091, 16101, 16111, 16121, 16131, 16141, 16151, 16161, 16171, 
	16181, 16191, 16201, 16211, 16221, 16231, 16241, 16251, 16261,
	16002, 16012, 16022, 16032, 16042, 16052, 16062, 16072, 16082,
	16092, 16102, 16112, 16122, 16132, 16142, 16152, 16162, 16172, 
	16182, 16192, 16202, 16212, 16222, 16232, 16242, 16252, 16262,
	16003, 16013, 16023, 16033, 16043, 16053, 16063, 16073, 16083,
	16093, 16103, 16113, 16123, 16133, 16143, 16153, 16163, 16173, 
	16183, 16193, 16203, 16213, 16223, 16233, 16243, 16253, 16263];
RPF_InteractionMenuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "(player distance cursorObject) <= 5"],
		["Use Car Key", "[cursorObject] call Client_fnc_useKey",1]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		["Use Car Key", "[vehicle player] call Client_fnc_useKey",1]
	],
	[
		["RPF_Holstered == 1", "alive player"],
		["Unholster", "[] call Client_fnc_holster",1]
	],
	[
		["RPF_Holstered == 0", "handgunWeapon player != ''", "alive player"],
		["Holster", "[] call Client_fnc_holster",1]
	],
	[
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Cuff", "[cursorObject] spawn Client_fnc_cuff",1]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Open Cuffs", "[cursorObject] call Client_fnc_unCuff",1]
	],
	[
		["(RPF_Tie in (items player)) || (RPF_Tie in (magazines player))", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Tie", "[cursorObject] spawn Client_fnc_tie",1]
	],
	[
		["isPlayer cursorObject", "cursorObject getVariable ['tied',false]", "(player distance cursorObject) <= 5"],
		["Untie", "[cursorObject] call Client_fnc_unTie",1]
	],
	[
		["(count (attachedObjects player)) <= 0", "isPlayer cursorObject", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Escort", "[cursorObject] call Client_fnc_escort",1]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		["Let Go", "[] call Client_fnc_escortStop",1]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		["Pull out", "[cursorObject] call Client_fnc_pullOut",1]
	],
	[
		["player getVariable ['cop', 0] > 0", "isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Search", "[cursorObject] call Client_fnc_search",1]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		["Pick up", "[cursorObject] call Client_fnc_pickUp",1]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
		["Let Go", "[] call Client_fnc_escortStop",1]
	],
	[
		["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 5", "(locked cursorObject) == 0"],
		["Trunk", "[cursorObject] call Client_fnc_openTrunk",1]
	],
	[
		["alive player"],
		["Use Item", "[] call Client_fnc_openUseItem",1]
	],
	[
		["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
		["Take money", "[cursorObject] call Client_fnc_takeMoney",1]
	],
	[
		["player getVariable ['copoffduty', 0] > 0", "typeof cursorobject == ""Land_PoliceStation""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""none"""],
		["Go on duty", "[1, 0] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['emsoffduty', 0] > 0", " typeof cursorobject == ""Land_buildingshospital1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""none"""],
		["Go on duty", "[1, 1] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['fireoffduty', 0] > 0", "typeof cursorobject == ""Land_buildingsfiredept1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""none"""],
		["Go on duty", "[1, 2] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['cop', 0] > 0", "typeof cursorobject == ""Land_PoliceStation""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""Cop"""],
		["Go off duty", "[0, 0] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['ems', 0] > 0", " typeof cursorobject == ""Land_buildingshospital1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""EMS"""],
		["Go off duty", "[0, 1] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['fire', 0] > 0", "typeof cursorobject == ""Land_buildingsfiredept1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""Fire"""],
		["Go off duty", "[0, 2] call Client_fnc_switchDutyStatus",1]
	],
	[
		["player getVariable ['cop', 0] > 0", "typeof cursorobject == ""Land_PoliceStation""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""Cop"""],
		["Basic Equipment", "[0, 0] call Client_fnc_startDutyGear",1]
	],
	[
		["player getVariable ['cop', 0] > 5", "typeof cursorobject == ""Land_PoliceStation""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""Cop"""],
		["SWAT Equipment", "[0, 1] call Client_fnc_startDutyGear",1]
	],
	[
		["player getVariable ['ems', 0] > 0", " typeof cursorobject == ""Land_buildingshospital1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""EMS"""],
		["Basic Equipment", "[1, 0] call Client_fnc_startDutyGear",1]
	],
	[
		["player getVariable ['fire', 0] > 0", "typeof cursorobject == ""Land_buildingsfiredept1""", "(player distance cursorObject) <= 15", "RPF_currentJob == ""Fire"""],
		["Basic Equipment", "[2, 0] call Client_fnc_startDutyGear",1]
	]
];
