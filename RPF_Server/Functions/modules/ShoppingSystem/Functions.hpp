class ServerModules_ShoppingSystem {
	class ShoppingSystemInit
	{
		file = "RPF_Server\Functions\modules\ShoppingSystem";
		class initShoppingSystem {};
	};
	class ShoppingSystem
	{
		file = "RPF_Server\Functions\modules\ShoppingSystem\Functions";
		class fetchShoppingPrices {};
		class loadData {};
		class tryPurchase {};
	};
};