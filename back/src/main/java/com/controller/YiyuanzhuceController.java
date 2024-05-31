package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YiyuanzhuceEntity;
import com.entity.view.YiyuanzhuceView;

import com.service.YiyuanzhuceService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 医院注册
 * 后端接口
 * @author 
 * @email 
 * @date 2021-04-20 11:48:28
 */
@RestController
@RequestMapping("/yiyuanzhuce")
public class YiyuanzhuceController {
    @Autowired
    private YiyuanzhuceService yiyuanzhuceService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YiyuanzhuceEntity yiyuanzhuce,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			yiyuanzhuce.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YiyuanzhuceEntity> ew = new EntityWrapper<YiyuanzhuceEntity>();
		PageUtils page = yiyuanzhuceService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yiyuanzhuce), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YiyuanzhuceEntity yiyuanzhuce, HttpServletRequest request){
        EntityWrapper<YiyuanzhuceEntity> ew = new EntityWrapper<YiyuanzhuceEntity>();
		PageUtils page = yiyuanzhuceService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yiyuanzhuce), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YiyuanzhuceEntity yiyuanzhuce){
       	EntityWrapper<YiyuanzhuceEntity> ew = new EntityWrapper<YiyuanzhuceEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yiyuanzhuce, "yiyuanzhuce")); 
        return R.ok().put("data", yiyuanzhuceService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YiyuanzhuceEntity yiyuanzhuce){
        EntityWrapper< YiyuanzhuceEntity> ew = new EntityWrapper< YiyuanzhuceEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yiyuanzhuce, "yiyuanzhuce")); 
		YiyuanzhuceView yiyuanzhuceView =  yiyuanzhuceService.selectView(ew);
		return R.ok("查询医院注册成功").put("data", yiyuanzhuceView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YiyuanzhuceEntity yiyuanzhuce = yiyuanzhuceService.selectById(id);
        return R.ok().put("data", yiyuanzhuce);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YiyuanzhuceEntity yiyuanzhuce = yiyuanzhuceService.selectById(id);
        return R.ok().put("data", yiyuanzhuce);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YiyuanzhuceEntity yiyuanzhuce, HttpServletRequest request){
    	yiyuanzhuce.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yiyuanzhuce);
        yiyuanzhuceService.insert(yiyuanzhuce);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YiyuanzhuceEntity yiyuanzhuce, HttpServletRequest request){
    	yiyuanzhuce.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yiyuanzhuce);
        yiyuanzhuceService.insert(yiyuanzhuce);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YiyuanzhuceEntity yiyuanzhuce, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yiyuanzhuce);
        yiyuanzhuceService.updateById(yiyuanzhuce);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yiyuanzhuceService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YiyuanzhuceEntity> wrapper = new EntityWrapper<YiyuanzhuceEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = yiyuanzhuceService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
