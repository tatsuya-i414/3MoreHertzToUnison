/*
ティラノビルダープラグイン開発用のテンプレート
まず、このファイルを編集してプラグイン開発を試してみると良いでしょう。
*/

'use strict';
module.exports = class plugin_setting {

    constructor(TB) {

        /* TBはティラノビルダーの機能にアクセスするためのインターフェスを提供する */
        this.TB = TB;

        /* プラグイン名を格納する */
        this.name= TB.$.s("ローディング画面表示プラグイン");

        /*プラグインの説明文を格納する*/
        this.plugin_text= TB.$.s("CSVファイルに登録したファイルのプリロードを行い、ローディング画面を表示します。");

        /*プラグイン説明用の画像ファイルを指定する。プラグインフォルダに配置してください*/
        this.plugin_img = "image.png";

    }


    /* プラグインをインストールを実行した時１度だけ走ります。フォルダのコピーなどにご活用ください。*/
    triggerInstall(){

        /*
        //プラグインからプロジェクトにファイルをコピーするサンプルです
        var project_path = TB.getProjectPath() ;
        var from_path = project_path + "data/others/plugin/plugin_template/copy_folder";
        var to_path = project_path + "data/image/copy_folder";
        TB.io.copy(from_path,to_path);
        */

    }

    /*
    追加するコンポーネントを定義します。
    */

    defineComponents(){

        var cmp = {};
        var TB = this.TB;

        //=======================================================
        // loading
        //=======================================================

        cmp["loading"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング設定開始"),
                "help": TB.$.s("ローディング画面の設定を開始します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング設定開始"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "bgcolor": {
                        type: "Color",
                        name: TB.$.s("背景色"),
                        default_val: "0x000000",
                        vital: false,
                        validate: {
                            required: true
                        }
                    },

                    "bgimage": {
                        type: "ImageSelect",
                        file_path: "others/plugin/loading/image/",
                        base_img_url: "data/others/plugin/loading/image/",
                        name: TB.$.s("背景画像"),
                        help: TB.$.s("背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },
                },
            },
        };

        //=======================================================
        //  endloading
        //=======================================================

        cmp["endloading"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング設定終了"),
                "help": TB.$.s("ローディング画面の設定を終了します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング設定終了"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {},
            },
        };

        //=======================================================
        //  loading_image
        //=======================================================

        cmp["loading_image"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング画像"),
                "help": TB.$.s("ローディング画面に表示する画像を指定します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング画像"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                    obj.data.pm.name || (obj.data.pm.name="");
                    return obj.data.pm.name;
                },

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                write_system_code : function(context) {
                    var tag_name = this.data.name;
                    var pm = this.data.pm;
                    var storage = "./data/others/plugin/loading/image/" + pm.img;
                    if (!context["map_preload"][storage]) {
                        context["map_preload"][storage] = "1";
                        return $.tag("preload", {"storage": storage});
                    } else {
                        return "";
                    }
                },

                param: {

                    "name": {
                        type: "Text",
                        name: TB.$.s("名前（※一意の名前を指定します）"),
                        vital: true,
                        validate: {
                            required: true,
                        },
                        onChange: function(val, component) {
                            TB.component.changeParam(component, "name", val);
                        }
                    },

                    "img": {
                        type: "ImageSelect",
                        file_path: "others/plugin/loading/image/",
                        name: TB.$.s("画像"),
                        help: TB.$.s("画像を指定します"),
                        vital: true,
                        default_val: "",
                        validate: {
                            required: true
                        }
                    },

                    _bound_select : {
                        type : "BoundSelectPlugin",
                        bound_type : "plugin",
                        file_path : "bgimage/",
                        name : TB.$.s("領域選択"),
                        help : TB.$.s("座標を見やすいツールを使って指定することができます"),
                        vital : false,
                        default_val : "",

                        drag_obj:function(pm){
                            var project_path = TB.getProjectPath();
                            var img_path = project_path + "data/others/plugin/loading/image/"+ pm.img;
                            var html = '<img style="position:relative;width:100%;height:100%" src="'+ img_path +'">';
                            var j_obj = TB.$(html);

                            return j_obj
                        },
                    },

                    "x" : {
                        type: "Num",
                        name: "横位置",
                        unit: "px",
                        help: TB.$.s("画面左端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "y" : {
                        type: "Num",
                        name: "縦位置",
                        unit: "px",
                        help: TB.$.s("画面上端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("画像の幅を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("画像の高さを指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "effect": {
                        type: "Select",
                        name: TB.$.s("アニメーションの種類"),
                        select_list: [{
                            name: TB.$.s("ぽよぽよ"),
                            val: "poyo"
                        }, {
                            name: TB.$.s("ふわふわ"),
                            val: "fuwa"
                        }, {
                            name: TB.$.s("点滅"),
                            val: "flash"
                        }, {
                            name: TB.$.s("回転R"),
                            val: "roleR"
                        }, {
                            name: TB.$.s("回転L"),
                            val: "roleL"
                        }, {
                            name: TB.$.s("X軸回転"),
                            val: "roleX"
                        }, {
                            name: TB.$.s("Y軸回転"),
                            val: "roleY"
                        },],

                        default_val: "role",
                        vital: false,
                        help: TB.$.s("アニメーションの種類を指定します"),
                    },

                    "effect_time" : {
                        type: "Num",
                        name: "アニメーション時間",
                        unit: "ﾐﾘ秒",
                        help: TB.$.s("アニメーションにかける時間を指定します"),

                        default_val: 1000,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };

        //=======================================================
        //  loading_prog
        //=======================================================

        cmp["loading_prog"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング進捗バー"),
                "help": TB.$.s("ローディング画面に表示する進捗バーを指定します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング進捗バー"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                header: function(obj) {
                    return "";
                },

                param_view: {},

                param: {

                    "width" : {
                        type: "Num",
                        name: "幅",
                        unit: "px",
                        help: TB.$.s("バーの幅を指定します"),

                        default_val: 400,
                        vital: true,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "height" : {
                        type: "Num",
                        name: "高さ",
                        unit: "px",
                        help: TB.$.s("バーの高さを指定します"),

                        default_val: 30,
                        vital: true,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "color" : {
                        type : "Color",
                        name : TB.$.s("バーの背景色"),
                        default_val : "0xFFFFFF",
                        vital: false,
                        validate : {
                            required : true
                        }
                    },

                    "color_bar" : {
                        type : "Color",
                        name : TB.$.s("バーの色"),
                        default_val : "0xFF0000",
                        vital: false,
                        validate : {
                            required : true
                        }
                    },

                    "radius" : {
                        type: "Num",
                        name: "角丸",
                        unit: "px",
                        help: TB.$.s("背景色を指定した場合の角丸を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "img_bg": {
                        type: "ImageSelect",
                        file_path: "others/plugin/loading/image/",
                        base_img_url: "data/others/plugin/loading/image/",
                        name: TB.$.s("バーの背景画像"),
                        help: TB.$.s("バーの背景画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "img_bar": {
                        type: "ImageSelect",
                        file_path: "others/plugin/loading/image/",
                        base_img_url: "data/others/plugin/loading/image/",
                        name: TB.$.s("バーの画像"),
                        help: TB.$.s("バーの画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },

                    "img_frame": {
                        type: "ImageSelect",
                        file_path: "others/plugin/loading/image/",
                        base_img_url: "data/others/plugin/loading/image/",
                        name: TB.$.s("バーのフレーム画像"),
                        help: TB.$.s("バーのフレーム画像を指定します"),
                        vital: false,
                        default_val: "",
                        line_preview: "on",
                        validate: {
                            required: true
                        }
                    },


                    "x" : {
                        type: "Num",
                        name: "横位置",
                        unit: "px",
                        help: TB.$.s("画面左端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },

                    "y" : {
                        type: "Num",
                        name: "縦位置",
                        unit: "px",
                        help: TB.$.s("画面上端からの位置を指定します"),

                        default_val: 0,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },

        };



        //=======================================================
        //  endloading
        //=======================================================

        cmp["endloading"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング設定終了"),
                "help": TB.$.s("ローディング画面の設定を終了します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング設定終了"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                    return "";
                },

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {},
            },
        };

        //=======================================================
        //  endloading
        //=======================================================

        cmp["loading_show"] = {

            "info": {
                "default": true,
                "name": TB.$.s("ローディング表示"),
                "help": TB.$.s("ローディング画面を表示します"),
                "icon": TB.$.s("s-icon-star-full"),
            },

            "component": {

                name: TB.$.s("ローディング表示"),
                component_type: "Simple",  /* Simple Movie Image Text Sound */

                header: function(obj) {
                    obj.data.pm.file || (obj.data.pm.file="");
                    return obj.data.pm.file;
                },

                default_view: {
                    base_img_url: "data/others/plugin/loading/image/",
                    icon: "s-icon-star-full",
                    icon_color: "#FFFF99",
                    category: "plugin",
                },

                param_view: {},

                param: {

                    "file": {
                        type: "Text",
                        name: TB.$.s("CSVファイル名"),
                        vital: true,
                        validate: {
                            required: true,
                        },
                        onChange: function(val, component) {
                            TB.component.changeParam(component, "file", val);
                        }
                    },

                    "time" : {
                        type: "Num",
                        name: "時間",
                        unit: "ﾐﾘ秒",
                        help: TB.$.s("表示にかける時間を指定します"),

                        default_val: 1000,
                        vital: false,

                        spinner: {
                            min: 0,
                            max: 5000,
                            step: 10,
                        },

                        validate: {
                            number: true,
                        }
                    },
                },
            },
        };

        return cmp;
    }

    test(){}
}
