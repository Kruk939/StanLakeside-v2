class company_preview {
	idd = 666013;
	name = "company_preview";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controls {
		class edit_vehicle_level: Client_RscEdit {
			idc = 1001;
			text = "";
			autocomplete = "";
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class edit_employee_level: Client_RscEdit {
			idc = 1002;
			text = "";
			autocomplete = "";
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_logs: client_RscListBox {
			idc = 1101;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_applicants: client_RscListBox {
			idc = 1102;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 13 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class listbox_employees: client_RscListBox {
			idc = 1103;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class list_box_vehicles: client_RscListBox {
			idc = 1104;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class button_vehicle_check: client_RscButtonMenu {
			idc = 1201;
			text = "Sprawdz"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_vehicle_change_level: client_RscButtonMenu {
			idc = 1202;
			text = "Zmien poziom"; //--- ToDo: Localize;
			x = 6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_employee_change_level: client_RscButtonMenu {
			idc = 1203;
			text = "Zmien poziom"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_employee_check: client_RscButtonMenu {
			idc = 1204;
			text = "Sprawdz"; //--- ToDo: Localize;
			x = 33.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_logs_last_operations: client_RscButtonMenu {
			idc = 1205;
			text = "Ostatnie operacje"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_logs_vehicles: client_RscButtonMenu {
			idc = 1206;
			text = "Pojazdy"; //--- ToDo: Localize;
			x = 6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_applicant_reject: client_RscButtonMenu {
			idc = 1207;
			text = "Odrzuc"; //--- ToDo: Localize;
			x = 33.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_applicant_check: client_RscButtonMenu {
			idc = 1208;
			text = "Sprawdz"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_applicant_accept: client_RscButtonMenu {
			idc = 1209;
			text = "Przyjmij"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close: client_RscButtonMenu {
			idc = 1210;
			text = "Zamknij"; //--- ToDo: Localize;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class text_title: RscText {
			idc = 1301;
			text = "Przeglad firmy: <nazwa firmy>"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title_vehicles: RscText {
			idc = -1;
			text = "Pojazdy"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title_logs: RscText {
			idc = -1;
			text = "Logi"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title_applicants: RscText {
			idc = -1;
			text = "Podania"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		class text_title_employees: RscText {
			idc = -1;
			text = "Pracownicy"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 19.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
	};
};
