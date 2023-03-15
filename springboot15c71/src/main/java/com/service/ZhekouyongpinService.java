package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhekouyongpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhekouyongpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhekouyongpinView;


/**
 * 秒杀手机
 *
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface ZhekouyongpinService extends IService<ZhekouyongpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhekouyongpinVO> selectListVO(Wrapper<ZhekouyongpinEntity> wrapper);
   	
   	ZhekouyongpinVO selectVO(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
   	
   	List<ZhekouyongpinView> selectListView(Wrapper<ZhekouyongpinEntity> wrapper);
   	
   	ZhekouyongpinView selectView(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhekouyongpinEntity> wrapper);
   	
}

