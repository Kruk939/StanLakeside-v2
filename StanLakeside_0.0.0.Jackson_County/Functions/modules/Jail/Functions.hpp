class Jail_Module {
	tag = "ClientModules_Jail";

	class JailInit
	{
		file = "Functions\modules\Jail";
		class initJail {};
	};
	class Jail
	{
		file = "Functions\modules\Jail\Functions";
		class freePrisoner {};
		class jailBreakAlert {};
		class jailBreakout {};
		class openArrestMenu {};
		class openFreePrisoners {};
		class openJailBreakout {};
		class receiveJailCell {};
		class receivePrisoners {};
		class sendToJail {};
	};
};