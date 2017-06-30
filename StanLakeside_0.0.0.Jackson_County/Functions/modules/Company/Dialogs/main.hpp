class company_main {
	idd = 666011;
	name = "company_main";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\main.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
		class listbox_employees: Company_RscListBox {
			idc = 1500;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
		};
		class listbox_applicants: Company_RscListBox {
			idc = 1501;
			onLBSelChanged = " [""applicationLBselect""] spawn ClientModules_Company_fnc_main_action; ";
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 10.5 * GUI_GRID_H;
		};
		class text_company_name: RscText {
			idc = 1000;
			text = ""; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = { 1, 1, 1, 1 };
		};
		class text_application_preview: Company_RscText {
			idc = 1001;
			style = ST_MULTI;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 14.5 * GUI_GRID_H;
		};
		class button_company_log: Company_HideButton {
			idc = 1600;
			action = "hint ""Action not avialable during alpha""";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_fleet_log: Company_HideButton {
			idc = 1601;
			action = "hint ""Action not avialable during alpha""";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_comapny_finance_log: Company_HideButton {
			idc = 1602;
			action = "hint ""Action not avialable during alpha""";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_edit_employee: Company_HideButton {
			idc = 1603;
			action = " [""editEmployee""] spawn ClientModules_Company_fnc_main_action; ";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18.7 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_kick_employee: Company_HideButton {
			idc = 1604;
			action = " [""kickEmployee""] spawn ClientModules_Company_fnc_main_action; ";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class button_applicant_accept: Company_HideButton {
			idc = 1605;
			action = " [""acceptApplication""] spawn ClientModules_Company_fnc_main_action; ";
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_applicant_reject: Company_HideButton {
			idc = 1606;
			action = " [""declineApplication""] spawn ClientModules_Company_fnc_main_action; ";
			x = 33.5 * GUI_GRID_W + GUI_GRID_X;
			y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_delete_company: Company_HideButton {
			idc = 1607;
			action = "hint ""Action not avialable during alpha""";
			x = -2 * GUI_GRID_W + GUI_GRID_X;
			y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
            class button_home: Company_Button_Home {};
            class button_register: Company_Button_Register {};
            class button_managment: Company_Button_Managment {};
            class button_permission: Company_Button_Permission {};
            class button_fleet: Company_Button_Fleet {};
            class button_close: Company_Button_Close {};
	};
};
