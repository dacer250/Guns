/**
 * 初始化InchDesign详情对话框
 */
var InchDesignInfoDlg = {
    inchDesignInfoData : {}
};

/**
 * 清除数据
 */
InchDesignInfoDlg.clearData = function() {
    this.inchDesignInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
InchDesignInfoDlg.set = function(key, val) {
    this.inchDesignInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
InchDesignInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
InchDesignInfoDlg.close = function() {
    parent.layer.close(window.parent.InchDesign.layerIndex);
}

/**
 * 收集数据
 */
InchDesignInfoDlg.collectData = function() {
    this
    .set('id')
    .set('netKey')
    .set('name')
    .set('clothingType')
    .set('clothingGender')
    .set('clothingKey');
}

/**
 * 提交添加
 */
InchDesignInfoDlg.addSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/inchDesign/add", function(data){
        Feng.success("添加成功!");
        window.parent.InchDesign.table.refresh();
        InchDesignInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.inchDesignInfoData);
    ajax.start();
}

/**
 * 提交修改
 */
InchDesignInfoDlg.editSubmit = function() {

    this.clearData();
    this.collectData();

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/inchDesign/update", function(data){
        Feng.success("修改成功!");
        window.parent.InchDesign.table.refresh();
        InchDesignInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.inchDesignInfoData);
    ajax.start();
}

$(function() {

});
