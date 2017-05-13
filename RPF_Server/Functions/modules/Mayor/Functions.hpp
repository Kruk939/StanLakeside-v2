class Mayor_Module {
	tag = "ServerModules_Mayor";
	class MayorInit
	{
		file = "RPF_Server\Functions\modules\Mayor";
		class initMayor {};
	};
	class Mayor
	{
		file = "RPF_Server\Functions\modules\Mayor\Functions";
		class getMayor {};
		class getMayorATM {};
		class updateMayorATM {};
		class setTax {};
		class getTax {};
		class payTaxes {};
	};
};