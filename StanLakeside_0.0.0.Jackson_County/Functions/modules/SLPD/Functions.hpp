class SLPD_Module {
	tag = "ClientModules_SLPD";
	class SLPDInit
	{
		file = "Functions\modules\SLPD";
		class initSLPD {};
	};
	class SLPD
	{
		file = "Functions\modules\SLPD\Functions";
		class load_computerData {};
		class load_personalData {};
		class load_checkCase {};
		class add_computerRecord {};
		class load_criminalAdd {};
		class load_vehicleAdd {};
		class ticket_action {};
		class ticket_give {};
		class ticket_receive {};
		class jail_setup {};
		class processJail {};
		class speedmeter {};
	};
};