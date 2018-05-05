package com.stylefeng.guns.system;

import com.stylefeng.guns.base.BaseJunit;
import com.stylefeng.guns.core.shiro.ShiroKit;
import com.stylefeng.guns.modular.system.dao.UserMapper;
import com.stylefeng.guns.modular.system.model.User;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * 用户测试
 *
 * @author fengshuonan
 * @date 2017-04-27 17:05
 */
public class UserTest extends BaseJunit {

   /* @Resource
    UserMapper userMapper;*/

    @Test
    public void userTest() throws Exception {
        System.out.println("fuck");
        User user =new User();
        user.setSalt("abce");
        String newMd5 = ShiroKit.md5("123456", user.getSalt());
        System.out.println(newMd5);
    }

}
