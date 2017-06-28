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
		class loadSkin {};
		class openPhone {};
		class openPhoneInternet {};
		class receiveContacts {};
	};
	class PhoneMessages
	{
		file = "Functions\modules\Phone\Functions\Messages";
		class loadMessages {};
		class loadMessageSend {};
		class onLBChangeMessage {};
		class receiveMessage {};
		class receiveMessages {};
		class sendMessage {};
	};
	class PhonePlayerInfo
	{
		file = "Functions\modules\Phone\Functions\PlayerInfo";
		class loadPlayerInfo {};
	};
	class PhoneWallet
	{
		file = "Functions\modules\Phone\Functions\Wallet";
		class loadWallet {};
	};
	class PhoneKeys
	{
		file = "Functions\modules\Phone\Functions\Keys";
		class loadKeys {};
	};
	class PhoneVolume
	{
		file = "Functions\modules\Phone\Functions\Volume";
		class lessVolume {};
		class moreVolume {};
	};
	class PhoneDarknet
	{
		file = "Functions\modules\Phone\Functions\Internet\Darknet";
		class onLBDarknetChangeMessage {};
		class openDarknetMessages {};
		class openWritingDarknetMessage {};
		class receiveDarknetMessages {};
		class sendDarknetMessage {};
	};
	class PhoneAdverts
	{
		file = "Functions\modules\Phone\Functions\Internet\Adverts";
		class onLBAdvertsChangeMessage {};
		class openAdvertsMessages {};
		class openWritingAdvertsMessage {};
		class receiveAdvertsMessages {};
		class sendAdvertsMessage {};
	};
	class PhoneCarsForSale
	{
		file = "Functions\modules\Phone\Functions\Internet\CarsForSale";
		class onLBCarsForSaleChangeMessage {};
		class openCarsForSaleMessages {};
		class openWritingCarsForSaleMessage {};
		class receiveCarsForSaleMessages {};
		class sendCarsForSaleMessage {};
	};
	class PhoneShop
	{
		file = "Functions\modules\Phone\Functions\Shop";
		class loadShop {};
		class onShopLBChange {};
		class shopConfirmBuy {};
		class shopTryBuy {};
	};
	class PhoneContacts
	{
		file = "Functions\modules\Phone\Functions\Contacts";
		class addContact {};
		class loadContacts {};
		class openContactsAdd {};
	};
	#include "Functions\Calls\callsFunctions.hpp"
};