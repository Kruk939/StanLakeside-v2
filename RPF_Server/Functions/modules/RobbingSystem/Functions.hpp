class ServerModules_RobbingSystem {
	class RobbingSystemInit
	{
		file = "RPF_Server\Functions\modules\RobbingSystem";
		class initRobbingSystem {};
	};
	class RobbingSystem
	{
		file = "RPF_Server\Functions\modules\RobbingSystem\Functions";
		class startBankRobbing {};
        class bankAlarm {};
        class stopBankRobbing {};
        class spawnChestsBank {};
	};
};