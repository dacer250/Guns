/**
 * StitchDesign管理初始化
 */
var StitchDesign = {
    id: "StitchDesignTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
StitchDesign.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingType', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingGender', visible: true, align: 'center', valign: 'middle'},
            {title: '内容、字体、位置', field: 'stitchAttr', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'stitchKey', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'stitchName', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
StitchDesign.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        StitchDesign.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加StitchDesign
 */
StitchDesign.openAddStitchDesign = function () {
    var index = layer.open({
        type: 2,
        title: '添加StitchDesign',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/stitchDesign/stitchDesign_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看StitchDesign详情
 */
StitchDesign.openStitchDesignDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'StitchDesign详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/stitchDesign/stitchDesign_update/' + StitchDesign.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除StitchDesign
 */
StitchDesign.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/stitchDesign/delete", function (data) {
            Feng.success("删除成功!");
            StitchDesign.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("stitchDesignId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询StitchDesign列表
 */
StitchDesign.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    StitchDesign.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = StitchDesign.initColumn();
    var table = new BSTable(StitchDesign.id, "/stitchDesign/list", defaultColunms);
    table.setPaginationType("client");
    StitchDesign.table = table.init();
});
