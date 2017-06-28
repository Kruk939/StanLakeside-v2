class phoneinternet
{
	idd = 1101;
	class controls 
	{
////////////////////////////////////////////////////////
// Wallpaper
////////////////////////////////////////////////////////
		class RscPicture_1200: RscPicture
		{
			idc = 1201;
			text = "\SL_Client\Textures\Dialogs\Phone\Wallpapers\1.paa";
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 28.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// Phone frame
////////////////////////////////////////////////////////
		class RscPicture_1201: RscPicture
		{
			idc = 1200;
			text = "\SL_Client\Textures\Dialogs\Phone\PhoneFrame\bg1.paa";
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1 * GUI_GRID_H + GUI_GRID_Y;
			w = 27.5 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// Home picture
////////////////////////////////////////////////////////
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\home.paa";
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 2 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// ogloszenia picture
////////////////////////////////////////////////////////
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\sale.paa";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// otomoto picture
////////////////////////////////////////////////////////
		class RscPicture_1206: RscPicture
		{
			idc = 1206;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\carforsale.paa";
			x = 18 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// ikona z newsami
////////////////////////////////////////////////////////
		class RscPicture_1207: RscPicture
		{
			idc = 1207;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\newspaper.paa";
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// Anonymous/darknet picture
////////////////////////////////////////////////////////
		class RscPicture_1205: RscPicture
		{
			idc = 1205;
			text = "";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// phone green
////////////////////////////////////////////////////////
		class RscPicture_1211: RscPicture
		{
			idc = 1211;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\phonegreen.paa";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// phone red
////////////////////////////////////////////////////////
		class RscPicture_1212: RscPicture
		{
			idc = 1212;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\phonered.paa";
			x = 18 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// volume mute
////////////////////////////////////////////////////////
		class RscPicture_1210: RscPicture
		{
			idc = 1210;
			text = "SL_Client\Textures\Dialogs\Phone\Icons\volumemute.paa";
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// ogloszenia przycisk
////////////////////////////////////////////////////////
		class RscButton_1600: RscButtonInv
		{
			idc = 1600;
			//text = "Contacts"; //--- ToDo: Localize;
			tooltip = "Adverts"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openAdvertsMessages;";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// otomoto przycisk
////////////////////////////////////////////////////////
		class RscButton_1601: RscButtonInv
		{
			idc = 1601;
			//text = "Messages"; //--- ToDo: Localize;
			tooltip = "Cars for sale"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openCarsForSaleMessages;";
			x = 18 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// przycisk z newsami
////////////////////////////////////////////////////////
		class RscButton_1602: RscButtonInv
		{
			idc = 1602;
			//text = "Person"; //--- ToDo: Localize;
			tooltip = "NEWS"; //--- ToDo: Localize;
			action = "hint ""Currenlty Disabled""";
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// anonymous/darknet przycisk
////////////////////////////////////////////////////////
		class RscButton_1608: RscButtonInv
		{
			idc = 1608;
			//text = "Person"; //--- ToDo: Localize;
			tooltip = ""; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openDarknetMessages;";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// zielona sluchawka przycisk
////////////////////////////////////////////////////////
		class RscButton_1609: RscButtonInv
		{
			idc = 1609;
			//text = "Phone green"; //--- ToDo: Localize;
			tooltip = "Answer call"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_answerCall;";
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// czerwona sluchawka przycisk
////////////////////////////////////////////////////////
		class RscButton_1610: RscButtonInv
		{
			idc = 1610;
			//text = "Phone red"; //--- ToDo: Localize;
			tooltip = "End call"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_endCall;";
			x = 18 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// wylaczenie rozmow przycisk
////////////////////////////////////////////////////////
		class RscButton_1611: RscButtonInv
		{
			idc = 1611;
			//text = "Vol mute"; //--- ToDo: Localize;
			tooltip = "Turn off calls"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_disablePhone;";
			x = 22 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
////////////////////////////////////////////////////////
// home przycisk
////////////////////////////////////////////////////////
		class RscButton_1612: RscButtonInv
		{
			idc = 1612;
			//text = "Home"; //--- ToDo: Localize;
			tooltip = "Home button"; //--- ToDo: Localize;
			action = "[] call ClientModules_Phone_fnc_openPhone;";
			x = 18.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 2 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};