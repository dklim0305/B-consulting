package com.oke.app.bidPbanc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;


import javax.annotation.Resource;
import java.util.List;

@Controller
public class BidPbancCtr {

    @Resource(name="bidPbancSvc")
    BidPbancSvc bidPbancSvc;

    @GetMapping("/bidPbanc/retrieveBidPbancList.do")
    public String retrieveBidPbancInfoList(@ModelAttribute BidPbancVo bidPbancVo, Model model) {

        // 입찰공고 목록 갯수 조회
        int bidPbancInfoListCnt = bidPbancSvc.retrieveBidPbancInfoListCnt(bidPbancVo);
        model.addAttribute("bidPbancListCnt", bidPbancInfoListCnt);

        // 현재 페이지 번호
        int currentPageNo = bidPbancVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            bidPbancVo.setCurrentPageNo(1);
        }

        bidPbancVo.setTotalRecordCount(bidPbancInfoListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = bidPbancVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            bidPbancVo.setRecordCountPerPage(10);
        }

        bidPbancVo.setPageSize(10);

        int totalPageCount = bidPbancVo.getTotalPageCount();


        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 입찰공고 목록 조회
        List<BidPbancVo> bidPbancVoList = bidPbancSvc.retrieveBidPbancInfoList(bidPbancVo);
        model.addAttribute("bidPbancVoList", bidPbancVoList);

        return "bidPbanc/bidPbancList";

    }

    @GetMapping("/bidPbanc/retrieveBidPbancInfoDetail.do")
    public String retrieveBidPbancInfoDetail(@ModelAttribute BidPbancVo bidPbancVo, Model model) {
        BidPbancVo bidPbancDetail = bidPbancSvc.retrieveBidPbancInfoDetail(bidPbancVo);
        model.addAttribute("bidPbancDetail", bidPbancDetail);
        model.addAttribute("bidPbancVo", bidPbancVo);

        return "bidPbanco/bidPbancDetail";
    }
}
