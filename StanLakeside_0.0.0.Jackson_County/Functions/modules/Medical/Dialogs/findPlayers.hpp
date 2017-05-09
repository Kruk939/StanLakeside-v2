class medical_findPlayer {
	idd = 100003;
	name= "medical_findPlayer";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[] spawn ClientModules_Medical_fnc_findPlayers;";
	class controlsBackground {
		class MainBackground: client_RscText {
			colorBackground[] = {0.1058823529411765,0.1058823529411765,0.1058823529411765,0.8};
			idc = -1;
			x = 0.05;
			y = 0.05;
			w = 0.50;
			h = 0.6;
		};
	};
	class controls {
		class Title : client_RscTitle {

			idc = 1112;
			text = "Select player to heal!";
			x = 0.05;
			y = 0.05;
			w = 0.6;
			h = (1 / 25);
		};
		class CraftList : client_RscListBox
		{
			idc = 1113;
			text = "";
			sizeEx = 0.05;
			x = 0.10;
			y = 0.10;
			w = 0.25;
			h = 0.5;
		};
		class HomeOption : client_RscButtonMenu {
			idc = 1115;
			text = "Select";
			onButtonClick = "";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class CraftOption : client_RscButtonMenu {
			idc = 1116;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = -0.06 + (13.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.65;
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
