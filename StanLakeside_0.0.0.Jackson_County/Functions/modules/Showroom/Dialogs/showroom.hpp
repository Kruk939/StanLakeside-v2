class showroom {
	idd = 1444;
	name= "showroom";
	onLoad = "RPF_camera = ""CAMERA"" camCreate (getPos player); showCinemaBorder true; RPF_camera cameraEffect [""EXTERNAL"", ""BACK""];";
	onUnload = "deleteVehicle RPF_Showroom_veh; RPF_camera cameraEffect [""TERMINATE"",""BACK""]; camDestroy RPF_camera;";
	//onLoad = "[""NEW""] spawn client_fnc_carShop; client_kcCamera  = ""CAMERA"" camCreate (getPos player); showCinemaBorder true; client_kcCamera cameraEffect [""EXTERNAL"", ""BACK""];";	
	//onunload = "deletevehicle spawnedvehicle; client_kcCamera cameraEffect [""TERMINATE"",""BACK""]; camDestroy client_kcCamera;";
	movingEnable = 0;
	enableSimulation = 1;

    class controls {
		// lista z pojazdami
        class RscListbox_1500: RscListbox
        {
	        idc = 1500;
	        x = -27.5 * GUI_GRID_W + GUI_GRID_X;
	        y = -9.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 27 * GUI_GRID_W;
	        h = 25 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "[""car""] call ClientModules_Showroom_fnc_onLBChange;";
        };
		// lista kolorów
        class RscListbox_1501: RscListbox
        {
	        idc = 1501;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = -9.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 9 * GUI_GRID_W;
	        h = 10 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "[""color""] call ClientModules_Showroom_fnc_onLBChange;";
        };
		// lista wykończeń
        class RscListbox_1502: RscListbox
        {
	        idc = 1502;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	        w = 9 * GUI_GRID_W;
	        h = 4 * GUI_GRID_H;
			font = "PuristaMedium";
			onLBSelChanged = "[""material""] call ClientModules_Showroom_fnc_onLBChange;";
        };
        class RscFrame_1800: RscFrame
        {
	        idc = 1800;
	        x = -28.5 * GUI_GRID_W + GUI_GRID_X;
	        y = -10 * GUI_GRID_H + GUI_GRID_Y;
	        w = 41 * GUI_GRID_W;
	        h = 27 * GUI_GRID_H;
	        colorBackground[] = {1,0.1,0.1,0.8};
        };
		//cena
        class RscText_1000: RscText
        {
	        idc = 1002;
	        text = "$STR_RPF_MODULES_SHOWROOM_PRICE"; //--- ToDo: Localize;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 6 * GUI_GRID_H + GUI_GRID_Y;
	        w = 10.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };
		//moc silnika
        class RscText_1001: RscText
        {
	        idc = 1001;
	        text = "$STR_RPF_MODULES_SHOWROOM_HP"; //--- ToDo: Localize;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 8 * GUI_GRID_H + GUI_GRID_Y;
	        w = 10.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };
		//miejsca siedzące
        class RscText_1002: RscText
        {
	        idc = 1003;
	        text = "$STR_RPF_MODULES_SHOWROOM_SEATS"; //--- ToDo: Localize;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 10 * GUI_GRID_H + GUI_GRID_Y;
	        w = 10.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };
		//dostępność
        class RscText_1003: RscText
        {
	        idc = 1004;
	        text = "$STR_RPF_MODULES_SHOWROOM_AVAILABLE"; //--- ToDo: Localize;
	        x = 1.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 12 * GUI_GRID_H + GUI_GRID_Y;
	        w = 10.5 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };

        class RscButton_1600: RscButton
        {
	        idc = 1600;
	        text = "$STR_RPF_MODULES_SHOWROOM_BUY"; //--- ToDo: Localize;
			action = "[] call ClientModules_Showroom_fnc_tryBought;";
	        x = 8 * GUI_GRID_W + GUI_GRID_X;
	        y = 15 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };
        class RscButton_1601: RscButton
        {
	        idc = 1601;
	        text = "$STR_RPF_MODULES_SHOWROOM_CLOSE"; //--- ToDo: Localize;
            action = "closeDialog 0";
	        x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	        y = 15 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
			font = "PuristaMedium";
        };
    };
};