package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.constant.ClothingGender;
import com.stylefeng.guns.modular.system.constant.ClothingType;
import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.Craftwork;
import com.stylefeng.guns.modular.system.service.ICraftworkService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Craftwork控制器
 *
 * @author fengshuonan
 * @Date 2018-05-21 22:33:35
 */
@Controller
@RequestMapping("/craftwork")
public class CraftworkController extends BaseController {

    private String PREFIX = "/system/craftwork/";

    @Autowired
    private ICraftworkService craftworkService;

    /**
     * 跳转到Craftwork首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "craftwork.html";
    }

    /**
     * 跳转到添加Craftwork
     */
    @RequestMapping("/craftwork_add")
    public String craftworkAdd() {
        return PREFIX + "craftwork_add.html";
    }

    /**
     * 跳转到修改Craftwork
     */
    @RequestMapping("/craftwork_update/{craftworkId}")
    public String craftworkUpdate(@PathVariable Integer craftworkId, Model model) {
        Craftwork craftwork = craftworkService.selectById(craftworkId);
        model.addAttribute("item",craftwork);
        LogObjectHolder.me().set(craftwork);
        return PREFIX + "craftwork_edit.html";
    }

    /**
     * 获取Craftwork列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation("工艺列表")
    public Object list(@RequestParam(required = false)ClothingGender gender,
                       @RequestParam(required = false)ClothingType type ) {

        Map<String ,String> map =new HashMap<>();
        if(gender!=null)
            map.put("gender",gender.name());
        if(type!=null)
            map.put("type",type.name());
        List<Craftwork> list=(List<Craftwork>) craftworkService.list(map);
        return new BaseResponse<List< Craftwork >>(true, "", list);
    }


    /**
     * 新增bodyPart
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增工艺")
    public Object add(@ApiParam @RequestBody Craftwork craftwork) {
        craftworkService.insert(craftwork);
        return new BaseResponse<Craftwork>(true,"success",craftwork);
    }

    /**
     * 删除Craftwork
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer craftworkId) {
        craftworkService.deleteById(craftworkId);
        return SUCCESS_TIP;
    }

    /**
     * 修改Craftwork
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(Craftwork craftwork) {
        craftworkService.updateById(craftwork);
        return SUCCESS_TIP;
    }

    /**
     * Craftwork详情
     */
    @RequestMapping(value = "/detail/{craftworkId}")
    @ResponseBody
    public Object detail(@PathVariable("craftworkId") Integer craftworkId) {
        return craftworkService.selectById(craftworkId);
    }
}
