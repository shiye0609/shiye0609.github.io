package com.entity.view;

import com.entity.DiscusszhekouyongpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 秒杀手机评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
@TableName("discusszhekouyongpin")
public class DiscusszhekouyongpinView  extends DiscusszhekouyongpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusszhekouyongpinView(){
	}
 
 	public DiscusszhekouyongpinView(DiscusszhekouyongpinEntity discusszhekouyongpinEntity){
 	try {
			BeanUtils.copyProperties(this, discusszhekouyongpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
