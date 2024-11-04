//タグ追加
tyrano.plugin.kag.tag.loop_quake = {
    vital: [],
    pm: {
        vmax: "0",
        hmax: "0",
        time: "100",
        layer: "base",
        //name: "",
        effect: "linear",
    },
    start: function (pm) {
        let selecter = "."
        let opt_in = {}
        let opt_out = {}

        //レイヤー
        if(pm.layer == "all"){
            selecter += this.kag.define.BASE_DIV_NAME
            let trans = $(selecter).css("transform")
            opt_in.transform = trans + " translate(" + pm.hmax + "px, " + pm.vmax + "px)"
            opt_out.transform = trans + " translate(-" + pm.hmax + "px, -" + pm.vmax + "px)"
        }else{
            //複数指定されている場合
            let ary = pm.layer.split(",")
            for(let i = 0; i < ary.length; i++){
                selecter += ary[i] + "_fore,."
            }
            //最後のカンマは外す
            selecter = selecter.substr(0, selecter.length - 2)
            //CSS指定
            opt_in.top = "+=" + pm.vmax + "px"
            opt_in.left ="+=" + pm.hmax + "px"
            opt_out.top = "-=" + pm.vmax + "px"
            opt_out.left ="-=" + pm.hmax + "px"
        }

        //ループ関数
        let loop = function(){
            $(selecter).animate(
                opt_in
                //{transform: "matrix(0.546875, 0, 0, 0.546875, 0, 0) translate(20px, 20px)"}
            , pm.time / 2, pm.effect)
            .animate(
                opt_out
                //{transform: "matrix(0.546875, 0, 0, 0.546875, 0, 0) translate(-20px, -20px)"}
            , pm.time / 2, function(){
                loop()
            })
        }

        //name
        /*
        if(pm.name != ""){
            pm.name
        }
        */

        //アニメーション開始
        loop()
        TYRANO.kag.ftag.nextOrder()
    }
}
tyrano.plugin.kag.ftag.master_tag.loop_quake = tyrano.plugin.kag.tag.loop_quake
tyrano.plugin.kag.ftag.master_tag.loop_quake.kag = tyrano.plugin.kag


tyrano.plugin.kag.tag.loop_quake_stop = {
    vital: [],
    pm: {
        layer: "base",
    },
    start: function(pm){
        let selecter = "."
        //レイヤー
        if(pm.layer == "all"){
            selecter += this.kag.define.BASE_DIV_NAME
        }else{
            //複数指定されている場合
            let ary = pm.layer.split(",")
            for(let i = 0; i < ary.length; i++){
                selecter += ary[i] + "_fore,."
            }
            //最後のカンマは外す
            selecter = selecter.substr(0, selecter.length - 2)
        }
        //アニメーション停止
        $(selecter).stop(true, false)
        let opt = {
            top: "0px",
            left: "0px",
        }
        $(selecter).css(opt)
        TYRANO.kag.ftag.nextOrder()
    }
}
tyrano.plugin.kag.ftag.master_tag.loop_quake_stop = tyrano.plugin.kag.tag.loop_quake_stop
tyrano.plugin.kag.ftag.master_tag.loop_quake_stop.kag = tyrano.plugin.kag
//TYRANO.plugin.kag.ftag.master_tag.loop_quake_stop = tyrano.plugin.kag.ftag.master_tag.loop_quake_stop
