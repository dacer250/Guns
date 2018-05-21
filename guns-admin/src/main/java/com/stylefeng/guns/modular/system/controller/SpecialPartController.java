package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.constant.BodyPosition;
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
import com.stylefeng.guns.modular.system.model.SpecialPart;
import com.stylefeng.guns.modular.system.service.ISpecialPartService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * SpecialPart控制器
 *
 * @author fengshuonan
 * @Date 2018-05-21 22:12:24
 */
@Controller
@RequestMapping("/specialPart")
public class SpecialPartController extends BaseController {

    private String PREFIX = "/system/specialPart/";

    @Autowired
    private ISpecialPartService specialPartService;

    /**
     * 跳转到SpecialPart首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "specialPart.html";
    }

    /**
     * 跳转到添加SpecialPart
     */
    @RequestMapping("/specialPart_add")
    public String specialPartAdd() {
        return PREFIX + "specialPart_add.html";
    }

    /**
     * 跳转到修改SpecialPart
     */
    @RequestMapping("/specialPart_update/{specialPartId}")
    public String specialPartUpdate(@PathVariable Integer specialPartId, Model model) {
        SpecialPart specialPart = specialPartService.selectById(specialPartId);
        model.addAttribute("item",specialPart);
        LogObjectHolder.me().set(specialPart);
        return PREFIX + "specialPart_edit.html";
    }

    /**
     * 获取SpecialPart列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation("特体列表")
    public Object list(@RequestParam(required = false)ClothingGender gender,
                       @RequestParam(required = false)BodyPosition bodyPosition ) {

        Map<String ,String> map =new HashMap<>();
        if(gender!=null)
            map.put("gender",gender.name());
        if(bodyPosition!=null)
            map.put("position",bodyPosition.name());
        List<SpecialPart> list=(List<SpecialPart>) specialPartService.list(map);
        //return bodyPartService.selectList(map);
        return new BaseResponse<List< SpecialPart >>(true, "", list);
    }
    /**
     * 新增SpecialPart
     */

    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增特体")
    public Object add(@ApiParam @RequestBody SpecialPart specialPart) {
        specialPartService.insert(specialPart);
        return new BaseResponse<SpecialPart>(true,"success",specialPart);
    }

    /**
     * 删除SpecialPart
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer specialPartId) {
        specialPartService.deleteById(specialPartId);
        return SUCCESS_TIP;
    }

    /**
     * 修改SpecialPart
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(SpecialPart specialPart) {
        specialPartService.updateById(specialPart);
        return SUCCESS_TIP;
    }

    /**
     * SpecialPart详情
     */
    @RequestMapping(value = "/detail/{specialPartId}")
    @ResponseBody
    public Object detail(@PathVariable("specialPartId") Integer specialPartId) {
        return specialPartService.selectById(specialPartId);
    }
}
