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
	class GaragePlateChange
	{
		file = "Functions\modules\Garage\Functions\PlateChange";
		class fetchPlate {};
		class finishChangePlate {};
		class openGaragePlate {};
		class receiveGaragePlate {};
		class tryChangePlate {};
	};
};