package com.oke.app.bidEnt;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class BidEntCtr {

    @Resource(name = "bidEntSvc")
    BidEntSvc bidEntSvc;

    @GetMapping("/bidEnt/retrieveBidEntList.do")
    public String retrieveBidEntList(@ModelAttribute BidEntVo bidEntVo, Model model) {

        // 입찰 기업 목록갯수조회
        int bidEntListCnt = bidEntSvc.retrieveBidEntListCnt(bidEntVo);
        model.addAttribute("bidEntListCnt", bidEntListCnt);

        // 현재 페이지 번호
        int currentPageNo = bidEntVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            bidEntVo.setCurrentPageNo(1);
        }

        bidEntVo.setTotalRecordCount(bidEntListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = bidEntVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            bidEntVo.setRecordCountPerPage(10);
        }

        bidEntVo.setPageSize(10);

        int totalPageCount = bidEntVo.getTotalPageCount();

        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 입찰 기업 목록조회
        List<BidEntVo> bidEntList = bidEntSvc.retrieveBidEntList(bidEntVo);
        model.addAttribute("bidEntList", bidEntList);


        return "bidEnt/bidEntList";
    }

    @GetMapping("/bidEnt/retrieveBidEntDetail.do")
    public String retrieveBidEntDetail(@ModelAttribute BidEntVo bidEntVo, Model model) {

        BidEntVo bidEntDetail = bidEntSvc.retrieveBidEntDetail(bidEntVo);
        model.addAttribute("bidEntDetail", bidEntDetail);

        return "bidEnt/bidEntDetail";
    }


}
