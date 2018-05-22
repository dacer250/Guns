/**
 * 初始化StitchDesign详情对话框
 */
var StitchDesignInfoDlg = {
    stitchDesignInfoData : {}
};

/**
 * 清除数据
 */
StitchDesignInfoDlg.clearData = function() {
    this.stitchDesignInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
StitchDesignInfoDlg.set = function(key, val) {
    this.stitchDesignInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
StitchDesignInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
StitchDesignInfoDlg.close = function() {
    parent.layer.close(window.parent.StitchDesign.layerIndex);
}

/**
 * 收集数据
 */
StitchDesignInfoDlg.collectData = function() {
    this
    .set('id')
    .set('clothingType')
    .set('clothingGender')
    .set('stitchAttr')
    .set('stitchKey')
    .set('stitchName');
}

/**
 * 提交添加
 */
StitchDesignInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/stitchDesign/add", function(data){
        Feng.success("添加成功!");
        window.parent.StitchDesign.table.refresh();
        StitchDesignInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.stitchDesignInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
StitchDesignInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/stitchDesign/update", function(data){
        Feng.success("修改成功!");
        window.parent.StitchDesign.table.refresh();
        StitchDesignInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.stitchDesignInfoData);
    ajax.start();
}

$(function() {

});
