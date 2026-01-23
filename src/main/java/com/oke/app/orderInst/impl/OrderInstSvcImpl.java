package com.oke.app.orderInst.impl;

import com.oke.app.bidPbanc.BidPbancVo;
import com.oke.app.cmmn.dao.CmmnAbstractDao;
import com.oke.app.orderInst.OrderInstSvc;
import com.oke.app.orderInst.OrderInstVo;
import org.egovframe.rte.fdl.access.service.impl.EgovAccessServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("orderInstSvc")
public class OrderInstSvcImpl extends EgovAccessServiceImpl implements OrderInstSvc {

    @Resource(name="cmmnDao")
    CmmnAbstractDao dao;

    @Override
    public int retrieveOrderInstListCnt(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveOrderInstListCnt", orderInstVo);
    }

    @Override
    public List<OrderInstVo> retrieveOrderInstList(OrderInstVo orderInstVo) {
        return dao.selectList("orderInst.retrieveOrderInstList", orderInstVo);
    }

    @Override
    public List<OrderInstVo> retrieveOrderInstClsf() {
        return dao.selectList("orderInst.retrieveOrderInstClsf");
    }

    @Override
    public OrderInstVo retrieveOrderInstDetail(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveOrderInstDetail", orderInstVo);
    }

    @Override
    public int retrieveOrderPbancListCnt(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveOrderPbancListCnt", orderInstVo);
    }

    @Override
    public List<BidPbancVo> retrieveOrderPbancList(OrderInstVo orderInstVo) {
        return dao.selectList("orderInst.retrieveOrderPbancList", orderInstVo);
    }
}
