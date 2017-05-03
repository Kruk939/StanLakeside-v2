class Mayor_Module {
	tag = "ClientModules_Mayor";

	class MayorInit
	{
		file = "Functions\modules\Mayor";
		class initMayor {};
	};
	class Mayor
	{
		file = "Functions\modules\Mayor\Functions";
		class atmDeposit {};
		class atmWithdraw {};
		class openATM {};
		class setTax;
		class buyAssasinInv {};
		class payTaxes {};
	};
};