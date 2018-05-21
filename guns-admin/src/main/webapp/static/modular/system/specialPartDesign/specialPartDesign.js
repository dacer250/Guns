/**
 * SpecialPartDesign管理初始化
 */
var SpecialPartDesign = {
    id: "SpecialPartDesignTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
SpecialPartDesign.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'specialPartId', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'designChoice', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
SpecialPartDesign.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        SpecialPartDesign.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加SpecialPartDesign
 */
SpecialPartDesign.openAddSpecialPartDesign = function () {
    var index = layer.open({
        type: 2,
        title: '添加SpecialPartDesign',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/specialPartDesign/specialPartDesign_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看SpecialPartDesign详情
 */
SpecialPartDesign.openSpecialPartDesignDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'SpecialPartDesign详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/specialPartDesign/specialPartDesign_update/' + SpecialPartDesign.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除SpecialPartDesign
 */
SpecialPartDesign.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/specialPartDesign/delete", function (data) {
            Feng.success("删除成功!");
            SpecialPartDesign.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("specialPartDesignId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询SpecialPartDesign列表
 */
SpecialPartDesign.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    SpecialPartDesign.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = SpecialPartDesign.initColumn();
    var table = new BSTable(SpecialPartDesign.id, "/specialPartDesign/list", defaultColunms);
    table.setPaginationType("client");
    SpecialPartDesign.table = table.init();
});
