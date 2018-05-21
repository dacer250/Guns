/**
 * SpecialPart管理初始化
 */
var SpecialPart = {
    id: "SpecialPartTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SpecialPart.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingGender', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingType', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'specialPartKey', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'specialPartName', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
SpecialPart.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SpecialPart.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加SpecialPart
 */
SpecialPart.openAddSpecialPart = function () {
    var index = layer.open({
        type: 2,
        title: '添加SpecialPart',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/specialPart/specialPart_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看SpecialPart详情
 */
SpecialPart.openSpecialPartDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'SpecialPart详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/specialPart/specialPart_update/' + SpecialPart.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除SpecialPart
 */
SpecialPart.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/specialPart/delete", function (data) {
            Feng.success("删除成功!");
            SpecialPart.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("specialPartId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询SpecialPart列表
 */
SpecialPart.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SpecialPart.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SpecialPart.initColumn();
    var table = new BSTable(SpecialPart.id, "/specialPart/list", defaultColunms);
    table.setPaginationType("client");
    SpecialPart.table = table.init();
});
