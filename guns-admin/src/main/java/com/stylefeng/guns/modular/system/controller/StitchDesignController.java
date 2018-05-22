package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.constant.ClothingGender;
import com.stylefeng.guns.modular.system.constant.ClothingType;
import com.stylefeng.guns.modular.system.constant.StitchAttr;
import com.stylefeng.guns.modular.system.model.BodyPart;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.StitchDesign;
import com.stylefeng.guns.modular.system.service.IStitchDesignService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * StitchDesign控制器
 *
 * @author fengshuonan
 * @Date 2018-05-22 14:10:44
 */
@Controller
@RequestMapping("/stitchDesign")
public class StitchDesignController extends BaseController {

    private String PREFIX = "/system/stitchDesign/";

    @Autowired
    private IStitchDesignService stitchDesignService;

    /**
     * 跳转到StitchDesign首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "stitchDesign.html";
    }

    /**
     * 跳转到添加StitchDesign
     */
    @RequestMapping("/stitchDesign_add")
    public String stitchDesignAdd() {
        return PREFIX + "stitchDesign_add.html";
    }

    /**
     * 跳转到修改StitchDesign
     */
    @RequestMapping("/stitchDesign_update/{stitchDesignId}")
    public String stitchDesignUpdate(@PathVariable Integer stitchDesignId, Model model) {
        StitchDesign stitchDesign = stitchDesignService.selectById(stitchDesignId);
        model.addAttribute("item",stitchDesign);
        LogObjectHolder.me().set(stitchDesign);
        return PREFIX + "stitchDesign_edit.html";
    }

    /**
     * 获取StitchDesign列表
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation ("刺绣列表")
    public Object list(@RequestParam(required = false)ClothingGender gender,
                       @RequestParam(required = false)ClothingType type ,
                       @RequestParam(required = false)StitchAttr attr) {

        Map<String ,String> map =new HashMap<>();
        if(gender!=null)
            map.put("gender",gender.name());
        if(type!=null)
            map.put("type",type.name());
        if(attr!=null)
            map.put("attr",attr.name());
        List<StitchDesign> list=(List<StitchDesign>) stitchDesignService.list(map);
        //return bodyPartService.selectList(map);
        return new BaseResponse<List< StitchDesign >>(true, "", list);
    }


    /**
     * 新增bodyPart
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增部位")
    public Object add(@ApiParam @RequestBody StitchDesign stitchDesign) {
        stitchDesignService.insert(stitchDesign);
        return new BaseResponse<StitchDesign>(true,"success",stitchDesign);
    }

    /**
     * 删除StitchDesign
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer stitchDesignId) {
        stitchDesignService.deleteById(stitchDesignId);
        return SUCCESS_TIP;
    }

    /**
     * 修改StitchDesign
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(StitchDesign stitchDesign) {
        stitchDesignService.updateById(stitchDesign);
        return SUCCESS_TIP;
    }

    /**
     * StitchDesign详情
     */
    @RequestMapping(value = "/detail/{stitchDesignId}")
    @ResponseBody
    public Object detail(@PathVariable("stitchDesignId") Integer stitchDesignId) {
        return stitchDesignService.selectById(stitchDesignId);
    }
}
