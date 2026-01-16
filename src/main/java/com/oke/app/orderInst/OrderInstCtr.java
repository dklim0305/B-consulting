package com.oke.app.orderInst;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class OrderInstCtr {

    @Resource(name="orderInstSvc")
    OrderInstSvc orderInstSvc;

    @GetMapping("/orderInst/retrieveOrderInstList.do")
    public String retrieveOrderInstList(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 발주 기관 목록 갯수 조회
        int orderInstListCnt = orderInstSvc.retrieveOrderInstListCnt(orderInstVo);
        model.addAttribute("orderInstListCnt", orderInstListCnt);

        // 현재 페이지 번호
        int currentPageNo = orderInstVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            orderInstVo.setCurrentPageNo(1);
        }

        orderInstVo.setTotalRecordCount(orderInstListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = orderInstVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            orderInstVo.setRecordCountPerPage(10);
        }

        orderInstVo.setPageSize(10);

        int totalPageCount = orderInstVo.getTotalPageCount();

        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 발주기관 목록 조회
        List<OrderInstVo> orderInstList = orderInstSvc.retrieveOrderInstList(orderInstVo);
        model.addAttribute("orderInstList", orderInstList);
        
        // 기관 분류 조회
        List<OrderInstVo> orderInstClsfList = orderInstSvc.retrieveOrderInstClsf();
        model.addAttribute("orderInstClsfList", orderInstClsfList);

        return "orderInst/orderInstList";
    }

    @GetMapping("/orderInst/retrieveOrderInstDetail.do")
    public String retrieveOrderInstDetail(@ModelAttribute OrderInstVo orderInstVo, @RequestParam String orgCd, Model model) {

        // 발주기관 기본 정보
        OrderInstVo orderInstDetail = orderInstSvc.retrieveOrderInstDetail(orderInstVo);
        model.addAttribute("orderInstDetail", orderInstDetail);

        return "orderInst/orderInstDetail";

    }

}
