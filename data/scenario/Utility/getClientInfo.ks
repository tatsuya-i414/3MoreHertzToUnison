[iscript]
    // 使用ブラウザの判定
    sf["usingBrowser"] = $.getBrowser();
    // 使用デバイスの判定
    let usingDevice = "";
    let agent = window.navigator.userAgent.toLowerCase();
    var isSmartPhone = /iphone|ipod|android.*mobile|windows.*phone|blackberry.*mobile/.test(agent);
    var isPC = !isSmartPhone;
    if (isSmartPhone) {
        sf["usingDevice"] = "SP";
    }
    if (isPC) {
        sf["usingDevice"] = "PC";
    }
[endscript]
[return]