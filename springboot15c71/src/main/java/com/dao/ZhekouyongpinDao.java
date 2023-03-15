package com.dao;

import com.entity.ZhekouyongpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhekouyongpinVO;
import com.entity.view.ZhekouyongpinView;


/**
 * 秒杀手机
 * 
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface ZhekouyongpinDao extends BaseMapper<ZhekouyongpinEntity> {
	
	List<ZhekouyongpinVO> selectListVO(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
	
	ZhekouyongpinVO selectVO(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
	
	List<ZhekouyongpinView> selectListView(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);

	List<ZhekouyongpinView> selectListView(Pagination page,@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
	
	ZhekouyongpinView selectView(@Param("ew") Wrapper<ZhekouyongpinEntity> wrapper);
	
}
