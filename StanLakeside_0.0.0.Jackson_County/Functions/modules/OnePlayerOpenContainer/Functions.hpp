class OPOC_Module {
	tag = "ClientModules_OPOC";

	class OPOCInit
	{
		file = "Functions\modules\OnePlayerOpenContainer";
		class initOPOC {};
	};
	class OPOC
	{
		file = "Functions\modules\OnePlayerOpenContainer\Functions";
		class openContainer {};
		class closeContainer {};

	};
};