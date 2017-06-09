class ShoppingSystem_Module {
	tag = "ClientModules_ShoppingSystem";

	class ShoppingSystemInit
	{
		file = "Functions\modules\ShoppingSystem";
		class initShoppingSystem {};
		class initShoppingSystemMenu {};
	};
	class ShoppingSystem
	{
		file = "Functions\modules\ShoppingSystem\Functions";
		class confirmPurchase {};
		class fetchData {};
		class loadData {};
		class loadPreview {};
		class onDialogLBChange {};
		class tryPurchase {};

	};
};