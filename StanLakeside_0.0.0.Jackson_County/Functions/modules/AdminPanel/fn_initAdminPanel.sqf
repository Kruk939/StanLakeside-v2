kif_admin = 0;
adminESP = false;
RPF_godmode = false;
RPF_adminFunctions = [
	["Invisible On",5,1],
	["Invisible Off",6,1],
	["Ghost Spectate",24,3]
];
							//downlad
if (getplayerUID player IN ["76561198023332238"]) then { kif_admin=1; };
							//danio				//farmer			//jimmy
if (getplayerUID player IN ["76561198082441969","76561198131854921","76561198171609822"]) then { kif_admin=2; };
//							//raf				//sid				//dzoka				//teddy				//arthur
if (getplayerUID player IN ["76561197982469013","76561198061433788","76561197998091289","76561198150573190","76561198028980508"]) then { kif_admin=3; };
							//katekarin
if (getplayerUID player IN ["76561198041834190"]) then { kif_admin=4; };
							//kifkick			//dorian
if (getplayerUID player IN ["76561198201987250","76561198253273755"]) then { kif_admin=5; };

_menuItems = [
	[
		["kif_admin>=1"],
		[localize ("STR_RPF_MODULES_ADMINPANEL_BANHAMMER"), "closedialog 0; createdialog ""koiladmin""; ",4]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

AdminPanel_inited = true;
diag_log "AdminPanel Module inited";