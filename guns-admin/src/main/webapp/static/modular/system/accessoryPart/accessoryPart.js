/**
 * AccessoryPart管理初始化
 */
var AccessoryPart = {
    id: "AccessoryPartTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
AccessoryPart.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingGender', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingType', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'accessoryPartKey', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'accessoryPartName', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
AccessoryPart.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        AccessoryPart.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加AccessoryPart
 */
AccessoryPart.openAddAccessoryPart = function () {
    var index = layer.open({
        type: 2,
        title: '添加AccessoryPart',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/accessoryPart/accessoryPart_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看AccessoryPart详情
 */
AccessoryPart.openAccessoryPartDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'AccessoryPart详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/accessoryPart/accessoryPart_update/' + AccessoryPart.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除AccessoryPart
 */
AccessoryPart.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/accessoryPart/delete", function (data) {
            Feng.success("删除成功!");
            AccessoryPart.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("accessoryPartId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询AccessoryPart列表
 */
AccessoryPart.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    AccessoryPart.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = AccessoryPart.initColumn();
    var table = new BSTable(AccessoryPart.id, "/accessoryPart/list", defaultColunms);
    table.setPaginationType("client");
    AccessoryPart.table = table.init();
});
