package com.entity.view;

import com.entity.RenwutijiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 任务提交
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-11 21:52:37
 */
@TableName("renwutijiao")
public class RenwutijiaoView  extends RenwutijiaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RenwutijiaoView(){
	}
 
 	public RenwutijiaoView(RenwutijiaoEntity renwutijiaoEntity){
 	try {
			BeanUtils.copyProperties(this, renwutijiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
