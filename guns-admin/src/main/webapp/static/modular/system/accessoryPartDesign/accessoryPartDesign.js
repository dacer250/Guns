/**
 * AccessoryPartDesign管理初始化
 */
var AccessoryPartDesign = {
    id: "AccessoryPartDesignTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
AccessoryPartDesign.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'accessoryPartId', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'designChoice', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
AccessoryPartDesign.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        AccessoryPartDesign.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加AccessoryPartDesign
 */
AccessoryPartDesign.openAddAccessoryPartDesign = function () {
    var index = layer.open({
        type: 2,
        title: '添加AccessoryPartDesign',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/accessoryPartDesign/accessoryPartDesign_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看AccessoryPartDesign详情
 */
AccessoryPartDesign.openAccessoryPartDesignDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'AccessoryPartDesign详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/accessoryPartDesign/accessoryPartDesign_update/' + AccessoryPartDesign.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除AccessoryPartDesign
 */
AccessoryPartDesign.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/accessoryPartDesign/delete", function (data) {
            Feng.success("删除成功!");
            AccessoryPartDesign.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("accessoryPartDesignId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询AccessoryPartDesign列表
 */
AccessoryPartDesign.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    AccessoryPartDesign.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = AccessoryPartDesign.initColumn();
    var table = new BSTable(AccessoryPartDesign.id, "/accessoryPartDesign/list", defaultColunms);
    table.setPaginationType("client");
    AccessoryPartDesign.table = table.init();
});
