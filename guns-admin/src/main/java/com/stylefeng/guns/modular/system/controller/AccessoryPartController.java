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
import com.stylefeng.guns.modular.system.model.AccessoryPart;
import com.stylefeng.guns.modular.system.service.IAccessoryPartService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * AccessoryPart控制器
 *
 * @author fengshuonan
 * @Date 2018-05-22 13:55:17
 */
@Controller
@RequestMapping("/accessoryPart")
public class AccessoryPartController extends BaseController {

    private String PREFIX = "/system/accessoryPart/";

    @Autowired
    private IAccessoryPartService accessoryPartService;

    /**
     * 跳转到AccessoryPart首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "accessoryPart.html";
    }

    /**
     * 跳转到添加AccessoryPart
     */
    @RequestMapping("/accessoryPart_add")
    public String accessoryPartAdd() {
        return PREFIX + "accessoryPart_add.html";
    }

    /**
     * 跳转到修改AccessoryPart
     */
    @RequestMapping("/accessoryPart_update/{accessoryPartId}")
    public String accessoryPartUpdate(@PathVariable Integer accessoryPartId, Model model) {
        AccessoryPart accessoryPart = accessoryPartService.selectById(accessoryPartId);
        model.addAttribute("item",accessoryPart);
        LogObjectHolder.me().set(accessoryPart);
        return PREFIX + "accessoryPart_edit.html";
    }

    /**
     * 获取AccessoryPart列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation ("配件列表")
    public Object list(@RequestParam(required = false)ClothingGender gender,
                       @RequestParam(required = false)ClothingType type ) {

        Map<String ,String> map =new HashMap<>();
        if(gender!=null)
            map.put("gender",gender.name());
        if(type!=null)
            map.put("type",type.name());
        List<AccessoryPart> list=(List<AccessoryPart>) accessoryPartService.list(map);
        //return bodyPartService.selectList(map);
        return new BaseResponse<List< AccessoryPart >>(true, "", list);
    }


    /**
     * 新增bodyPart
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增配件")
    public Object add(@ApiParam @RequestBody AccessoryPart accessoryPart) {
        accessoryPartService.insert(accessoryPart);
        return new BaseResponse<AccessoryPart>(true,"success",accessoryPart);
    }

    /**
     * 删除AccessoryPart
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer accessoryPartId) {
        accessoryPartService.deleteById(accessoryPartId);
        return SUCCESS_TIP;
    }

    /**
     * 修改AccessoryPart
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(AccessoryPart accessoryPart) {
        accessoryPartService.updateById(accessoryPart);
        return SUCCESS_TIP;
    }

    /**
     * AccessoryPart详情
     */
    @RequestMapping(value = "/detail/{accessoryPartId}")
    @ResponseBody
    public Object detail(@PathVariable("accessoryPartId") Integer accessoryPartId) {
        return accessoryPartService.selectById(accessoryPartId);
    }
}
