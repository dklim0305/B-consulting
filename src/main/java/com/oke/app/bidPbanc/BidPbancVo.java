package com.oke.app.bidPbanc;

import java.math.BigDecimal;
import lombok.Getter;
import lombok.Setter;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Getter
@Setter
public class BidPbancVo extends PaginationInfo{
    // 입찰공고 (BID_PBANC_INFO)
    private String bidNtceNo;                       // 입찰공고번호
    private String bidNtceOrd;                      // 입찰공고차수
    private String refNtceNo;                       // 참조공고번호
    private String refNtceOrd;                      // 참조공고차수
    private String ppsNtceYn;                       // 나라장터공고여부
    private String bidNtceNm;                       // 입찰공고명
    private String bidNtceSttusNm;                  // 입찰공고상태명
    private String bidNtceDate;                     // 입찰공고일자
    private String bidNtceBgn;                      // 입찰공고시각
    private String bsnsDivNm;                       // 업무구분명
    private String intrntnlBidYn;                   // 국제입찰여부
    private String cmmnCntrctYn;                    // 공동계약여부
    private String cmmnReciptMethdNm;               // 공동수급방식명
    private String elctrnBidYn;                     // 전자입찰여부
    private String cntrctCnclsSttusNm;              // 계약체결형태명
    private String cntrctCnclsMthdNm;               // 계약체결방법명
    private String bidwinrDcsnMthdNm;               // 낙찰자결정방법명
    private String ntceInsttNm;                     // 공고기관명
    private String ntceInsttCd;                     // 공고기관코드
    private String ntceInsttOfclDeptNm;             // 공고기관담당자부서명
    private String ntceInsttOfclNm;                 // 공고기관담당자명
    private String ntceInsttOfclTel;                // 공고기관담당자전화번호
    private String ntceInsttOfclEmailAdrs;          // 공고기관담당자이메일주소
    private String dmndInsttNm;                     // 수요기관명
    private String dmndInsttCd;                     // 수요기관코드
    private String dmndInsttOfclDeptNm;             // 수요기관담당자부서명
    private String dmndInsttOfclNm;                 // 수요기관담당자명
    private String dmndInsttOfclTel;                // 수요기관담당자전화번호
    private String dmndInsttOfclEmailAdrs;          // 수요기관담당자이메일주소
    private String presnatnOprtnYn;                 // 설명회실시여부
    private String presnatnOprtnDate;               // 설명회실시일자
    private String presnatnOprtnTm;                 // 설명회실시시각
    private String presnatnOprtnPlce;               // 설명회실시장소
    private String bidPrtcptQlfctRgstClseDate;      // 입찰참가자격등록마감일자
    private String bidPrtcptQlfctRgstClseTm;        // 입찰참가자격등록마감시각
    private String cmmnReciptAgrmntClseDate;        // 공동수급협정마감일자
    private String cmmnReciptAgrmntClseTm;          // 공동수급협정마감시각
    private String bidBeginDate;                    // 입찰개시일자
    private String bidBeginTm;                      // 입찰개시시각
    private String bidClseDate;                     // 입찰마감일자
    private String bidClseTm;                       // 입찰마감시각
    private String opengDate;                       // 개찰일자
    private String opengTm;                         // 개찰시각
    private String opengPlce;                       // 개찰장소
    private BigDecimal asignBdgtAmt;                // 배정예산금액
    private BigDecimal presmptPrce;                 // 추정가격
    private String rsrvtnPrceDcsnMthdNm;            // 예정가격결정방법명
    private String rgnLmtYn;                        // 지역제한여부
    private String prtcptPsblRgnNm;                 // 참가가능지역명
    private String indstrytyLmtYn;                  // 업종제한여부
    private String bidprcPsblIndstrytyNm;           // 투찰가능업종명
    private String bidNtceUrl;                      // 입찰공고URL
    private String dataBssDate;                     // 데이터기준일자
    private String delYn;                           // 데이터기준일자
    private String frstRgsrId;                      // 최초등록자ID
    private String frstRgsrDtlDttm;                 // 최초등록일시
    private String lastChngId;                      // 최종수정자ID
    private String lastChngDtlDttm;                 // 최종수정일시

    // 검색용 필터
    private String searchBidBeginDate;              // 입찰개시일자
    private String searchBidClseDate;               // 입찰마감일자
    private String minPrce;                         // 최소 추정가격
    private String maxPrce;                         // 최대 추정가격

    private String rnum;
}
