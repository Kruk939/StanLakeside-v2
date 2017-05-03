class StoreSystem_Module {
	tag = "ClientModules_StoreSystem";
	class StoreSystemInit
	{
		file = "Functions\modules\StoreSystem";
		class initStoreSystem {};
        class initStoreSystemMenu {};
        class initStoreSystemVariables {};
	};
	class StoreSystem
	{
		file = "Functions\modules\StoreSystem\Functions";
		class confirmPurchase {};
		class loadStore {};
		class setupStore {};
		class updateClothing {};
	};
};