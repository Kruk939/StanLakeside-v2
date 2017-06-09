private["_text"];
if (!dialog) exitWith {};
_display = findDisplay 1445;
_text = ctrlText 1400;

[
	[
		[localize ("STR_RPF_MODULES_ADMINPANEL_MSGFROMADMIN"),"<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t><br/>"],
		[_text,"<t align = 'center' shadow = '1' font='PuristaBold' size = '1.0'>%1</t>"]
	]
] remoteExec ["BIS_fnc_typeText", allPlayers];

closeDialog 0;