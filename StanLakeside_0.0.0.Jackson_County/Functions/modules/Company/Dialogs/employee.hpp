class company_employee {
	idd = 666018;
	name = "company_employee";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
                  text = "\openrp_client\images\company\employee.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
            class edit_access_level: Company_RscEdit {
                  idc = 1400;
            	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 17 * GUI_GRID_H + GUI_GRID_Y;
            	w = 6 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
            };
            class edit_access_paycheck: Company_RscEdit {
                  idc = 1401;
			x = 5.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15.3 * GUI_GRID_H + GUI_GRID_Y;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
            };
            class listbox_logs: Company_RscListBox {
            	idc = 1500;
            	x = 12.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13.358 * GUI_GRID_W;
            	h = 16.5 * GUI_GRID_H;
            };
            class text_employee_name: Company_RscText {
            	idc = 1000;
                  text = "TEST";
            	x = -1.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
            	h = 1 * GUI_GRID_H;
		      colorText[] = {1,1,1,1};
            };
            class text_employee_info: Company_RscText {
            	idc = 1001;
			text = "";
			style = ST_MULTI;
            	x = 27 * GUI_GRID_W + GUI_GRID_X;
            	y = 8 * GUI_GRID_H + GUI_GRID_Y;
            	w = 12.5 * GUI_GRID_W;
            	h = 15.5 * GUI_GRID_H;
            };
            class text_log_info: Company_RscText {
            	idc = 1002;
			text = "Ecie";
            	x = -1.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 8 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
            	h = 4.5 * GUI_GRID_H;
            };
            class button_save: Company_HideButton {
            	idc = 1600;
			action = " [] spawn ClientModules_Company_fnc_employee_update; ";
            	x = -1.5 * GUI_GRID_W + GUI_GRID_X;
            	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
            	w = 13 * GUI_GRID_W;
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
