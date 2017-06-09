/*
Author: Kerkkoh
First Edit: 17.4.2016
*/
createDialog "ATM";

ctrlSetText [1000, (format [(localize "STR_RPF_MODULES_ATM_TITLEACC"), str (player getVariable "bankAccount")])];

ctrlSetText [1002, (str (player getVariable "bank"))];

ctrlSetText [1004, (str (player getVariable "cash"))];