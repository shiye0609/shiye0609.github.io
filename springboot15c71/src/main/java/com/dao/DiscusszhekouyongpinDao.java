package com.dao;

import com.entity.DiscusszhekouyongpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusszhekouyongpinVO;
import com.entity.view.DiscusszhekouyongpinView;


/**
 * 秒杀手机评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface DiscusszhekouyongpinDao extends BaseMapper<DiscusszhekouyongpinEntity> {
	
	List<DiscusszhekouyongpinVO> selectListVO(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
	
	DiscusszhekouyongpinVO selectVO(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
	
	List<DiscusszhekouyongpinView> selectListView(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);

	List<DiscusszhekouyongpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
	
	DiscusszhekouyongpinView selectView(@Param("ew") Wrapper<DiscusszhekouyongpinEntity> wrapper);
	
}
