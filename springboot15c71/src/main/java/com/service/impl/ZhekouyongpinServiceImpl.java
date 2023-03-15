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


import com.dao.ZhekouyongpinDao;
import com.entity.ZhekouyongpinEntity;
import com.service.ZhekouyongpinService;
import com.entity.vo.ZhekouyongpinVO;
import com.entity.view.ZhekouyongpinView;

@Service("zhekouyongpinService")
public class ZhekouyongpinServiceImpl extends ServiceImpl<ZhekouyongpinDao, ZhekouyongpinEntity> implements ZhekouyongpinService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhekouyongpinEntity> page = this.selectPage(
                new Query<ZhekouyongpinEntity>(params).getPage(),
                new EntityWrapper<ZhekouyongpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhekouyongpinEntity> wrapper) {
		  Page<ZhekouyongpinView> page =new Query<ZhekouyongpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhekouyongpinVO> selectListVO(Wrapper<ZhekouyongpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhekouyongpinVO selectVO(Wrapper<ZhekouyongpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhekouyongpinView> selectListView(Wrapper<ZhekouyongpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhekouyongpinView selectView(Wrapper<ZhekouyongpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
