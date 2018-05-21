/**
 * 初始化BodyPartDesign详情对话框
 */
var BodyPartDesignInfoDlg = {
    bodyPartDesignInfoData : {}
};

/**
 * 清除数据
 */
BodyPartDesignInfoDlg.clearData = function() {
    this.bodyPartDesignInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
BodyPartDesignInfoDlg.set = function(key, val) {
    this.bodyPartDesignInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
BodyPartDesignInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
BodyPartDesignInfoDlg.close = function() {
    parent.layer.close(window.parent.BodyPartDesign.layerIndex);
}

/**
 * 收集数据
 */
BodyPartDesignInfoDlg.collectData = function() {
    this
    .set('id')
    .set('bodyPartId')
    .set('designChoice');
}

/**
 * 提交添加
 */
BodyPartDesignInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/bodyPartDesign/add", function(data){
        Feng.success("添加成功!");
        window.parent.BodyPartDesign.table.refresh();
        BodyPartDesignInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.bodyPartDesignInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
BodyPartDesignInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/bodyPartDesign/update", function(data){
        Feng.success("修改成功!");
        window.parent.BodyPartDesign.table.refresh();
        BodyPartDesignInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.bodyPartDesignInfoData);
    ajax.start();
}

$(function() {

});
