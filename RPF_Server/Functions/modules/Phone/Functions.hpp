class ServerModules_Phone {
	class PhoneInit
	{
		file = "RPF_Server\Functions\modules\Phone";
		class initPhone {};
	};
	class Phone
	{
		file = "RPF_Server\Functions\modules\Phone\Functions";
		class initPlayer {};
		class phoneNumber {};
		//class xxx {};
	};
	class PhoneMessages
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Messages";
		class fetchMessages {};
		class sendMessage {};
		class fetchContactsToMessage {};
	};
	class PhoneContacts
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Contacts";
		class fetchContacts {};
		class insertPhoneContact {};
		class updatePhoneContact {};
	};
	class PhoneCallsSend
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Calls\Send";
		class trySendCall {};
	};
};