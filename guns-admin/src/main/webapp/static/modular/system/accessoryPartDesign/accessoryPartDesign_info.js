/**
 * 初始化AccessoryPartDesign详情对话框
 */
var AccessoryPartDesignInfoDlg = {
    accessoryPartDesignInfoData : {}
};

/**
 * 清除数据
 */
AccessoryPartDesignInfoDlg.clearData = function() {
    this.accessoryPartDesignInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
AccessoryPartDesignInfoDlg.set = function(key, val) {
    this.accessoryPartDesignInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
AccessoryPartDesignInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
AccessoryPartDesignInfoDlg.close = function() {
    parent.layer.close(window.parent.AccessoryPartDesign.layerIndex);
}

/**
 * 收集数据
 */
AccessoryPartDesignInfoDlg.collectData = function() {
    this
    .set('id')
    .set('accessoryPartId')
    .set('designChoice');
}

/**
 * 提交添加
 */
AccessoryPartDesignInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/accessoryPartDesign/add", function(data){
        Feng.success("添加成功!");
        window.parent.AccessoryPartDesign.table.refresh();
        AccessoryPartDesignInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.accessoryPartDesignInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
AccessoryPartDesignInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/accessoryPartDesign/update", function(data){
        Feng.success("修改成功!");
        window.parent.AccessoryPartDesign.table.refresh();
        AccessoryPartDesignInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.accessoryPartDesignInfoData);
    ajax.start();
}

$(function() {

});
