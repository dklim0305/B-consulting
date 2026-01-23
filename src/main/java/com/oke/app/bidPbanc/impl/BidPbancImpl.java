package com.oke.app.bidPbanc.impl;

import com.oke.app.cmmn.dao.CmmnAbstractDao;
import com.oke.app.bidPbanc.BidPbancSvc;
import com.oke.app.bidPbanc.BidPbancVo;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

@Service("bidPbancSvc")
public class BidPbancImpl implements BidPbancSvc {

    @Resource(name="cmmnDao")
    CmmnAbstractDao dao;

    @Override
    public int retrieveBidPbancInfoListCnt(BidPbancVo bidPbancVo) {
        return dao.selectOne("bidPbanc.retrieveBidPbancInfoListCnt", bidPbancVo);
    }

    @Override
    public List<BidPbancVo> retrieveBidPbancInfoList(BidPbancVo bidPbancVo) {
        return dao.selectList("bidPbanc.retrieveBidPbancInfoList", bidPbancVo);
    }

    @Override
    public BidPbancVo retrieveBidPbancInfoDetail(BidPbancVo bidPbancVo) {
        return dao.selectOne("bidPbanc.retrieveBidPbancInfoDetail", bidPbancVo);
    }
}
