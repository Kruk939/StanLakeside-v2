class company_create {
	idd = 666012;
	name = "company_create";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
	        text = "\openrp_client\images\company\register.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
		class edit_shortucut: Company_RscEdit {
			idc = 1400;
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class edit_full_name: Company_RscEdit {
			idc = 1401;
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class button_create: Company_HideButton {
			idc = 1201;
			action = "[] spawn ClientModules_Company_fnc_company_create; ";
			text = ""; //--- ToDo: Localize;
			x = 28 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 14.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
            class button_home: Company_Button_Home {};
            class button_register: Company_Button_Register {};
            class button_managment: Company_Button_Managment {};
            class button_permission: Company_Button_Permission {};
            class button_fleet: Company_Button_Fleet {};
            class button_close: Company_Button_Close {};
		class text_price: RscText {
			idc = 1003;
			text = ""; //--- ToDo: Localize;
			x = 14.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
			colorText[] = { 0, 0, 0, 1 };
		};
	};
};
