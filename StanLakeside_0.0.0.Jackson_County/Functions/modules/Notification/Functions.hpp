class Notification_Module {
	tag = "ClientModules_Notification";
	
	class NotificationInit
	{
		file = "Functions\modules\Notification";
		class initNotification {};
	};
	class Notification
	{
		file = "Functions\modules\Notification\Functions";
        class showNotification {};
        class doMsg {};
	};
};