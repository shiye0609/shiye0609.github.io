package com.dao;

import com.entity.DiscusschongwuyongpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschongwuyongpinVO;
import com.entity.view.DiscusschongwuyongpinView;


/**
 * 商城手机评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-07 14:45:52
 */
public interface DiscusschongwuyongpinDao extends BaseMapper<DiscusschongwuyongpinEntity> {
	
	List<DiscusschongwuyongpinVO> selectListVO(@Param("ew") Wrapper<DiscusschongwuyongpinEntity> wrapper);
	
	DiscusschongwuyongpinVO selectVO(@Param("ew") Wrapper<DiscusschongwuyongpinEntity> wrapper);
	
	List<DiscusschongwuyongpinView> selectListView(@Param("ew") Wrapper<DiscusschongwuyongpinEntity> wrapper);

	List<DiscusschongwuyongpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschongwuyongpinEntity> wrapper);
	
	DiscusschongwuyongpinView selectView(@Param("ew") Wrapper<DiscusschongwuyongpinEntity> wrapper);
	
}
