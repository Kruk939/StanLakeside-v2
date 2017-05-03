class IEH_Module {
	tag = "ClientModules_IEH";
	
		class IEHInit
		{
			file = "Functions\modules\IEH";
			class initIEH {};
		};
		class IEH
		{
			file = "Functions\modules\IEH\Functions";
			class ieh_InventoryOpened {};
			class ieh_InventoryItemsUseHandler {};
		};
};