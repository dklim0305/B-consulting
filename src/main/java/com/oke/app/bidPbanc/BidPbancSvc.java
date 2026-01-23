package com.oke.app.bidPbanc;

import java.util.List;

public interface BidPbancSvc {

    // 입찰공고 목로갯수조회
    int retrieveBidPbancInfoListCnt(BidPbancVo bidPbancVo);

    // 입찰공고 목로조회
    List<BidPbancVo> retrieveBidPbancInfoList(BidPbancVo bidPbancVo);

    // 입찰공고 상세조회
    BidPbancVo retrieveBidPbancInfoDetail(BidPbancVo bidPbancVo);

}
