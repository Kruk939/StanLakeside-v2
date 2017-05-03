class ATM_Mafia_Module {
	tag = "ClientModules_ATM_Mafia";

	class ATM_MafiaInit
	{
		file = "Functions\modules\ATM_Mafia";
		class initATM_Mafia {};
	};
	class ATM_Mafia
	{
		file = "Functions\modules\ATM_Mafia\Functions";
		class atmDeposit {};
		class atmWithdraw {};
		class openATM {};
	};
};