package com.oke.app.bidEnt.impl;

import com.oke.app.bidEnt.BidEntSvc;
import com.oke.app.bidEnt.BidEntVo;
import com.oke.app.cmmn.dao.CmmnAbstractDao;
import org.egovframe.rte.fdl.access.service.impl.EgovAccessServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("bidEntSvc")
public class BidEntSvcImpl extends EgovAccessServiceImpl implements BidEntSvc {

    @Resource(name="cmmnDao")
    CmmnAbstractDao dao;

    @Override
    public int retrieveBidEntListCnt(BidEntVo bidEntVo) {
        return dao.selectOne("bidEnt.retrieveBidEntListCnt", bidEntVo);
    }

    @Override
    public List<BidEntVo> retrieveBidEntList(BidEntVo bidEntVo) {
        return dao.selectList("bidEnt.retrieveBidEntList", bidEntVo);
    }

    @Override
    public BidEntVo retrieveBidEntDetail(BidEntVo bidEntVo) {
        return dao.selectOne("bidEnt.retrieveBidEntDetail", bidEntVo);
    }
}
