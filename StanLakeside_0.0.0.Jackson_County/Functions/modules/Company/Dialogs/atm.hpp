class company_atm {
	idd = 666014;
	name = "company_atm";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "";
	class controlsBackground {
		class background_image: RscPicture {
			idc = 1200;
			text = "\openrp_client\images\company\atm.paa";
			x = -4.5 * GUI_GRID_W + GUI_GRID_X;
			y = -13 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 50 * GUI_GRID_H;
		};
	};
	class controls {
		class edit_cash: Company_RscEdit {
			idc = 1001;
			text = "";
			autocomplete = "";
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class listbox_players: Company_RscListBox {
			idc = 1101;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 5.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class listbox_employees: Company_RscListBox {
			idc = 1102;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class listbox_companies: Company_RscListBox {
			idc = 1103;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 5.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class list_box_last_operations: Company_RscListBox {
			idc = 1104;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class button_withdraw: Company_HideButton {
			idc = 1201;
			action = "[""withDraw""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = ""; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_payin: Company_HideButton {
			idc = 1202;
			action = "[""payIN""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = ""; //--- ToDo: Localize;
			x = 5 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_player: Company_HideButton {
			idc = 1203;
			action = "[""wire_person""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = ""; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_employee: Company_HideButton {
			idc = 1204;
			action = "[""wire_employee""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = ""; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_pay_company: Company_HideButton {
			idc = 1205;
			action = "[""wire_company""] spawn ClientModules_Company_fnc_bank_transfer;";
			text = ""; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_home: Company_HideButton {
			idc = 1231;
			action = "";
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_register: Company_HideButton {
			idc = 1232;
			action = "";
			x = 9.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_managment: Company_HideButton {
			idc = 1233;
			action = "";
			x = 15 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class button_close: Company_HideButton {
			idc = 1240;
			action = "closeDialog 0; company_var_active_bank = 0;";
			text = ""; //--- ToDo: Localize;
			x = 41 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class text_title: RscText {
			idc = 1302;
			text = "";
			style = ST_CENTER;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class text_balance: RscText {
			idc = 1301;
			text = "";
			style = ST_RIGHT;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};
