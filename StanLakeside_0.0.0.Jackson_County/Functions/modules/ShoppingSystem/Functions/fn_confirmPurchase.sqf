params["_classname","_itemType"];

RPF_ShoppingChest setPos (getPosATL player);

switch (_itemType) do {
    case 1: { RPF_ShoppingChest addWeaponCargoGlobal [_classname,1]; };
    case 2: { RPF_ShoppingChest addMagazineCargoGlobal [_classname,1]; };
    case 3: { RPF_ShoppingChest addItemCargoGlobal [_classname,1]; };
    case 4: { _backpackitems = backpackItems player; removeBackpack player; player addBackpack _classname; {player addItemToBackpack _x} foreach _backpackitems;};   
};

hint localize ("STR_RPF_SHOWROOM_SUCCESSFULLBUY");