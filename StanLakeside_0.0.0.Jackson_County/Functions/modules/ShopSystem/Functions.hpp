class ShopSystem_Module {
	tag = "ClientModules_ShopSystem";
	class ShopSystemInit {
		file = "Functions\modules\ShopSystem";
		class initShopSystem {};
		class initShopSystemMenu {};
		class initShopSystemVariables {};
		class receive {};
	};
	class ShopSystem {
		file = "Functions\modules\ShopSystem\Functions";
		class confirmPurchase {};
		class loadStore {};
		class setupStore {};
		class updateClothing {};
	};
};
