package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChongwuyongpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChongwuyongpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChongwuyongpinView;


/**
 * 商城手机
 *
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface ChongwuyongpinService extends IService<ChongwuyongpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwuyongpinVO> selectListVO(Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	ChongwuyongpinVO selectVO(@Param("ew") Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	List<ChongwuyongpinView> selectListView(Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	ChongwuyongpinView selectView(@Param("ew") Wrapper<ChongwuyongpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChongwuyongpinEntity> wrapper);
   	
}

