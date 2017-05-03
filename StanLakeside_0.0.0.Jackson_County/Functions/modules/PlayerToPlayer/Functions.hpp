class PTP_Module {
	tag = "ClientModules_PTP";

	class PTPInit
	{
		file = "Functions\modules\PlayerToPlayer";
		class initPTP {};
	};
	class PTP
	{
		file = "Functions\modules\PlayerToPlayer\Functions";
		class blindfolded {};
		class unblindfolded {};
		class patdown {};
		class startPatdown {};
		class putInCar {};
	};
};