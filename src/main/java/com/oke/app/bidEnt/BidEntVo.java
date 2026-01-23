package com.oke.app.bidEnt;

import lombok.Getter;
import lombok.Setter;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Getter @Setter
public class BidEntVo extends PaginationInfo {

    private String corpCode;        // 고유번호
    private String corpName;        // 정식명칭
    private String corpNameEng;     // 영문명칭
    private String stockName;       // 종목명(상장사) 또는 약식명칭(기타법인)
    private String stockCode;       // 상장회사인 경우 주식의 종목코드
    private String ceoNm;           // 대표자명
    private String corpCls;         // 법인구분
    private String jurirNo;         // 법인등록번호
    private String bizrNo;          // 사업자등록번호
    private String adres;           // 주소
    private String hmUrl;           // 홈페이지
    private String irUrl;           // IR홈페이지
    private String phnNo;           // 전화번호
    private String faxNo;           // 팩스번호
    private String indutyCode;      // 업종코드
    private String estDt;           // 설립일(YYYYMMDD)
    private String accMt;           // 결산월(MM)

    private String rnum;
    // 정렬기준
    private String sortStandard;
    // 정렬차순
    private String sortOrder;

}
