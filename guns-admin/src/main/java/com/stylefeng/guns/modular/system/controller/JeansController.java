package com.stylefeng.guns.modular.system.controller;

import com.alibaba.fastjson.JSON;
import com.stylefeng.guns.config.properties.EstWaveConfig;
import com.stylefeng.guns.config.properties.GunsProperties;
import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.core.base.tips.Tip;
import com.stylefeng.guns.core.common.annotion.BussinessLog;
import com.stylefeng.guns.core.common.annotion.Permission;
import com.stylefeng.guns.core.common.constant.Const;
import com.stylefeng.guns.core.common.constant.dictmap.UserDict;
import com.stylefeng.guns.core.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.core.common.constant.state.ManagerStatus;
import com.stylefeng.guns.core.common.exception.BizExceptionEnum;
import com.stylefeng.guns.core.datascope.DataScope;
import com.stylefeng.guns.core.db.Db;
import com.stylefeng.guns.core.exception.GunsException;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.core.shiro.ShiroKit;
import com.stylefeng.guns.core.shiro.ShiroUser;
import com.stylefeng.guns.core.util.BigDecimalUtil;
import com.stylefeng.guns.core.util.ToolUtil;
import com.stylefeng.guns.modular.system.constant.DressType;
import com.stylefeng.guns.modular.system.dao.UserMapper;
import com.stylefeng.guns.modular.system.factory.UserFactory;
import com.stylefeng.guns.modular.system.model.EstJean;
import com.stylefeng.guns.modular.system.model.Spitem;
import com.stylefeng.guns.modular.system.model.Standard;
import com.stylefeng.guns.modular.system.model.User;
import com.stylefeng.guns.modular.system.service.IStandardService;
import com.stylefeng.guns.modular.system.service.IUserService;
import com.stylefeng.guns.modular.system.transfer.UserDto;
import com.stylefeng.guns.modular.system.warpper.BaseResponse;
import com.stylefeng.guns.modular.system.warpper.UserWarpper;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.naming.NoPermissionException;
import javax.validation.Valid;
import java.io.File;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * 牛仔裤
 *
 * @Date 2017年1月11日 下午1:08:17
 */
@Controller
@RequestMapping("/api/v1/jeans")
@CrossOrigin
public class JeansController extends BaseController {


    @Autowired
    private IStandardService standardService;


    @PostMapping("/getJeansChoices")
    @ResponseBody
    @ApiOperation("上传客户基础数据/cm,kg，获取待选的型号列表")
    public Object getJeansChoices(@RequestParam BigDecimal height,
                                  @RequestParam BigDecimal weight,
                                  @RequestParam(required = false) Integer male,
                                  @RequestParam(required = false) DressType dressType) {

        BigDecimal h = new BigDecimal(BigDecimalUtil.toInt(height));
        BigDecimal w = new BigDecimal(BigDecimalUtil.toInt(weight));
        if (male == null)
            male = 1;
        Standard st = standardService.getStandardByHW(h, w, male);
        logParam("standard", st);
        if (st == null)
            return new BaseResponse<Standard>(false, "未找到标准尺寸", st);
        //只上传身高体重，则返回标准数据
        EstJean ej = standardService.estByStandard(st);
        if (dressType == null)
            dressType = DressType.Standard;
        standardService.adjustByDresstype(ej, dressType);
        standardService.adjustByExprience(ej);
        logParam("EstJean", ej);

        List<Spitem> itemList = standardService.findSpitemList();
        logParam("waiting list", itemList);
        List<Spitem> choiceList = standardService.scoresTop3(itemList, ej);
        logParam("choiceList ", choiceList);
        return new BaseResponse<List<Spitem>>(true, "", choiceList);
    }

    @PostMapping("/getEstJeans")
    @ResponseBody
    @ApiOperation("上传客户基础数据/cm,kg，获得预估尺寸")
    public Object upload(@RequestParam BigDecimal height,
                         @RequestParam BigDecimal weight,
                         @RequestParam(required = false) @ApiParam(value = "0:女，1:男") Integer gender,
                         @RequestParam(required = false) DressType dressType) {
        BigDecimal h = new BigDecimal(BigDecimalUtil.toInt(height));
        BigDecimal w = new BigDecimal(BigDecimalUtil.toInt(weight));
        if (gender == null)
            gender = 1;
        Standard st = standardService.getStandardByHW(h, w, gender);
        if (st == null)
            return new BaseResponse<Standard>(false, "未找到标准尺寸", st);
        logParam("standard", st);
        //只上传身高体重，则返回标准数据
        EstJean ej = standardService.estByStandard(st);
        if (dressType == null)
            dressType = DressType.Standard;
        standardService.adjustByDresstype(ej, dressType);

        standardService.adjustByExprience(ej);
        logParam("EstJean", ej);
        return new BaseResponse<EstJean>(true, "", ej);

    }
}
