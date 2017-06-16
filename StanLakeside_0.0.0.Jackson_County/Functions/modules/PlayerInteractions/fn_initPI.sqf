_menuItems = [
	[
		["isPlayer cursorObject", "!imRestrained", "(headgear CurrentCursorTarget) != 'mgsr_headbag', (animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Załóż worek", " [cursorObject] call ClientModules_PI_blindfoldTarget",2]
	],

	[
		["isPlayer cursorObject", "!imRestrained", "(headgear CurrentCursorTarget) == 'mgsr_headbag' "],
		["Zdejmij worek", "[cursorObject] call ClientModules_PI_unBlindfoldTarget",2]
	],

	[
		["isPlayer cursorObject", "!imRestrained", "(cursorObject getVariable [""gag"",false])",  "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Włóż skarpetę", " [cursorObject] cal ClientModules_PI_gagTarget",2]
	],

	[
		["isPlayer cursorObject", "!imRestrained", "(cursorObject getVariable [""gag"",true])"],
		["Wyciągjnij skarpetę", " [cursorObject] cal ClientModules_PI_unGagTarget",2]
	],

	[
		["!(cursortarget getVariable[""medical_deadPlayer"",FALSE])", "isPlayer cursorObject",  "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Przeszukaj", "[cursorObject] call ClientModules_PI_PatdownTarget",1]
	],

	[
		["isPlayer cursorObject", "(count (attachedObjects player)) <= 0", "(animationstate CurrentCursorTarget) == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon' || (animationstate CurrentCursorTarget) == 'Incapacitated' || (animationstate CurrentCursorTarget) == 'AmovPercMstpSnonWnonDnon_Ease' || (animationstate CurrentCursorTarget) == 'Acts_AidlPsitMstpSsurWnonDnon_loop'"],
		["Wrzuć do auta", "[cursorObject] call ClientModules_PI_fnc_putInCarTarget",2]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

["StanLakeside.pl","AnimationDialogKey","Open Animations Dialog Key",{call ClientModules_PI_fnc_openAnimations},{true},[0x03, [true, false, false]],false] call cba_fnc_addKeybind;

RPF_imBlindfolded = false;
RPF_blindfold_oldHeadgear = nil;

player setVariable ["gag",false,true];
player setVariable ["tf_voiceVolume", 1, true];

PI_inited = true;
diag_log "PlayerInteractions Module inited";