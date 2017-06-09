class adminmsg {

	idd = 1445;
	name= "adminmsg";
	movingEnable = 0;
	enableSimulation = 1;

	class controls {
		class admin_RscEdit 
		{
			type = 2;
			style = ST_MULTI;
			font = "PuristaMedium";
			shadow = 2;
			sizeEx = 0.05;
			colorBorder[] = {0, 0, 0, 0};
			colorBackground[] = {0, 0, 0, 0};
			soundSelect[] = {"",0.1,1};
			soundExpand[] = {"",0.1,1};
			colorText[] = {0.95, 0.95, 0.95, 1};
			colorDisabled[] = {1, 1, 1, 0.25};
			colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 1};
			canModify = 1;
		};
        class RscEdit_1400: admin_RscEdit
        {
	        idc = 1400;
            autocomplete = "";
	        x = 0.11 * GUI_GRID_W + GUI_GRID_X;
	        y = 3.14 * GUI_GRID_H + GUI_GRID_Y;
	        w = 40 * GUI_GRID_W;
	        h = 6 * GUI_GRID_H;
        };
        class RscText_1000: RscText
        {
	        idc = 1000;
	        text = "$STR_RPF_MODULES_ADMINPANEL_MSGFROMADMIN"; //--- ToDo: Localize;
	        x = 0.04 * GUI_GRID_W + GUI_GRID_X;
	        y = 0.85 * GUI_GRID_H + GUI_GRID_Y;
	        w = 40 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscFrame_1800: RscFrame
        {
	        idc = 1800;
	        x = -0.53 * GUI_GRID_W + GUI_GRID_X;
	        y = 0.57 * GUI_GRID_H + GUI_GRID_Y;
	        w = 41 * GUI_GRID_W;
	        h = 11 * GUI_GRID_H;
        };
        class RscButton_1600: RscButton
        {
	        idc = 1600;
	        text = "$STR_RPF_MODULES_ADMINPANEL_CLOSE"; //--- ToDo: Localize;
	        x = 1 * GUI_GRID_W + GUI_GRID_X;
	        y = 10 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
        class RscButton_1601: RscButton
        {
	        idc = 1601;
	        text = "$STR_RPF_MODULES_ADMINPANEL_SEND"; //--- ToDo: Localize;
            action = "[] call ClientModules_AdminPanel_fnc_messageFromAdmin;";
	        x = 35 * GUI_GRID_W + GUI_GRID_X;
	        y = 10 * GUI_GRID_H + GUI_GRID_Y;
	        w = 4 * GUI_GRID_W;
	        h = 1 * GUI_GRID_H;
        };
    };
};
