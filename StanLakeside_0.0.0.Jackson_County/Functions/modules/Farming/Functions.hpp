class Farming_Module  {
	tag = "ClientModules_Farming";
	class FarmingInit
	{
		file = "Functions\modules\Farming";
		class initFarming {};
	};
	class Farming
	{
		file = "Functions\modules\Farming\Functions";
		class checkPlantae {};
		class cutDownPlantae {};
		class cutWeedPlantae {};
		class dropPlantae {};
		class plantPlantae {};
		class startWeedGrowing {};
		class startGrowing {};
		class tryPlantae {};
		class upGrowing {};
		class tryCutPlantae {};
	};
};