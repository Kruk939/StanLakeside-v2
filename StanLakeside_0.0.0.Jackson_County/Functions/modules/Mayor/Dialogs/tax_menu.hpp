class tax_Menu {
	idd = 9999;
	name= "tax_menu";
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
			text = "\np_dialogs1\Images\settaxMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
		};  


		class QuantityText : Client_RscEdit 
		{
			idc = 9339;
			text = "1";
			autocomplete = "";
			sizeEx = 0.030;
			x = 0.503178 * safezoneW + safezoneX;
			y = 0.656167 * safezoneH + safezoneY;
			w = 0.0603332 * safezoneW;
			h = 0.0307935 * safezoneH;
		};

		class PurchaseOption : RSCButton {
			idc = 9995;
			text = "Ustaw podatek";
			onButtonClick = "[] spawn ClientModules_Mayor_fnc_setTax;"; 
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	

		class CloseOption : RSCButton {
			idc = 9996;
			text = "Zamknij";
			onButtonClick = "closedialog 0;";
			x = 0.511518 * safezoneW + safezoneX;
			y = 0.706043 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.0461907 * safezoneH;
		};	
	};
};