/**
 * Craftwork管理初始化
 */
var Craftwork = {
    id: "CraftworkTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
Craftwork.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingGender', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingType', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'craftworkName', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
Craftwork.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        Craftwork.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加Craftwork
 */
Craftwork.openAddCraftwork = function () {
    var index = layer.open({
        type: 2,
        title: '添加Craftwork',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/craftwork/craftwork_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看Craftwork详情
 */
Craftwork.openCraftworkDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'Craftwork详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/craftwork/craftwork_update/' + Craftwork.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除Craftwork
 */
Craftwork.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/craftwork/delete", function (data) {
            Feng.success("删除成功!");
            Craftwork.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("craftworkId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询Craftwork列表
 */
Craftwork.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    Craftwork.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = Craftwork.initColumn();
    var table = new BSTable(Craftwork.id, "/craftwork/list", defaultColunms);
    table.setPaginationType("client");
    Craftwork.table = table.init();
});
