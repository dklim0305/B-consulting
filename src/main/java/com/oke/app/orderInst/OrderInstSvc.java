package com.oke.app.orderInst;

import com.oke.app.bidEnt.BidEntVo;
import com.oke.app.bidPbanc.BidPbancVo;

import java.util.List;

public interface OrderInstSvc {

    // 발주기관 목록갯수조회
    int retrieveOrderInstListCnt(OrderInstVo orderInstVo);
    // 발주기관 목록조회
    List<OrderInstVo> retrieveOrderInstList(OrderInstVo orderInstVo);
    // 기관 분류 조회
    List<OrderInstVo> retrieveOrderInstClsf();
    // 소재지 조회
    List<OrderInstVo> retrieveOrderInstLctn(OrderInstVo orderInstVo);
    // 발주기관 상세조회
    OrderInstVo retrieveOrderInstDetail(OrderInstVo orderInstVo);
    // 발주공고 목록갯수조회
    int retrieveOrderPbancListCnt(BidPbancVo bidPbancVo);
    // 발주공고 목록조회
    List<BidPbancVo> retrieveOrderPbancList(BidPbancVo bidPbancVo);
    // 입찰 참여 기업 목록갯수조회
    int retrieveBidPtcpEntListCnt(OrderInstVo orderInstVo);
    // 입찰 참여 기업 목록조회
    List<BidPbancVo> retrieveBidPtcpEntList(OrderInstVo orderInstVo);
    // 낙찰 기업 목록갯수조회
    int retrieveSucsfEntListCnt(OrderInstVo orderInstVo);
    // 낙찰 기업 목록조회
    List<BidPbancVo> retrieveSucsfEntList(OrderInstVo orderInstVo);
}
