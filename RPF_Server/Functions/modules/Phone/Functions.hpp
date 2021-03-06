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
	class PhoneShop
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Shop";
		class shopTryBuy {};
	};
	class PhoneDarknet
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Internet\Darknet";
		class fetchDarknetMessages {};
		class sendDarknetMessage {};
	};
	class PhoneAdverts
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Internet\Adverts";
		class fetchAdvertsMessages {};
		class sendAdvertsMessage {};
	};
	class PhoneCarsForSale
	{
		file = "RPF_Server\Functions\modules\Phone\Functions\Internet\CarsForSale";
		class fetchCarsForSaleMessages {};
		class sendCarsForSaleMessage {};
	};
};