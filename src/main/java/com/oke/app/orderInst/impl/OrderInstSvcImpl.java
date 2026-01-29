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
    public List<OrderInstVo> retrieveOrderInstLctn(OrderInstVo orderInstVo) {
        return dao.selectList("orderInst.retrieveOrderInstLctn");
    }

    @Override
    public OrderInstVo retrieveOrderInstDetail(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveOrderInstDetail", orderInstVo);
    }

    @Override
    public int retrieveOrderPbancListCnt(BidPbancVo bidPbancVo) {
        return dao.selectOne("orderInst.retrieveOrderPbancListCnt", bidPbancVo);
    }

    @Override
    public List<BidPbancVo> retrieveOrderPbancList(BidPbancVo bidPbancVo) {
        return dao.selectList("orderInst.retrieveOrderPbancList", bidPbancVo);
    }

    @Override
    public int retrieveBidPtcpEntListCnt(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveBidPtcpEntListCnt", orderInstVo);
    }

    @Override
    public List<BidPbancVo> retrieveBidPtcpEntList(OrderInstVo orderInstVo) {
        return dao.selectList("orderInst.retrieveBidPtcpEntList", orderInstVo);
    }

    @Override
    public int retrieveSucsfEntListCnt(OrderInstVo orderInstVo) {
        return dao.selectOne("orderInst.retrieveSucsfEntListCnt", orderInstVo);
    }

    @Override
    public List<BidPbancVo> retrieveSucsfEntList(OrderInstVo orderInstVo) {
        return dao.selectList("orderInst.retrieveSucsfEntList", orderInstVo);
    }
}
