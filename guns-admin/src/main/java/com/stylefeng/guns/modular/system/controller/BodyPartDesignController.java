package com.stylefeng.guns.modular.system.controller;

import com.fasterxml.jackson.databind.deser.Deserializers;
import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.BodyPartDesign;
import com.stylefeng.guns.modular.system.service.IBodyPartDesignService;

import java.util.List;

/**
 * BodyPartDesign控制器
 *
 * @author fengshuonan
 * @Date 2018-05-21 21:50:16
 */
@Controller
@RequestMapping("/bodyPartDesign")
public class BodyPartDesignController extends BaseController {

    private String PREFIX = "/system/bodyPartDesign/";

    @Autowired
    private IBodyPartDesignService bodyPartDesignService;

    /**
     * 跳转到BodyPartDesign首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "bodyPartDesign.html";
    }

    /**
     * 跳转到添加BodyPartDesign
     */
    @RequestMapping("/bodyPartDesign_add")
    public String bodyPartDesignAdd() {
        return PREFIX + "bodyPartDesign_add.html";
    }

    /**
     * 跳转到修改BodyPartDesign
     */
    @RequestMapping("/bodyPartDesign_update/{bodyPartDesignId}")
    public String bodyPartDesignUpdate(@PathVariable Integer bodyPartDesignId, Model model) {
        BodyPartDesign bodyPartDesign = bodyPartDesignService.selectById(bodyPartDesignId);
        model.addAttribute("item",bodyPartDesign);
        LogObjectHolder.me().set(bodyPartDesign);
        return PREFIX + "bodyPartDesign_edit.html";
    }

    /**
     * 获取BodyPartDesign列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation("部位-款式选择列表")
    public Object list(@ApiParam @RequestParam(required = false)Integer bodyPartId) {

        List<BodyPartDesign> list= (List<BodyPartDesign>) bodyPartDesignService.list(bodyPartId);
        return new BaseResponse<List<BodyPartDesign>>(true,"success",list);
    }

    /**
     * 新增BodyPartDesign
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("部位-款式新增")
    public Object add(@ApiParam @RequestBody BodyPartDesign bodyPartDesign) {
        bodyPartDesignService.insert(bodyPartDesign);
        return new BaseResponse<BodyPartDesign>(true,"success",bodyPartDesign);
    }

    /**
     * 删除BodyPartDesign
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer bodyPartDesignId) {
        bodyPartDesignService.deleteById(bodyPartDesignId);
        return SUCCESS_TIP;
    }

    /**
     * 修改BodyPartDesign
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(BodyPartDesign bodyPartDesign) {
        bodyPartDesignService.updateById(bodyPartDesign);
        return SUCCESS_TIP;
    }

    /**
     * BodyPartDesign详情
     */
    @RequestMapping(value = "/detail/{bodyPartDesignId}")
    @ResponseBody
    public Object detail(@PathVariable("bodyPartDesignId") Integer bodyPartDesignId) {
        return bodyPartDesignService.selectById(bodyPartDesignId);
    }
}
