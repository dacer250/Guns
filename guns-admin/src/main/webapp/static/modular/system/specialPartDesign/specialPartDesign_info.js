/**
 * 初始化SpecialPartDesign详情对话框
 */
var SpecialPartDesignInfoDlg = {
    specialPartDesignInfoData : {}
};

/**
 * 清除数据
 */
SpecialPartDesignInfoDlg.clearData = function() {
    this.specialPartDesignInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SpecialPartDesignInfoDlg.set = function(key, val) {
    this.specialPartDesignInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
SpecialPartDesignInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
SpecialPartDesignInfoDlg.close = function() {
    parent.layer.close(window.parent.SpecialPartDesign.layerIndex);
}

/**
 * 收集数据
 */
SpecialPartDesignInfoDlg.collectData = function() {
    this
    .set('id')
    .set('specialPartId')
    .set('designChoice');
}

/**
 * 提交添加
 */
SpecialPartDesignInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/specialPartDesign/add", function(data){
        Feng.success("添加成功!");
        window.parent.SpecialPartDesign.table.refresh();
        SpecialPartDesignInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.specialPartDesignInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
SpecialPartDesignInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/specialPartDesign/update", function(data){
        Feng.success("修改成功!");
        window.parent.SpecialPartDesign.table.refresh();
        SpecialPartDesignInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.specialPartDesignInfoData);
    ajax.start();
}

$(function() {

});
