class ServerModules_Jail {
	class JailInit
	{
		file = "RPF_Server\Functions\modules\Jail";
		class initJail {};
	};
	class Jail
	{
		file = "RPF_Server\Functions\modules\Jail\Functions";
		class breakoutJail {};
		class fetchJailCell {};
		class fetchPrisoners {};
		class initJailObjects {};
		class releaseFromJail {};
	};
};