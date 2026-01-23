package com.oke.app.orderInst;

import com.oke.app.bidPbanc.BidPbancVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class OrderInstCtr {

    @Resource(name="orderInstSvc")
    OrderInstSvc orderInstSvc;

    @GetMapping("/orderInst/retrieveOrderInstList.do")
    public String retrieveOrderInstList(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 선택한 기관 대분류 리스트로 변환
        String typebigNm = orderInstVo.getTypebigNm();

        if (typebigNm != null) {
            String[] typebigNmArr = typebigNm.split(",");
            List<String> typebigNmList = List.of(typebigNmArr);
            orderInstVo.setTypebigNmList(typebigNmList);
            model.addAttribute("typebigNmList", typebigNmList);
        }

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

        // 정렬 기준
        String sortStandard = orderInstVo.getSortStandard();
        if (sortStandard == null) {
            orderInstVo.setSortStandard("fullNm");
        }

        // 정렬차순
        String sortOrder = orderInstVo.getSortOrder();
        if (sortOrder == null) {
            orderInstVo.setSortOrder("ASC");
        }

        // 발주기관 목록 조회
        List<OrderInstVo> orderInstList = orderInstSvc.retrieveOrderInstList(orderInstVo);
        model.addAttribute("orderInstList", orderInstList);
        
        // 기관 분류 조회
        List<OrderInstVo> orderInstClsfList = orderInstSvc.retrieveOrderInstClsf();
        model.addAttribute("orderInstClsfList", orderInstClsfList);

        return "orderInst/orderInstList";
    }

    @GetMapping("/orderInst/retrieveOrderInstDetail.do")
    public String retrieveOrderInstDetail(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 발주기관 기본 정보
        OrderInstVo orderInstDetail = orderInstSvc.retrieveOrderInstDetail(orderInstVo);
        model.addAttribute("orderInstDetail", orderInstDetail);

        // 발주 공고 목록갯수조회
        int orderPbancListCnt = orderInstSvc.retrieveOrderPbancListCnt(orderInstVo);
        model.addAttribute("orderPbancListCnt", orderPbancListCnt);

        int currentPageNo1 = orderInstVo.getCurrentPageNo();
        if (currentPageNo1 == 0) {
            orderInstVo.setCurrentPageNo(1);
        }

        orderInstVo.setTotalRecordCount(orderPbancListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = orderInstVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            orderInstVo.setRecordCountPerPage(10);
        }

        orderInstVo.setPageSize(10);

        int totalPageCount1 = orderInstVo.getTotalPageCount();

        model.addAttribute("currentPageNo1", currentPageNo1);
        model.addAttribute("totalPageCount1", totalPageCount1);

        // 발주 공고 목록조회
        List<BidPbancVo> orderPbancList = orderInstSvc.retrieveOrderPbancList(orderInstVo);
        model.addAttribute("orderPbancList", orderPbancList);

        return "orderInst/orderInstDetail";

    }

}
