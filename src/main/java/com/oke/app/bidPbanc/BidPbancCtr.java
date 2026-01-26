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
    public String retrieveBidPbancList(@ModelAttribute BidPbancVo bidPbancVo, Model model) {

        // Service에서 처리 후 결과
        List<BidPbancVo> list = bidPbancSvc.retrieveBidPbancInfoList(bidPbancVo);

        // 결과를 Model로
        model.addAttribute("bidPbancListCnt", bidPbancVo.getTotalRecordCount());
        model.addAttribute("currentPageNo", bidPbancVo.getCurrentPageNo());
        model.addAttribute("totalPageCount", bidPbancVo.getTotalPageCount());
        model.addAttribute("bidPbancVoList", list);
        model.addAttribute("bidPbancVo", bidPbancVo);

        return "bidPbanc/bidPbancList";
    }

    @GetMapping("/bidPbanc/retrieveBidPbancInfoDetail.do")
    public String retrieveBidPbancInfoDetail(@ModelAttribute BidPbancVo bidPbancVo, Model model) {

        BidPbancVo bidPbancDetail = bidPbancSvc.retrieveBidPbancInfoDetail(bidPbancVo);
        model.addAttribute("bidPbancDetail", bidPbancDetail);
        model.addAttribute("bidPbancVo", bidPbancVo);

        return "bidPbanc/bidPbancDetail";
    }
}