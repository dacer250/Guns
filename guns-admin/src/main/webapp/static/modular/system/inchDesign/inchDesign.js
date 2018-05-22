/**
 * InchDesign管理初始化
 */
var InchDesign = {
    id: "InchDesignTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
InchDesign.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '净尺寸key', field: 'netKey', visible: true, align: 'center', valign: 'middle'},
            {title: '净尺寸名称', field: 'name', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingType', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingGender', visible: true, align: 'center', valign: 'middle'},
            {title: '', field: 'clothingKey', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
InchDesign.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        InchDesign.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加InchDesign
 */
InchDesign.openAddInchDesign = function () {
    var index = layer.open({
        type: 2,
        title: '添加InchDesign',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/inchDesign/inchDesign_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看InchDesign详情
 */
InchDesign.openInchDesignDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'InchDesign详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/inchDesign/inchDesign_update/' + InchDesign.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除InchDesign
 */
InchDesign.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/inchDesign/delete", function (data) {
            Feng.success("删除成功!");
            InchDesign.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("inchDesignId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询InchDesign列表
 */
InchDesign.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    InchDesign.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = InchDesign.initColumn();
    var table = new BSTable(InchDesign.id, "/inchDesign/list", defaultColunms);
    table.setPaginationType("client");
    InchDesign.table = table.init();
});
