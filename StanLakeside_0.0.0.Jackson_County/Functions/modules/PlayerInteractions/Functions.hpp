class PI_Module {
	tag = "ClientModules_PI";

	class PIInit
	{
		file = "Functions\modules\PlayerInteractions";
		class initPI {};
	};
	class PIAnimations
	{
		file = "Functions\modules\PlayerInteractions\Functions\Animations";
		class doAnimation {};
		class openAnimations {};
	};
	class PIPatdown
	{
		file = "Functions\modules\PlayerInteractions\Functions\Patdown";
		class patdownPlayer {};
		class patdownTarget {};
	};
	class PIBlindfold
	{
		file = "Functions\modules\PlayerInteractions\Functions\Blindfold";
		class blindfoldPlayer {};
		class blindfoldTarget {};
		class unBlindfoldPlayer	{};
		class unblindfoldTarget {};
	};
	class PIGag
	{
		file = "Functions\modules\PlayerInteractions\Functions\Gag";
		class gagPlayer {};
		class gagTarget {};
		class unGagPlayer	{};
		class unGagTarget {};
	};
};