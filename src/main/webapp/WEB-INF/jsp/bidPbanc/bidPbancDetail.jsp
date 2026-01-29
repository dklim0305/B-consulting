<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-20
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

<div id="wrapper">
    <div class="header">
        <h1 class="page-title">${bidPbancDetail.bidNtceNm}</h1>
    </div>

    <div class="page-inner">
        <section class="detail-section">
            <h2 class="section-title">입찰 공고 상세 정보</h2>

            <table class="detail-table">
                <colgroup>
                    <col width="15%">
                    <col width="35%">
                    <col width="15%">
                    <col width="35%">
                </colgroup>
                <tbody>

                <tr>
                    <th>발주처 공고번호</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.bidNtceUrl}">
                            <a href="${bidPbancDetail.bidNtceUrl}" target="_blank" class="link-primary">
                                    ${bidPbancDetail.bidNtceNo} 공고원문보기
                            </a>
                        </c:if>
                        <c:if test="${empty bidPbancDetail.bidNtceUrl}">
                            ${bidPbancDetail.bidNtceNo}
                        </c:if>
                    </td>
                    <th>계약 방법</th>
                    <td>${bidPbancDetail.cntrctCnclsMthdNm}</td>
                </tr>

                <tr>
                    <th>업종</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.bsnsDivNm}">${bidPbancDetail.bsnsDivNm}</c:if>
                        <c:if test="${empty bidPbancDetail.bsnsDivNm}">-</c:if>
                    </td>
                    <th>지역 제한</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.prtcptPsblRgnNm}">${bidPbancDetail.prtcptPsblRgnNm}</c:if>
                        <c:if test="${empty bidPbancDetail.prtcptPsblRgnNm}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>공고 기관</th>
                    <td>${bidPbancDetail.ntceInsttNm}</td>
                    <th>수요 기관</th>
                    <td>${bidPbancDetail.dmndInsttNm}</td>
                </tr>

                <tr>
                    <th>담당자</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.ntceInsttOfclNm}">${bidPbancDetail.ntceInsttOfclNm}</c:if>
                        <c:if test="${empty bidPbancDetail.ntceInsttOfclNm}">-</c:if>
                    </td>
                    <th>연락처</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.ntceInsttOfclTel}">${bidPbancDetail.ntceInsttOfclTel}</c:if>
                        <c:if test="${empty bidPbancDetail.ntceInsttOfclTel}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>현장 설명회</th>
                    <td>
                        <c:if test="${bidPbancDetail.presnatnOprtnYn == 'Y'}">
                            ${bidPbancDetail.presnatnOprtnDate} ${bidPbancDetail.presnatnOprtnTm}
                        </c:if>
                        <c:if test="${bidPbancDetail.presnatnOprtnYn != 'Y'}">-</c:if>
                    </td>
                    <th>현장 설명회소</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.presnatnOprtnPlce}">${bidPbancDetail.presnatnOprtnPlce}</c:if>
                        <c:if test="${empty bidPbancDetail.presnatnOprtnPlce}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>참가등록마감일시</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.bidPrtcptQlfctRgstClseDate}">
                            ${bidPbancDetail.bidPrtcptQlfctRgstClseDate} ${bidPbancDetail.bidPrtcptQlfctRgstClseTm}
                        </c:if>
                        <c:if test="${empty bidPbancDetail.bidPrtcptQlfctRgstClseDate}">-</c:if>
                    </td>
                    <th>공동수령협정마감일시</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.cmmnReciptAgrmntClseDate}">
                            ${bidPbancDetail.cmmnReciptAgrmntClseDate} ${bidPbancDetail.cmmnReciptAgrmntClseTm}
                        </c:if>
                        <c:if test="${empty bidPbancDetail.cmmnReciptAgrmntClseDate}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>입찰 개시일시</th>
                    <td>${bidPbancDetail.bidBeginDate} ${bidPbancDetail.bidBeginTm}</td>
                    <th>입찰 마감일시</th>
                    <td>${bidPbancDetail.bidClseDate} ${bidPbancDetail.bidClseTm}</td>
                </tr>

                <tr>
                    <th>개찰일시</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.opengDate}">
                            ${bidPbancDetail.opengDate} ${bidPbancDetail.opengTm}
                        </c:if>
                        <c:if test="${empty bidPbancDetail.opengDate}">-</c:if>
                    </td>
                    <th>개찰 방법</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.bidwinrDcsnMthdNm}">${bidPbancDetail.bidwinrDcsnMthdNm}</c:if>
                        <c:if test="${empty bidPbancDetail.bidwinrDcsnMthdNm}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>예가 방식</th>
                    <td>
                        <c:if test="${not empty bidPbancDetail.rsrvtnPrceDcsnMthdNm}">${bidPbancDetail.rsrvtnPrceDcsnMthdNm}</c:if>
                        <c:if test="${empty bidPbancDetail.rsrvtnPrceDcsnMthdNm}">-</c:if>
                    </td>
                    <th>투찰 방법</th>
                    <td>
                        <c:if test="${bidPbancDetail.elctrnBidYn == 'Y'}">전자입찰</c:if>
                        <c:if test="${bidPbancDetail.elctrnBidYn == 'N'}">서면입찰</c:if>
                        <c:if test="${bidPbancDetail.elctrnBidYn != 'Y' && bidPbancDetail.elctrnBidYn != 'N'}">-</c:if>
                    </td>
                </tr>

                <tr>
                    <th>기초 금액</th>
                    <td>
                        <c:if test="${bidPbancDetail.asignBdgtAmt != null}">
                            <fmt:formatNumber value="${bidPbancDetail.asignBdgtAmt}" pattern="#,###"/>원
                        </c:if>
                        <c:if test="${bidPbancDetail.asignBdgtAmt == null}">-</c:if>
                    </td>
                    <th>추정 가격</th>
                    <td>
                        <c:if test="${bidPbancDetail.presmptPrce != null}">
                            <fmt:formatNumber value="${bidPbancDetail.presmptPrce}" pattern="#,###"/>원
                        </c:if>
                        <c:if test="${bidPbancDetail.presmptPrce == null}">-</c:if>
                    </td>
                </tr>
                </tbody>
            </table>
        </section>

        <section class="schedule-section">
            <h2 class="section-title">입찰 일정</h2>

            <table class="schedule-table">
                <colgroup>
                    <col width="10%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                </colgroup>
                <thead>
                <tr>
                    <th>D-day</th>
                    <th>입찰게시일</th>
                    <th>참가등록마감일</th>
                    <th>공동수령협정마감일시</th>
                    <th>입찰마감일시</th>
                    <th>개찰일시</th>
                    <th>계약일시</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="dday-cell">
                        <span id="dday">D-7</span>
                    </td>
                    <td class="date-cell">
                        <div>${bidPbancDetail.bidNtceDate}</div>
                        <div>${bidPbancDetail.bidNtceBgn}</div>
                    </td>
                    <td class="date-cell">
                        <div>
                            <c:if test="${not empty bidPbancDetail.bidPrtcptQlfctRgstClseDate}">${bidPbancDetail.bidPrtcptQlfctRgstClseDate}</c:if>
                            <c:if test="${empty bidPbancDetail.bidPrtcptQlfctRgstClseDate}">-</c:if>
                        </div>
                        <div>
                            <c:if test="${not empty bidPbancDetail.bidPrtcptQlfctRgstClseTm}">${bidPbancDetail.bidPrtcptQlfctRgstClseTm}</c:if>
                        </div>
                    </td>
                    <td class="date-cell">
                        <div>
                            <c:if test="${not empty bidPbancDetail.cmmnReciptAgrmntClseDate}">${bidPbancDetail.cmmnReciptAgrmntClseDate}</c:if>
                            <c:if test="${empty bidPbancDetail.cmmnReciptAgrmntClseDate}">-</c:if>
                        </div>
                        <div>
                            <c:if test="${not empty bidPbancDetail.cmmnReciptAgrmntClseTm}">${bidPbancDetail.cmmnReciptAgrmntClseTm}</c:if>
                        </div>
                    </td>
                    <td class="date-cell">
                        <div>${bidPbancDetail.bidClseDate}</div>
                        <div>${bidPbancDetail.bidClseTm}</div>
                    </td>
                    <td class="date-cell">
                        <div>
                            <c:if test="${not empty bidPbancDetail.opengDate}">${bidPbancDetail.opengDate}</c:if>
                            <c:if test="${empty bidPbancDetail.opengDate}">-</c:if>
                        </div>
                        <div>
                            <c:if test="${not empty bidPbancDetail.opengTm}">${bidPbancDetail.opengTm}</c:if>
                        </div>
                    </td>
                    <td class="date-cell">
                        <div>-</div>
                    </td>
                </tr>
                <tr>
                    <th>수요 자료</th>
                    <th>지역</th>
                    <th>계약 방법</th>
                    <th>기초 금액</th>
                    <th>추정 가격</th>
                    <th colspan="2">투찰방법</th>
                </tr>
                <tr>
                    <td class="info-cell">${bidPbancDetail.dmndInsttNm}</td>
                    <td class="info-cell">
                        <c:if test="${not empty bidPbancDetail.prtcptPsblRgnNm}">${bidPbancDetail.prtcptPsblRgnNm}</c:if>
                        <c:if test="${empty bidPbancDetail.prtcptPsblRgnNm}">-</c:if>
                    </td>
                    <td class="info-cell">${bidPbancDetail.cntrctCnclsMthdNm}</td>
                    <td class="info-cell">
                        <c:if test="${bidPbancDetail.asignBdgtAmt != null}">
                            <fmt:formatNumber value="${bidPbancDetail.asignBdgtAmt}" pattern="#,###"/>원
                        </c:if>
                        <c:if test="${bidPbancDetail.asignBdgtAmt == null}">-</c:if>
                    </td>
                    <td class="info-cell">
                        <c:if test="${bidPbancDetail.presmptPrce != null}">
                            <fmt:formatNumber value="${bidPbancDetail.presmptPrce}" pattern="#,###"/>원
                        </c:if>
                        <c:if test="${bidPbancDetail.presmptPrce == null}">-</c:if>
                    </td>
                    <td class="info-cell" colspan="2">
                        <c:if test="${bidPbancDetail.elctrnBidYn == 'Y'}">전자입찰</c:if>
                        <c:if test="${bidPbancDetail.elctrnBidYn == 'N'}">서면입찰</c:if>
                        <c:if test="${bidPbancDetail.elctrnBidYn != 'Y' && bidPbancDetail.elctrnBidYn != 'N'}">-</c:if>
                    </td>
                </tr>
                </tbody>
            </table>

            <div class="status-row">
                <div class="status-item">
                    <div class="status-label">입찰 전</div>
                    <div class="status-text">(입찰 중)</div>
                </div>
                <div class="status-item">
                    <div class="status-label">대기 입찰</div>
                </div>
                <div class="status-item">
                    <div class="status-label">입찰 마감</div>
                </div>
                <div class="status-item">
                    <div class="status-label">개찰 중</div>
                </div>
                <div class="status-item">
                    <div class="status-label">개찰 완료</div>
                </div>
            </div>
        </section>

        <div class="btn-area">
            <button type="button" class="btn-secondary" onclick="history.back();">목록으로</button>
        </div>

    </div>
</div>