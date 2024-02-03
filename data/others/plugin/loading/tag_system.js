
tyrano.plugin.kag.tag.preload.pm = {
    storage: "",
    wait: "false",
    next_order: "true",
};

tyrano.plugin.kag.tag.preload.start = function(pm) {

    var that = this;

    if (pm.wait == "true") {
        this.kag.layer.hideEventLayer();
    }

    var storage = pm.storage;

    if ( typeof storage == "object" && storage.length > 0) {

        var sum = 0;

        for (var i = 0; i < storage.length; i++) {

            that.kag.preload(storage[i], function() {

                sum++;

                if (storage.length == sum) {

                    if (pm.wait == "true") {
                        that.kag.layer.showEventLayer();
                    }

                    if (pm.next_order == "true") {
                        that.kag.ftag.nextOrder();
                    }
                }
            });
        }

    } else {

        this.kag.preload(pm.storage, function() {

            if (pm.wait == "true") {
                that.kag.layer.showEventLayer();
            }

            if (pm.next_order == "true") {
                that.kag.ftag.nextOrder();
            }

        });
    }
};
