class adminpanel {

	idd = 1444;
	name= "adminpanel";
	onLoad = "[] spawn ClientModules_AdminPanel_fnc_adminPanelLoadListOfOptions;";	
	onunload = "RPF_kacCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy RPF_kacCamera;";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {

		class BASE
		{    
			shadow = 0;
			type = 0;
			style = 2096;
			sizeEx = 1;
			font = "PuristaMedium";
			colorBackground[] = {};
			colorText[] = {};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			idc = 191911;
			text = "\np_dialogs1\Images\AdminMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class RscListbox_players: RscListbox
		{
			idc = 1500;
			sizeEx = 0.033;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};			
			x = 0.305 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.68 * safezoneH;
			onLBSelChanged = "[] spawn ClientModules_AdminPanel_fnc_adminupdateplayer;";
		};

		class RscListbox_functions: RscListbox
		{
			idc = 1501;
			sizeEx = 0.033;
		    colorText[] = {1, 1, 1, 1};
		    colorActive[] = {0, 0, 0, 0.2};
		    colorTextSelect[] = {1, 1, 1, 0.2};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0.5};		
			x = 0.623 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.68 * safezoneH;
		};

		class execute : client_RscButtonMenu {
			idc = 1115;
			text = "Execute";
			onButtonClick = "[] ClientModules_AdminPanel_fnc_adminExecuteOption;";
			x = 0.55;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};	

	};

};