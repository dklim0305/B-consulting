package com.oke.app.orderInst;

import lombok.Getter;
import lombok.Setter;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Getter @Setter
public class OrderInstVo extends PaginationInfo {

    private String rnum;
    private String orgCd;           // 기관코드
    private String fullNm;          // 기관명전체
    private String lowNm;           // 기관명최하위
    private String abbrNm;          // 기관명약어
    private String gapNo;           // 차수
    private String rankNo;          // 서열
    private String subChasu;        // 소속기관차수
    private String highCd;          // 상위기관코드
    private String highstCd;        // 최상위기관코드
    private String repCd;           // 대표기관코드
    private String typebigNm;       // 기관대분류
    private String typemidNm;       // 기관중분류
    private String typesmlNm;       // 기관소분류
    private String locatstdCd;      // 소재지코드
    private String locatstdNm;      // 소재지명
    private String useCd;           // 현행기관코드
    private String crtDe;           // 생성일
    private String clsDe;           // 폐지일
    private String stopSelt;        // 폐지구분
    private String chgDe;           // 변경일
    private String baseDate;        // 기초일자
    private String adptDate;        // 적용일
    private String preorgCd;        // 이전기관코드

}
