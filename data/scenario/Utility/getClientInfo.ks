[iscript]
    let agent = window.navigator.userAgent.toLowerCase();

    // 使用ブラウザの判定
    let usingBrowser = "";
    if (agent.indexOf("msie") != -1 || agent.indexOf("trident") != -1) {
        usingBrowser = "Internet Explorer";
    } 
    else if (agent.indexOf("edg") != -1 || agent.indexOf("edge") != -1) {
        usingBrowser = "Microsoft Edge";
    } 
    else if (agent.indexOf("opr") != -1 || agent.indexOf("opera") != -1) {
        usingBrowser = "Opera";
    } 
    else if (agent.indexOf("chrome") != -1) {
        usingBrowser = "Google Chrome";
    } 
    else if (agent.indexOf("safari") != -1) {
        usingBrowser = "Safari";
    } 
    else if (agent.indexOf("firefox") != -1) {
        usingBrowser = "FireFox";
    } 
    sf["usingBrowser"] = usingBrowser;
    
    // 使用デバイスの判定
    let usingDevice = "";
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