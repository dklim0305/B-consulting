package com.oke.app.bidPbanc.impl;

import com.oke.app.cmmn.dao.CmmnAbstractDao;
import com.oke.app.bidPbanc.BidPbancSvc;
import com.oke.app.bidPbanc.BidPbancVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDate;
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
        // 날짜 기본값 설정 (최근 7일)
        if (bidPbancVo.getSearchBidBeginDate() == null || bidPbancVo.getSearchBidBeginDate().isEmpty()) {
            LocalDate today = LocalDate.now();
            LocalDate oneMonthAgo = today.minusDays(6); // 오늘 포함 7일

            bidPbancVo.setSearchBidBeginDate(oneMonthAgo.toString());
            bidPbancVo.setSearchBidClseDate(today.toString());
        }

        // 페이징 기본값 설정
        if (bidPbancVo.getCurrentPageNo() == 0) {
            bidPbancVo.setCurrentPageNo(1);
        }

        if (bidPbancVo.getRecordCountPerPage() == 0) {
            bidPbancVo.setRecordCountPerPage(10);
        }

        bidPbancVo.setPageSize(10);

        // 목록 갯수 조회
        int listCnt = retrieveBidPbancInfoListCnt(bidPbancVo);
        bidPbancVo.setTotalRecordCount(listCnt);

        // 목록 조회 및 반환
        return dao.selectList("bidPbanc.retrieveBidPbancInfoList", bidPbancVo);
    }

    @Override
    public BidPbancVo retrieveBidPbancInfoDetail(BidPbancVo bidPbancVo) {
        return dao.selectOne("bidPbanc.retrieveBidPbancInfoDetail", bidPbancVo);
    }
}