class Paycheck_Module {
	tag = "ClientModules_Paycheck";
	
	class PaycheckInit
	{
		file = "Functions\modules\Paycheck";
		class initPaycheck {};
	};
	class Paycheck
	{
		file = "Functions\modules\Paycheck\Functions";
        class getPaycheck {};
        class startPaychecking {};
	};
};