/*
	path to sounds for phone is:
	\SL_Client\Sounds\Phone
	all have prefix phone_xxx
*/

params["_type"];
switch (_type) do {
	case 1: {RPF_phoneRinging = false; hint "Osoba do której chcesz zadzwonić ma wyłączony telefon!"; playSound "sl_phone_noservice";};
	case 2: {RPF_phoneRinging = false; hint "Osoba do której chcesz zadzwonić jest już w rozmowie!"; playSound "sl_phone_nodialtone";};
	case 3: {RPF_phoneTryingCall = false; hint "Osoba do której chcesz zadzwonić jest poza zasięgiem sieci!"; playSound "sl_phone_notavailable";};
	case 4: {RPF_phoneTryingCall = false; hint "Osoba do której chcesz dzwonisz jest w tym momencie zajęta!"; playSound "sl_phone_nodialtone";};
	case 5: {RPF_phoneTryingCall = false; hint "Osoba do której chcesz dzwonisz jest w tym momencie zajęta!"; playSound "sl_phone_raf_kurwa_nie_odbiore";};
};