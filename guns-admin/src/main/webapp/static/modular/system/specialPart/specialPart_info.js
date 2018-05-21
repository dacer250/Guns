/**
 * 初始化SpecialPart详情对话框
 */
var SpecialPartInfoDlg = {
    specialPartInfoData : {}
};

/**
 * 清除数据
 */
SpecialPartInfoDlg.clearData = function() {
    this.specialPartInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SpecialPartInfoDlg.set = function(key, val) {
    this.specialPartInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SpecialPartInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SpecialPartInfoDlg.close = function() {
    parent.layer.close(window.parent.SpecialPart.layerIndex);
}

/**
 * 收集数据
 */
SpecialPartInfoDlg.collectData = function() {
    this
    .set('id')
    .set('clothingGender')
    .set('clothingType')
    .set('specialPartKey')
    .set('specialPartName');
}

/**
 * 提交添加
 */
SpecialPartInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/specialPart/add", function(data){
        Feng.success("添加成功!");
        window.parent.SpecialPart.table.refresh();
        SpecialPartInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.specialPartInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SpecialPartInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/specialPart/update", function(data){
        Feng.success("修改成功!");
        window.parent.SpecialPart.table.refresh();
        SpecialPartInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.specialPartInfoData);
    ajax.start();
}

$(function() {

});
