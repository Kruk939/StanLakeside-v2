class GUN_Menu {
	idd = 9999;
	name= "GUN_menu";
	onLoad = "[] spawn ClientModules_ShopSystem_fnc_storesetup";
	onunload = "dialog_open = false; deletevehicle cockbag; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
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
			text = "\np_dialogs1\Images\GunMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn ClientModules_ShopSystem_fnc_clothesUpdate;";
			x = 0.311121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.178 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class gunOption : HideButton {
			idc = 9993;
			text = "";
			onButtonClick = "[""gunstore""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class vestOption : HideButton {
			idc = 9994;
			text = "";
			onButtonClick = "[""veststore""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""standard""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Zamknij";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};




class Food_Menu {
	idd = 9999;
	name= "Food_menu";
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
			text = "\np_dialogs1\Images\FoodMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			x = 0.331121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.337653 * safezoneW;
			h = 0.343181 * safezoneH;
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

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""standard""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
		};

		class CloseOption : HideButton {
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




class GeneralStore_Menu {
	idd = 9999;
	name= "GeneralStore_menu";
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
			text = "\np_dialogs1\Images\GeneralStoreMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			x = 0.331121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.337653 * safezoneW;
			h = 0.343181 * safezoneH;
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

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""standard""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0461907 * safezoneH;
		};

		class CloseOption : HideButton {
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


class RareFish_Menu {
	idd = 9999;
	name= "RareFish_Menu";
	onLoad = "[] spawn ClientModules_ShopSystem_fnc_storesetup";
	onunload = "dialog_open = false; deletevehicle cockbag; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
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
			text = "\np_dialogs1\Images\RareFishMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn ClientModules_ShopSystem_fnc_clothesUpdate;";
			x = 0.311121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.178 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""fish""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};


class Clothing_Menu {
	idd = 9999;
	name= "Clothing_menu";
	onLoad = "[] spawn ClientModules_ShopSystem_fnc_storesetup";
	onunload = "dialog_open = false; deletevehicle cockbag; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
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
			text = "\np_dialogs1\Images\ClothingMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn ClientModules_ShopSystem_fnc_clothesUpdate;";
			x = 0.311121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.178 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class ClothingOption : HideButton {
			idc = 9993;
			text = "Clothing";
			onButtonClick = "[""clothing""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class BackpackOption : HideButton {
			idc = 9994;
			text = "Backpack";
			onButtonClick = "[""backpack""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""standard""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};




class HairDresser_Menu {
	idd = 9999;
	name= "HairDresser_menu";
	onLoad = "[] spawn ClientModules_ShopSystem_fnc_storesetup";
	onunload = "dialog_open = false; deletevehicle cockbag; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
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
			text = "\np_dialogs1\Images\HairDresserMenu.paa";
			x = 0.275605 * safezoneW + safezoneX;
			y = 0.126074 * safezoneH + safezoneY;
			w = 0.447732 * safezoneW;
			h = 0.747851 * safezoneH;
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

		class ShopList : client_RscListBox
		{
			idc = 9001;
			text = "";
			sizeEx = 0.05;
			onLBSelChanged = "[] spawn ClientModules_ShopSystem_fnc_clothesUpdate;";
			x = 0.311121 * safezoneW + safezoneX;
			y = 0.293241 * safezoneH + safezoneY;
			w = 0.178 * safezoneW;
			h = 0.343181 * safezoneH;
		};

		class ClothingOption : HideButton {
			idc = 9993;
			text = "Glasses";
			onButtonClick = "[""Glasses""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class BackpackOption : HideButton {
			idc = 9994;
			text = "Head";
			onButtonClick = "[""head""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.311029 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.0231907 * safezoneH;
		};

		class PurchaseOption : HideButton {
			idc = 9995;
			text = "Kup";
			onButtonClick = "[""standard""] spawn ClientModules_ShopSystem_fnc_confirmPurchase;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.706497 * safezoneH + safezoneY;
			w = 0.0867957 * safezoneW;
			h = 0.023 * safezoneH;
		};

		class CloseOption : HideButton {
			idc = 9996;
			text = "Close";
			onButtonClick = "closedialog 0;";
			x = 0.40229 * safezoneW + safezoneX;
			y = 0.729497 * safezoneH + safezoneY;
			w = 0.0878542 * safezoneW;
			h = 0.023 * safezoneH;
		};
	};
};
