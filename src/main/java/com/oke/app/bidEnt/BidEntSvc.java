package com.oke.app.bidEnt;


import java.util.List;

public interface BidEntSvc {

    // 입찰기업 목록갯수조회
    int retrieveBidEntListCnt(BidEntVo bidEntVo);
    // 입찰기업 목록조회
    List<BidEntVo> retrieveBidEntList(BidEntVo bidEntVo);
    // 입찰기업 상세조회
    BidEntVo retrieveBidEntDetail(BidEntVo bidEntVo);

}
