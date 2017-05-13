class Garage_Module {
	tag = "ServerModules_Garage";
	class GarageInit
	{
		file = "RPF_Server\Functions\modules\Garage";
		class initGarage {};
	};
	class Garage
	{
		file = "RPF_Server\Functions\modules\Garage\Functions";
		class fetchGarage {};
        class insertGarage {};
        class removeGarage {};
	};
};
