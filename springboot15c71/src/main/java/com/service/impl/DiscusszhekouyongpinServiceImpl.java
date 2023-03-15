package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscusszhekouyongpinDao;
import com.entity.DiscusszhekouyongpinEntity;
import com.service.DiscusszhekouyongpinService;
import com.entity.vo.DiscusszhekouyongpinVO;
import com.entity.view.DiscusszhekouyongpinView;

@Service("discusszhekouyongpinService")
public class DiscusszhekouyongpinServiceImpl extends ServiceImpl<DiscusszhekouyongpinDao, DiscusszhekouyongpinEntity> implements DiscusszhekouyongpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusszhekouyongpinEntity> page = this.selectPage(
                new Query<DiscusszhekouyongpinEntity>(params).getPage(),
                new EntityWrapper<DiscusszhekouyongpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusszhekouyongpinEntity> wrapper) {
		  Page<DiscusszhekouyongpinView> page =new Query<DiscusszhekouyongpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusszhekouyongpinVO> selectListVO(Wrapper<DiscusszhekouyongpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusszhekouyongpinVO selectVO(Wrapper<DiscusszhekouyongpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusszhekouyongpinView> selectListView(Wrapper<DiscusszhekouyongpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusszhekouyongpinView selectView(Wrapper<DiscusszhekouyongpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
