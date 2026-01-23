package com.oke.app.bidPbanc;

import java.util.List;

public interface BidPbancSvc {

    // 입찰공고 목록갯수조회
    int retrieveBidPbancInfoListCnt(BidPbancVo bidPbancVo);

    // 입찰공고 목록조회
    List<BidPbancVo> retrieveBidPbancInfoList(BidPbancVo bidPbancVo);

    // 입찰공고 상세조회
    BidPbancVo retrieveBidPbancInfoDetail(BidPbancVo bidPbancVo);

    // 입찰공고 목록 처리 (List 반환)
    List<BidPbancVo> processBidPbancList(BidPbancVo bidPbancVo);
}