class ServerModules_Phone {
	class PhoneInit
	{
		file = "RPF_Server\Functions\modules\Phone";
		class initPhone {};
	};
	class Phone
	{
		file = "RPF_Server\Functions\modules\Phone\Functions";
		class fetchContacts {};
		class insertPhoneContact {};
		class updatePhoneContact {};
	};
};