package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusszhekouyongpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusszhekouyongpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusszhekouyongpinView;


/**
 * 秒杀手机评论表
 *
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface DiscusszhekouyongpinService extends IService<DiscusszhekouyongpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusszhekouyongpinVO> selectListVO(Wrapper<DiscusszhekouyongpinEntity> wrapper);
   	
   	DiscusszhekouyongpinVO selectVO(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
   	
   	List<DiscusszhekouyongpinView> selectListView(Wrapper<DiscusszhekouyongpinEntity> wrapper);
   	
   	DiscusszhekouyongpinView selectView(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusszhekouyongpinEntity> wrapper);
   	
}

