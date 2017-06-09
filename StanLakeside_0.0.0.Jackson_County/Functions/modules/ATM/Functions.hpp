class ATM_Module {
	tag = "ClientModules_ATM";

	class ATMInit
	{
		file = "Functions\modules\ATM";
		class initATM {};
	};
	class ATM
	{
		file = "Functions\modules\ATM\Functions";
		class atmDeposit {};
		class atmRefresh {};
		class atmTransfer {};
		class atmWithdraw {};
		class openATM {};
	};
};