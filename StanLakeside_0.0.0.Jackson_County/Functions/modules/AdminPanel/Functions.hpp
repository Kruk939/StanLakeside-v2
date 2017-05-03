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
        class adminESP {};
		class adminExecuteOption {};
        class adminGodmode {};
		class adminPanelLoadListOfOptions {};
		class adminMessage {};
		class adminupdateplayer {};
	};
};