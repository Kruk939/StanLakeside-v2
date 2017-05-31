class ServerModules_ATM {

	class ATMInit
	{
		file = "RPF_Server\Functions\modules\ATM";
		class initATM {};
	};
	class ATM
	{
		file = "RPF_Server\Functions\modules\ATM\Functions";
		class atmSendMoney {};
		class transferMoney {};
	};
};