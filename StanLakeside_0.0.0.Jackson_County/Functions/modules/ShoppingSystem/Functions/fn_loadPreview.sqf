
	ShoppingMan = "C_man_polo_2_F" createVehicleLocal [9819.32,1079.66,0.0015521]; 
	ShoppingMan setDir 90;

	removeuniform ShoppingMan; 
	removebackpack ShoppingMan;
	removevest ShoppingMan;
	removegoggles ShoppingMan;
	removeheadgear ShoppingMan;

	ShoppingMan addheadgear (headgear player);
	ShoppingMan adduniform (uniform player);
	ShoppingMan addbackpack (backpack player);
	ShoppingMan addgoggles (goggles player);
	ShoppingMan addvest (vest player);

	RPF_camera  = "CAMERA" camCreate (getPos player);  
	showCinemaBorder true;   
	RPF_camera cameraEffect ["EXTERNAL", "BACK"];                             
	RPF_camera camSetPos [9821.32,1079.3,1];  
	RPF_camera camSetFOV 0.85;  
	RPF_camera camSettarget ShoppingMan; 
 
	RPF_camera camCommit 0;

	RPF_shoppingDialog = true;
	while{RPF_shoppingDialog} do { uisleep 0.05; ShoppingMan setdir ((getdir ShoppingMan) + 5); };