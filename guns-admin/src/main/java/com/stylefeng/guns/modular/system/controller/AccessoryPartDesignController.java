package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.model.BodyPartDesign;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.AccessoryPartDesign;
import com.stylefeng.guns.modular.system.service.IAccessoryPartDesignService;

import java.util.List;

/**
 * AccessoryPartDesign控制器
 *
 * @author fengshuonan
 * @Date 2018-05-22 13:55:32
 */
@Controller
@RequestMapping("/accessoryPartDesign")
public class AccessoryPartDesignController extends BaseController {

    private String PREFIX = "/system/accessoryPartDesign/";

    @Autowired
    private IAccessoryPartDesignService accessoryPartDesignService;

    /**
     * 跳转到AccessoryPartDesign首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "accessoryPartDesign.html";
    }

    /**
     * 跳转到添加AccessoryPartDesign
     */
    @RequestMapping("/accessoryPartDesign_add")
    public String accessoryPartDesignAdd() {
        return PREFIX + "accessoryPartDesign_add.html";
    }

    /**
     * 跳转到修改AccessoryPartDesign
     */
    @RequestMapping("/accessoryPartDesign_update/{accessoryPartDesignId}")
    public String accessoryPartDesignUpdate(@PathVariable Integer accessoryPartDesignId, Model model) {
        AccessoryPartDesign accessoryPartDesign = accessoryPartDesignService.selectById(accessoryPartDesignId);
        model.addAttribute("item",accessoryPartDesign);
        LogObjectHolder.me().set(accessoryPartDesign);
        return PREFIX + "accessoryPartDesign_edit.html";
    }

    /**
     * 获取AccessoryPartDesign列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation ("部位-款式选择列表")
    public Object list(@ApiParam @RequestParam(required = false)Integer accessoryPartId) {

        List<AccessoryPartDesign> list= (List<AccessoryPartDesign>) accessoryPartDesignService.list(accessoryPartId);
        return new BaseResponse<List<AccessoryPartDesign>>(true,"success",list);
    }

    /**
     * 新增BodyPartDesign
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("部位-款式新增")
    public Object add(@ApiParam @RequestBody AccessoryPartDesign accessoryPartDesign) {
        accessoryPartDesignService.insert(accessoryPartDesign);
        return new BaseResponse<AccessoryPartDesign>(true,"success",accessoryPartDesign);
    }

    /**
     * 删除AccessoryPartDesign
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer accessoryPartDesignId) {
        accessoryPartDesignService.deleteById(accessoryPartDesignId);
        return SUCCESS_TIP;
    }

    /**
     * 修改AccessoryPartDesign
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(AccessoryPartDesign accessoryPartDesign) {
        accessoryPartDesignService.updateById(accessoryPartDesign);
        return SUCCESS_TIP;
    }

    /**
     * AccessoryPartDesign详情
     */
    @RequestMapping(value = "/detail/{accessoryPartDesignId}")
    @ResponseBody
    public Object detail(@PathVariable("accessoryPartDesignId") Integer accessoryPartDesignId) {
        return accessoryPartDesignService.selectById(accessoryPartDesignId);
    }
}
