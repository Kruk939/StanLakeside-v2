class Garage_Module {
	tag = "ClientModules_Garage";

	class GarageInit
	{
		file = "Functions\modules\Garage";
		class initGarage {};
	};
	class Garage
	{
		file = "Functions\modules\Garage\Functions";
		class fetchCar {};
		class detachCar {};
		class openGarage {};
		class receiveGarage {};
		class storeCar {};
	};
};