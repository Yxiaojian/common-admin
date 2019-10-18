package com.xieke.admin.web;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xieke.admin.annotation.SysLog;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.dto.UserInfo;
import com.xieke.admin.entity.User;
import com.xieke.admin.service.IUserService;
import com.xieke.admin.util.PasswordEncoder;
import com.xieke.admin.util.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 系统用户表 前端控制器
 * </p>
 *
 * @author Auto Generator
 * @since 2018-07-10
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

    @Resource
    private IUserService iUserService;

    @RequestMapping("/*")
    public void toHtml(){

    }

    @RequestMapping("/unlock")
    @ResponseBody
    public ResultInfo<Boolean> unlock(@RequestParam("password") String password){
        UserInfo userInfo = this.getUserInfo();
        SimpleHash simpleHash = new SimpleHash("md5", password, userInfo.getCredentialsSalt(), 2);
        if (simpleHash.toString().equals(userInfo.getPassWord())){
            return new ResultInfo<>(true);
        }
        return new ResultInfo<>(false);
    }

    @RequestMapping("/listData")
    @RequiresPermissions("user:view")
    public @ResponseBody
    ResultInfo<List<User>> listData(User user, Integer page, Integer limit){
        QueryWrapper<User> wrapper = new QueryWrapper<>(user);
        if(user!=null&&user.getUserName()!=null){
            wrapper.like("user_name", user.getUserName());
            user.setUserName(null);
        }
        if(user!=null&&user.getName()!=null){
            wrapper.like("name",user.getName());
            user.setName(null);
        }
        IPage<User> pageObj = iUserService.page(new Page<>(page,limit), wrapper);
        return new ResultInfo<>(pageObj.getRecords(), (int)pageObj.getTotal());
    }

    @SysLog("添加用户操作")
    @RequestMapping("/add")
    @RequiresPermissions("user:add")
    public @ResponseBody
    ResultInfo<Boolean> add(User user){
        Map<String, String> map = PasswordEncoder.enCodePassWord(user.getUserName(), user.getPassWord());
        user.setSalt(map.get(PasswordEncoder.SALT));
        user.setPassWord(map.get(PasswordEncoder.PASSWORD));
        boolean b = iUserService.save(user);
        return new ResultInfo<>(b);
    }

    @SysLog("删除用户操作")
    @RequestMapping("/delBatch")
    @RequiresPermissions("user:del")
    public @ResponseBody
    ResultInfo<Boolean> delBatch(Integer[] idArr){
        boolean b = iUserService.removeByIds(Arrays.asList(idArr));
        return new ResultInfo<>(b);
    }

    @SysLog("修改用户操作")
    @RequestMapping("/edit")
    @RequiresPermissions("user:edit")
    public @ResponseBody
    ResultInfo<Boolean> edit(User user){
        User us = iUserService.getById(user.getId());
        us.setName(user.getName());
        us.setRoleId(user.getRoleId());
        us.setState(user.getState());
        boolean b = iUserService.updateById(us);
        return new ResultInfo<>(b);
    }

    @SysLog("本人修改用户操作")
    @RequestMapping("/userEdit")
    public @ResponseBody
    ResultInfo<Boolean> userEdit(User user){
        UserInfo userInfo = this.getUserInfo();
        User us = iUserService.getById(userInfo.getId());
        if(!StringUtils.isEmpty(user.getName())){
            us.setName(user.getName());
        }
        if(!StringUtils.isEmpty(user.getPassWord())){
            Map<String, String> map = PasswordEncoder.enCodePassWord(us.getUserName(),user.getPassWord());
            us.setSalt(map.get(PasswordEncoder.SALT));
            us.setPassWord(map.get(PasswordEncoder.PASSWORD));
        }
        boolean b = iUserService.updateById(us);
        return new ResultInfo<>(b);
    }

    @RequestMapping("/centerDate")
    public @ResponseBody
    ResultInfo<UserInfo> centerDate(){
        UserInfo userInfo = this.getUserInfo();
        BeanUtils.copyProperties(iUserService.getById(userInfo.getId()),userInfo);
        return new ResultInfo<>(userInfo);
    }

    @RequestMapping("/count")
    public @ResponseBody
    ResultInfo<Integer> count(){
        return new ResultInfo<>(iUserService.count(new QueryWrapper<>()));
    }


    @RequestMapping("/selectListData")
    @ResponseBody
    public ResultInfo<List<User>> selectListData(User user){
        QueryWrapper<User> wrapper = new QueryWrapper<>(user);
        List<User> list = iUserService.list(wrapper);
        return new ResultInfo<>(list);
    }

}