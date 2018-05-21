/**
 * 初始化Craftwork详情对话框
 */
var CraftworkInfoDlg = {
    craftworkInfoData : {}
};

/**
 * 清除数据
 */
CraftworkInfoDlg.clearData = function() {
    this.craftworkInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CraftworkInfoDlg.set = function(key, val) {
    this.craftworkInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CraftworkInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
CraftworkInfoDlg.close = function() {
    parent.layer.close(window.parent.Craftwork.layerIndex);
}

/**
 * 收集数据
 */
CraftworkInfoDlg.collectData = function() {
    this
    .set('id')
    .set('clothingGender')
    .set('clothingType')
    .set('craftworkName');
}

/**
 * 提交添加
 */
CraftworkInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/craftwork/add", function(data){
        Feng.success("添加成功!");
        window.parent.Craftwork.table.refresh();
        CraftworkInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.craftworkInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
CraftworkInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/craftwork/update", function(data){
        Feng.success("修改成功!");
        window.parent.Craftwork.table.refresh();
        CraftworkInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.craftworkInfoData);
    ajax.start();
}

$(function() {

});
