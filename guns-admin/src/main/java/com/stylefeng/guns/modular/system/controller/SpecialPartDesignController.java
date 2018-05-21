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
import com.stylefeng.guns.modular.system.model.SpecialPartDesign;
import com.stylefeng.guns.modular.system.service.ISpecialPartDesignService;

import java.util.List;

/**
 * SpecialPartDesign控制器
 *
 * @author fengshuonan
 * @Date 2018-05-21 22:12:40
 */
@Controller
@RequestMapping("/specialPartDesign")
public class SpecialPartDesignController extends BaseController {

    private String PREFIX = "/system/specialPartDesign/";

    @Autowired
    private ISpecialPartDesignService specialPartDesignService;

    /**
     * 跳转到SpecialPartDesign首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "specialPartDesign.html";
    }

    /**
     * 跳转到添加SpecialPartDesign
     */
    @RequestMapping("/specialPartDesign_add")
    public String specialPartDesignAdd() {
        return PREFIX + "specialPartDesign_add.html";
    }

    /**
     * 跳转到修改SpecialPartDesign
     */
    @RequestMapping("/specialPartDesign_update/{specialPartDesignId}")
    public String specialPartDesignUpdate(@PathVariable Integer specialPartDesignId, Model model) {
        SpecialPartDesign specialPartDesign = specialPartDesignService.selectById(specialPartDesignId);
        model.addAttribute("item",specialPartDesign);
        LogObjectHolder.me().set(specialPartDesign);
        return PREFIX + "specialPartDesign_edit.html";
    }

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation("部位-款式选择列表")
    public Object list(@ApiParam @RequestParam(required = false)Integer bodyPartId) {

        List<SpecialPartDesign> list= (List<SpecialPartDesign>) specialPartDesignService.list(bodyPartId);
        return new BaseResponse<List<SpecialPartDesign>>(true,"success",list);
    }

    /**
     * 新增BodyPartDesign
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("部位-款式新增")
    public Object add(@ApiParam @RequestBody SpecialPartDesign specialPartDesign) {
        specialPartDesignService.insert(specialPartDesign);
        return new BaseResponse<SpecialPartDesign>(true,"success",specialPartDesign);
    }

    /**
     * 删除SpecialPartDesign
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer specialPartDesignId) {
        specialPartDesignService.deleteById(specialPartDesignId);
        return SUCCESS_TIP;
    }

    /**
     * 修改SpecialPartDesign
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(SpecialPartDesign specialPartDesign) {
        specialPartDesignService.updateById(specialPartDesign);
        return SUCCESS_TIP;
    }

    /**
     * SpecialPartDesign详情
     */
    @RequestMapping(value = "/detail/{specialPartDesignId}")
    @ResponseBody
    public Object detail(@PathVariable("specialPartDesignId") Integer specialPartDesignId) {
        return specialPartDesignService.selectById(specialPartDesignId);
    }
}
