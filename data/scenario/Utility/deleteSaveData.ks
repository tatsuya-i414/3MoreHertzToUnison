; 全てのセーブデータを削除する
[iscript]
    const array_save = TYRANO.kag.menu.getSaveData();
    const array = array_save.data;

    for (var i = 0; i < array.length; i++) {
        array_save.data[i] = {
            title: $.lang("not_saved"),
            stat: {},
            three: {},
            current_order_index: 0,
            save_date: "",
            img_data: "",
            layer: {}
        };
    }
    $.setStorage(TYRANO.kag.config.projectID + "_tyrano_data", array_save, TYRANO.kag.config.configSave);
[endscript]
[jump storage="title.ks" target="*TopPage"]