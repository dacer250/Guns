package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.constant.ClothingGender;
import com.stylefeng.guns.modular.system.constant.ClothingType;
import com.stylefeng.guns.modular.system.model.Spitem;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.service.IBodyPartService;
import org.springframework.web.context.annotation.RequestScope;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * bodyPart控制器
 *
 * @author fengshuonan
 * @Date 2018-05-21 20:56:00
 */
@Controller
@RequestMapping("/bodyPart")
public class BodyPartController extends BaseController {

    private String PREFIX = "/system/bodyPart/";

    @Autowired
    private IBodyPartService bodyPartService;

    /**
     * 跳转到bodyPart首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "bodyPart.html";
    }

    /**
     * 跳转到添加bodyPart
     */
    @RequestMapping("/bodyPart_add")
    public String bodyPartAdd() {
        return PREFIX + "bodyPart_add.html";
    }

    /**
     * 跳转到修改bodyPart
     */
    @RequestMapping("/bodyPart_update/{bodyPartId}")
    public String bodyPartUpdate(@PathVariable Integer bodyPartId, Model model) {
        BodyPart bodyPart = bodyPartService.selectById(bodyPartId);
        model.addAttribute("item",bodyPart);
        LogObjectHolder.me().set(bodyPart);
        return PREFIX + "bodyPart_edit.html";
    }

    /**
     * 获取bodyPart列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation("部位列表")
    public Object list(@RequestParam(required = false)ClothingGender gender,
                       @RequestParam(required = false)ClothingType type ,
                       @RequestParam(required = false)String ownerId) {

        Map<String ,String> map =new HashMap<>();
        if(gender!=null)
            map.put("gender",gender.name());
        if(type!=null)
            map.put("type",type.name());
        if(!StringUtils.isEmpty(ownerId))
            map.put("ownerId",ownerId);
         List<BodyPart> list=(List<BodyPart>) bodyPartService.list(map);
        return new BaseResponse<List< BodyPart >>(true, "", list);
    }


    /**
     * 新增bodyPart
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增部位")
    public Object add(@ApiParam @RequestBody BodyPart bodyPart) {
        bodyPartService.insert(bodyPart);
        return new BaseResponse<BodyPart>(true,"success",bodyPart);
    }

    /**
     * 删除bodyPart
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer bodyPartId) {
        bodyPartService.deleteById(bodyPartId);
        return SUCCESS_TIP;
    }

    /**
     * 修改bodyPart
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(BodyPart bodyPart) {
        bodyPartService.updateById(bodyPart);
        return SUCCESS_TIP;
    }

    /**
     * bodyPart详情
     */
    @RequestMapping(value = "/detail/{bodyPartId}")
    @ResponseBody
    public Object detail(@PathVariable("bodyPartId") Integer bodyPartId) {
        return bodyPartService.selectById(bodyPartId);
    }
}
