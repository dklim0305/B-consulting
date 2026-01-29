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

        // 소재지 조회
        List<OrderInstVo> orderInstLctnList = orderInstSvc.retrieveOrderInstLctn(orderInstVo);
        model.addAttribute("orderInstLctnList", orderInstLctnList);

        return "orderInst/orderInstList";
    }

    @GetMapping("/orderInst/retrieveOrderInstDetail.do")
    public String retrieveOrderInstDetail(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 발주기관 기본 정보
        OrderInstVo orderInstDetail = orderInstSvc.retrieveOrderInstDetail(orderInstVo);
        model.addAttribute("orderInstDetail", orderInstDetail);

        return "orderInst/orderInstDetail";
    }

    @GetMapping("/page/orderInstPbancList.do")
    public String retrieveOrderInstPbancList(@ModelAttribute BidPbancVo bidPbancVo, Model model) {

        // 발주 공고 목록갯수조회
        int orderPbancListCnt = orderInstSvc.retrieveOrderPbancListCnt(bidPbancVo);
        model.addAttribute("orderPbancListCnt", orderPbancListCnt);

        int currentPageNo = bidPbancVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            bidPbancVo.setCurrentPageNo(1);
        }

        bidPbancVo.setTotalRecordCount(orderPbancListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = bidPbancVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            bidPbancVo.setRecordCountPerPage(10);
        }

        bidPbancVo.setPageSize(10);

        int totalPageCount = bidPbancVo.getTotalPageCount();

        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 발주 공고 목록조회

        List<BidPbancVo> orderPbancList = orderInstSvc.retrieveOrderPbancList(bidPbancVo);
        model.addAttribute("orderPbancList", orderPbancList);

        return "page/orderInstPbancList";
    }

    @GetMapping("/page/orderInstBidPtcpEntList.do")
    public String retrieveBidPtcpEntList(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 입찰 참여 기업 목록갯수조회
        int bidPtcpEntListCnt = orderInstSvc.retrieveBidPtcpEntListCnt(orderInstVo);
        model.addAttribute("bidPtcpEntListCnt", bidPtcpEntListCnt);

        int currentPageNo = orderInstVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            orderInstVo.setCurrentPageNo(1);
        }

        orderInstVo.setTotalRecordCount(bidPtcpEntListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = orderInstVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            orderInstVo.setRecordCountPerPage(10);
        }

        orderInstVo.setPageSize(10);

        int totalPageCount = orderInstVo.getTotalPageCount();

        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 입찰 참여 기업 목록조회
        List<BidPbancVo> bidPtcpEntList = orderInstSvc.retrieveBidPtcpEntList(orderInstVo);
        model.addAttribute("bidPtcpEntList", bidPtcpEntList);

        return "page/orderInstBidPtcpEntList";
    }

    @GetMapping("/page/orderInstSucsfEntList.do")
    public String retrieveSucsfEntList(@ModelAttribute OrderInstVo orderInstVo, Model model) {

        // 낙찰 기업 목록갯수조회
        int sucsfEntListCnt = orderInstSvc.retrieveSucsfEntListCnt(orderInstVo);
        model.addAttribute("sucsfEntListCnt", sucsfEntListCnt);

        int currentPageNo = orderInstVo.getCurrentPageNo();
        if (currentPageNo == 0) {
            orderInstVo.setCurrentPageNo(1);
        }

        orderInstVo.setTotalRecordCount(sucsfEntListCnt);

        // 페이지당 게시물 갯수
        int recordCountPerPage = orderInstVo.getRecordCountPerPage();
        if (recordCountPerPage == 0) {
            orderInstVo.setRecordCountPerPage(10);
        }

        orderInstVo.setPageSize(10);

        int totalPageCount = orderInstVo.getTotalPageCount();

        model.addAttribute("currentPageNo", currentPageNo);
        model.addAttribute("totalPageCount", totalPageCount);

        // 낙찰 기업 목록조회
        List<BidPbancVo> sucsfEntList = orderInstSvc.retrieveSucsfEntList(orderInstVo);
        model.addAttribute("sucsfEntList", sucsfEntList);

        return "page/orderInstSucsfEntList";
    }

}
