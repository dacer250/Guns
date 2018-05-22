package com.stylefeng.guns.modular.system.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.modular.system.constant.ClothingGender;
import com.stylefeng.guns.modular.system.constant.ClothingType;
import com.stylefeng.guns.modular.system.model.AccessoryPart;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.InchDesign;
import com.stylefeng.guns.modular.system.service.IInchDesignService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * InchDesign控制器
 *
 * @author fengshuonan
 * @Date 2018-05-22 15:49:57
 */
@Controller
@RequestMapping("/inchDesign")
public class InchDesignController extends BaseController {

    private String PREFIX = "/system/inchDesign/";

    @Autowired
    private IInchDesignService inchDesignService;

    /**
     * 跳转到InchDesign首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "inchDesign.html";
    }

    /**
     * 跳转到添加InchDesign
     */
    @RequestMapping("/inchDesign_add")
    public String inchDesignAdd() {
        return PREFIX + "inchDesign_add.html";
    }

    /**
     * 跳转到修改InchDesign
     */
    @RequestMapping("/inchDesign_update/{inchDesignId}")
    public String inchDesignUpdate(@PathVariable Integer inchDesignId, Model model) {
        InchDesign inchDesign = inchDesignService.selectById(inchDesignId);
        model.addAttribute("item",inchDesign);
        LogObjectHolder.me().set(inchDesign);
        return PREFIX + "inchDesign_edit.html";
    }

    /**
     * 获取InchDesign列表
     */
    @RequestMapping ( value = "/list", method = RequestMethod.GET )
    @ResponseBody
    @ApiOperation ( "尺寸定义列表" )
    public Object list(@ApiParam @RequestParam ( required = false ) ClothingGender gender,
                       @ApiParam @RequestParam ( required = false ) ClothingType type,
                       @ApiParam (value = "成衣key") @RequestParam ( required = false ) String clothingKey,
                       @ApiParam (value = "部位名称")@RequestParam ( required = false ) String name,
                       @ApiParam (value = "净尺寸key")@RequestParam ( required = false ) String netKey) {

        Map<String, String> map = new HashMap<>();

        if (gender != null)
            map.put("gender", gender.name());
        if (type != null)
            map.put("type", type.name());
        if (clothingKey != null)
            map.put("clothing_key", clothingKey);
        if (name != null)
            map.put("name", name);
        if (netKey != null)
            map.put("net_key", netKey);


        List<InchDesign> list = (List<InchDesign>) inchDesignService.list(map);
        return new BaseResponse<List<InchDesign>>(true, "", list);
    }


    /**
     * 新增bodyPart
     */
    @RequestMapping(value = "/add" ,method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation("新增配件")
    public Object add(@ApiParam @RequestBody InchDesign inchDesign) {
        if(inchDesign==null)
            return new BaseResponse<InchDesign>(false,"param is null",inchDesign);
        if(!StringUtils.isEmpty(inchDesign.getNetKey())  && !StringUtils.isEmpty(inchDesign.getClothingType()))
        {
            inchDesign.setClothingKey(inchDesign.getClothingType().toLowerCase()+"_"+inchDesign.getNetKey());
        }
        inchDesignService.insert(inchDesign);
        return new BaseResponse<InchDesign>(true,"success",inchDesign);
    }

    /**
     * 删除InchDesign
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer inchDesignId) {
        inchDesignService.deleteById(inchDesignId);
        return SUCCESS_TIP;
    }

    /**
     * 修改InchDesign
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(InchDesign inchDesign) {
        inchDesignService.updateById(inchDesign);
        return SUCCESS_TIP;
    }

    /**
     * InchDesign详情
     */
    @RequestMapping(value = "/detail/{inchDesignId}")
    @ResponseBody
    public Object detail(@PathVariable("inchDesignId") Integer inchDesignId) {
        return inchDesignService.selectById(inchDesignId);
    }
}
