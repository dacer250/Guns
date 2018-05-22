/**
 * 初始化AccessoryPart详情对话框
 */
var AccessoryPartInfoDlg = {
    accessoryPartInfoData : {}
};

/**
 * 清除数据
 */
AccessoryPartInfoDlg.clearData = function() {
    this.accessoryPartInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
AccessoryPartInfoDlg.set = function(key, val) {
    this.accessoryPartInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
AccessoryPartInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
AccessoryPartInfoDlg.close = function() {
    parent.layer.close(window.parent.AccessoryPart.layerIndex);
}

/**
 * 收集数据
 */
AccessoryPartInfoDlg.collectData = function() {
    this
    .set('id')
    .set('clothingGender')
    .set('clothingType')
    .set('accessoryPartKey')
    .set('accessoryPartName');
}

/**
 * 提交添加
 */
AccessoryPartInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/accessoryPart/add", function(data){
        Feng.success("添加成功!");
        window.parent.AccessoryPart.table.refresh();
        AccessoryPartInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.accessoryPartInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
AccessoryPartInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/accessoryPart/update", function(data){
        Feng.success("修改成功!");
        window.parent.AccessoryPart.table.refresh();
        AccessoryPartInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.accessoryPartInfoData);
    ajax.start();
}

$(function() {

});
