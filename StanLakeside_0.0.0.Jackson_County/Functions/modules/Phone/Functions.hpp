class Phone_Module {
	tag = "ClientModules_Phone";
	
	class PhoneInit
	{
		file = "Functions\modules\Phone";
		class initPhone {};
	};
	class Phone
	{
		file = "Functions\modules\Phone\Functions";
		class addContact {};
		class openPhone {};
		class openPhoneMessages {};
		class phoneContactRefresh {};
		class phoneMessageRefresh {};
		class receiveContacts {};
		class receiveText {};
		class sendText {};
	};
};