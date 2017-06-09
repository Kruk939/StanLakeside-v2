class ServerModules_Showroom {
	class ShowroomInit
	{
		file = "RPF_Server\Functions\modules\Showroom";
		class initShowroom {};
	};
	class Showroom
	{
		file = "RPF_Server\Functions\modules\Showroom\Functions";
		class fetchPrices {};
		class loadData {};
		class tryBought {};
	};
};
