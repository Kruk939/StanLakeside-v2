class AdminPanel_Module {
	tag = "ClientModules_AdminPanel";

	class AdminPanelInit
	{
		file = "Functions\modules\AdminPanel";
		class initAdminPanel {};
	};
	class AdminPanel
	{
		file = "Functions\modules\AdminPanel\Functions";
        class messageFromAdmin {};
	};
	class AdminPanelBH
	{
		file = "Functions\modules\AdminPanel\Functions\BanHammer";
		class adminexecute {};
		class adminloadplayers {};
		class adminupdateplayer {};
	};
};