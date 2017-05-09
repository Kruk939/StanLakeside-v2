class fillvehicle
{
	idd = 1013;
	class controls 
	{

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
			text = "\np_dialogs1\Images\GasMenu.paa";
			x = 0.279839 * safezoneW + safezoneX;
			y = 0.128274 * safezoneH + safezoneY;
			w = 0.440323 * safezoneW;
			h = 0.743452 * safezoneH;
		};  


		class HideButton
		{
		    colorBorder[] = {0,0,0,0.05};
		    access = 0;
		    type = CT_BUTTON;
		    text = "";
		    colorText[] = {1, 1, 1, 0};
		    colorActive[] = {1, 1, 1, 0};
		    colorTextSelect[] = {1, 1, 1, 0};
		    colorDisabled[] = {1, 1, 1, 0};
		    colorBackground[] = {0, 0, 0, 0};
		    colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", 0.05};
		    colorBackgroundDisabled[] = {0, 0, 0, 0.5};
		    colorFocused[] = {0, 0, 0, 0};
		    colorShadow[] = {0, 0, 0, 0};
		    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
		    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
		    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
		    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
		    style = 2;
		    x = 0;
		    y = 0;
		    w = 0.055589;
		    h = 0.039216;
		    shadow = 0;
		    font = "PuristaMedium";
		    sizeEx = 0.02921;
		    offsetX = 0.003;
		    offsetY = 0.003;
		    offsetPressedX = 0.002;
		    offsetPressedY = 0.002;
		    borderSize = 0.01;
		};
		
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.329209 * safezoneW + safezoneX;
			y = 0.26373 * safezoneH + safezoneY;
			w = 0.341782 * safezoneW;
			h = 0.373781 * safezoneH;
		};

		class RscButton_1600: HideButton
		{
			idc = 1600;
			text = "Fill Vehicle"; //--- ToDo: Localize;
			x = 0.401967 * safezoneW + safezoneX;
			y = 0.703346 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
			action = [] spawn ClientModules_FillVehicles_fnc_confirmFillVehicle;
		};

		class Close: HideButton
		{
			idc = 1601;
			x = 0.507008 * safezoneW + safezoneX;
			y = 0.703348 * safezoneH + safezoneY;
			w = 0.0899712 * safezoneW;
			h = 0.0483903 * safezoneH;
			action = closedialog 0;
		};
	};
};