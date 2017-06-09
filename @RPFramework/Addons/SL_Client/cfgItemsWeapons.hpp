class sl_phone: ItemRadio {
    author = "KifKick";
    displayName = "Phone";
    descriptionShort = "Personal Phone";//#Stringtable
    scope = PUBLIC;
    scopeCurator = PUBLIC;
    model="\SL_Client\Models\phone\phone.p3d";
    picture="\SL_Client\Textures\Items\Icons\phone.paa";
    tf_prototype = 1;
    tf_range = 50000;
    tf_dialog = "anprc152_radio_dialog";
    tf_encryptionCode = "tf_east_radio_code";
    tf_dialogUpdate = "call TFAR_fnc_updateSWDialogToChannel;";
    tf_subtype = "phone";
    tf_parent = "sl_phone";
    tf_additional_channel = 0;
};