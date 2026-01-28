<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:formatNumber value="${item.estPrice}" pattern="#,###" />


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<c:url value='/app/js/bidPbanc/bidPbancList.js'/>"></script>


<div id="wrapper">
    <div class="header">
        <h1 class="page-title">입찰 공고</h1>
    </div>

    <div class="page-inner">
        <!-- 검색 필터 -->
        <form id="searchForm" name="searchForm" action="/bidPbanc/retrieveBidPbancList.do" method="get">
            <table class="search-table">
                <colgroup>
                    <col width="10%">
                    <col width="40%">
                    <col width="10%">
                    <col width="40%">
                </colgroup>
                <tbody>
                <!-- 기간 -->
                <tr>
                    <th>기간</th>
                    <td colspan="3">
                        <input type="date" id="startDate" name="searchBidBeginDate" value="${bidPbancVo.searchBidBeginDate}" min="2019-01-01" />
                        ~
                        <input type="date" id="endDate" name="searchBidClseDate" value="${bidPbancVo.searchBidClseDate}"  min="2019-01-01" />
                        <span class="range-btn-group">
                            <button type="button" class="date_range_btn" data-range="all">전체</button>
                            <button type="button" class="date_range_btn" data-range="0">당일</button>
                            <button type="button" class="date_range_btn" data-range="6">7일</button>
                            <button type="button" class="date_range_btn" data-range="29">1개월</button>
                            <button type="button" class="date_range_btn" data-range="182">6개월</button>
                            <button type="button" class="date_range_btn" data-range="364">1년</button>
                        </span>
                    </td>
                </tr>

                <!--공고명 / 공고번호 -->
                <tr>
                    <th>공고명</th>
                    <td>
                        <input type="text" id="bidNtceNm" name="bidNtceNm" value="${bidPbancVo.bidNtceNm}"
                               placeholder="예) 정보시스템, 보수공사, 보수장비" style="width: 90%;" />
                    </td>
                    <th>공고번호</th>
                    <td>
                        <input type="text" id="bidNtceNo" name="bidNtceNo" value="${bidPbancVo.bidNtceNo}"
                               placeholder="예) R25BK00773169, R25BK00773842" style="width: 90%;" />
                    </td>
                </tr>

                <!-- 공고 업무 구분 / 공고기관명 -->
                <tr>
                    <th>공고 업무 구분</th>
                    <td>
                        <c:set var="bsnsDivArray" value="${paramValues.bsnsDivNmArray}" />
                        <label>
                            <input type="checkbox" name="bsnsDivNmArray" value="물품" <c:if test="${empty bsnsDivArray}">checked</c:if>
                                   <c:forEach var="item" items="${bsnsDivArray}">
                                       <c:if test="${item == '물품'}">checked</c:if>
                                   </c:forEach> />물품
                        </label>
                        <label>
                            <input type="checkbox" name="bsnsDivNmArray" value="공사" <c:if test="${empty bsnsDivArray}">checked</c:if>
                                    <c:forEach var="item" items="${bsnsDivArray}">
                                        <c:if test="${item == '공사'}">checked</c:if>
                                    </c:forEach> />공사
                        </label>
                        <label>
                            <input type="checkbox" name="bsnsDivNmArray" value="용역" <c:if test="${empty bsnsDivArray}">checked</c:if>
                                    <c:forEach var="item" items="${bsnsDivArray}">
                                        <c:if test="${item == '용역'}">checked</c:if>
                                    </c:forEach> />용역
                        </label>
                        <label>
                            <input type="checkbox" name="bsnsDivNmArray" value="외자" <c:if test="${empty bsnsDivArray}">checked</c:if>
                                    <c:forEach var="item" items="${bsnsDivArray}">
                                        <c:if test="${item == '외자'}">checked</c:if>
                                    </c:forEach> />외자
                        </label>
                        <label>
                            <input type="checkbox" name="bsnsDivNmArray" value="기타" <c:if test="${empty bsnsDivArray}">checked</c:if>
                                    <c:forEach var="item" items="${bsnsDivArray}">
                                        <c:if test="${item == '기타'}">checked</c:if>
                                    </c:forEach> />기타
                        </label>
                    </td>
                    <th>공고기관명</th>
                    <td>
                        <input type="text" id="ntceInsttNm" name="ntceInsttNm" value="${bidPbancVo.ntceInsttNm}"
                               placeholder="예) 경기도, 조달청, 서울교통공사" style="width: 90%;" />
                    </td>
                </tr>

                <!-- 계약 방법 / 상태 분류 -->
                <tr>
                    <th>계약 방법</th>
                    <td>
                        <c:set var="cntrctArray" value="${paramValues.cntrctCnclsMthdNmArray}" />

                        <label>
                            <input type="checkbox" name="cntrctCnclsMthdNmArray" value="일반경쟁" <c:if test="${empty cntrctArray}">checked</c:if>
                                    <c:forEach var="item" items="${cntrctArray}">
                                        <c:if test="${item == '일반경쟁'}">checked</c:if>
                                    </c:forEach> />일반경쟁
                        </label>
                        <label>
                            <input type="checkbox" name="cntrctCnclsMthdNmArray" value="제한경쟁" <c:if test="${empty cntrctArray}">checked</c:if>
                                    <c:forEach var="item" items="${cntrctArray}">
                                        <c:if test="${item == '제한경쟁'}">checked</c:if>
                                    </c:forEach> />제한경쟁
                        </label>
                        <label>
                            <input type="checkbox" name="cntrctCnclsMthdNmArray" value="지명경쟁" <c:if test="${empty cntrctArray}">checked</c:if>
                                    <c:forEach var="item" items="${cntrctArray}">
                                        <c:if test="${item == '지명경쟁'}">checked</c:if>
                                    </c:forEach> />지명경쟁
                        </label>
                        <label>
                            <input type="checkbox" name="cntrctCnclsMthdNmArray" value="수의계약" <c:if test="${empty cntrctArray}">checked</c:if>
                                    <c:forEach var="item" items="${cntrctArray}">
                                        <c:if test="${item == '수의계약'}">checked</c:if>
                                    </c:forEach> />수의계약
                        </label>
                        <label>
                            <input type="checkbox" name="cntrctCnclsMthdNmArray" value="기타" <c:if test="${empty cntrctArray}">checked</c:if>
                                    <c:forEach var="item" items="${cntrctArray}">
                                        <c:if test="${item == '기타'}">checked</c:if>
                                    </c:forEach> />기타
                        </label>
                    </td>
                    <th>상태 분류</th>
                    <td>
                        <c:set var="sttusArray" value="${paramValues.bidNtceSttusNmArray}" />

                        <label>
                            <input type="checkbox" name="bidNtceSttusNmArray" value="일반공고" <c:if test="${empty sttusArray}">checked</c:if>
                                    <c:forEach var="item" items="${sttusArray}">
                                        <c:if test="${item == '일반공고'}">checked</c:if>
                                    </c:forEach> />일반공고
                        </label>
                        <label>
                            <input type="checkbox" name="bidNtceSttusNmArray" value="긴급공고" <c:if test="${empty sttusArray}">checked</c:if>
                                    <c:forEach var="item" items="${sttusArray}">
                                        <c:if test="${item == '긴급공고'}">checked</c:if>
                                    </c:forEach> />긴급공고
                        </label>
                        <label>
                            <input type="checkbox" name="bidNtceSttusNmArray" value="정정공고" <c:if test="${empty sttusArray}">checked</c:if>
                                    <c:forEach var="item" items="${sttusArray}">
                                        <c:if test="${item == '정정공고'}">checked</c:if>
                                    </c:forEach> />정정공고
                        </label>
                        <label>
                            <input type="checkbox" name="bidNtceSttusNmArray" value="취소공고" <c:if test="${empty sttusArray}">checked</c:if>
                                    <c:forEach var="item" items="${sttusArray}">
                                        <c:if test="${item == '취소공고'}">checked</c:if>
                                    </c:forEach> />취소공고
                        </label>
                        <label>
                            <input type="checkbox" name="bidNtceSttusNmArray" value="재입찰공고" <c:if test="${empty sttusArray}">checked</c:if>
                                    <c:forEach var="item" items="${sttusArray}">
                                        <c:if test="${item == '재입찰공고'}">checked</c:if>
                                    </c:forEach> />재입찰공고
                        </label>
                    </td>
                </tr>

                <!-- 수요기관 -->
                <tr>
                    <th>수요기관</th>
                    <td colspan="3">
                        <input type="text" id="dmndInsttNm" name="dmndInsttNm" value="${bidPbancVo.dmndInsttNm}"
                               placeholder="예) 경기도, 건설본부, 서울교통공사" style="width: 95%;" />
                    </td>
                </tr>

                <!-- 추정 가격 -->
                <tr>
                    <th>추정 가격</th>
                    <td colspan="3">
                        <input type="text" id="minPrce" name="minPrce" placeholder="0" style="width: 150px;" /> 억원 ~
                        <input type="text" id="maxPrce" name="maxPrce" placeholder="5.5" style="width: 150px;" /> 억원
                        <span style="color: #999; font-size: 12px; margin-left: 10px;">예)5천만원 : 0.5억원, 5억5천만원 : 5.5억원</span>
                    </td>
                </tr>
                </tbody>
            </table>

            <!-- 검색/초기화 버튼 -->
            <div class="btn-area">
                <button type="button" id="resetBtn" class="btn-reset">초기화</button>
                <button type="submit" id="searchBtn" class="btn-search">검색</button>
            </div>
        </form>

        <!-- 검색 결과 테이블 -->
        <div class="result-area">
            <!-- 검색 결과 카운트 -->
            <div class="result-count"> 입찰 공고 검색 [검색결과 <fmt:formatNumber value="${bidPbancListCnt}" pattern="#,###" />건]</div>
            <table class="result-table">
                <colgroup>
                    <col style="width: 50px;">   <!-- 번호 -->
                    <col style="width: 450px;">  <!-- 공고번호/공고명 -->
                    <col style="width: 90px;">  <!-- 상태분류 -->
                    <col style="width: 120px;">  <!-- 공고업무구분 -->
                    <col style="width: 90px;">  <!-- 계약방법 -->
                    <col style="width: 130px;">  <!-- 추정가격 -->
                    <col style="width: 150px;">  <!-- 수요기관 -->
                    <col style="width: 190px;">  <!-- 개시일시/마감일시 -->
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>공고번호<br/>공고명</th>
                    <th>상태 분류</th>
                    <th>공고 업무 구분</th>
                    <th>계약 방법</th>
                    <th>추정 가격</th>
                    <th>수요기관</th>
                    <th>개시일시<br/>마감일시</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${empty bidPbancVoList}">
                        <tr>
                            <td colspan="8" style="text-align: center; padding: 50px;">검색 결과가 없습니다.</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="item" items="${bidPbancVoList}" varStatus="status">
                            <tr>
                                <td style="text-align: center;">${item.rnum}</td>
                                <td>
                                    <a href="/bidPbanc/retrieveBidPbancInfoDetail.do?bidNtceNo=${item.bidNtceNo}&bidNtceOrd=${item.bidNtceOrd}">
                                            ${item.bidNtceNo}<br/>
                                            ${item.bidNtceNm}
                                    </a>
                                </td>
                                <td style="text-align: center;">${item.bidNtceSttusNm}</td>
                                <td style="text-align: center;">${item.bsnsDivNm}</td>
                                <td style="text-align: center;">${item.cntrctCnclsMthdNm}</td>
                                <td style="text-align: right;"><fmt:formatNumber value="${item.presmptPrce}" pattern="#,###" /></td>
                                <td style="text-align: center;">${item.dmndInsttNm}</td>
                                <td style="text-align: center;">
                                    <div style="white-space: nowrap;">${item.bidBeginDate} ${item.bidBeginTm}</div>
                                    <div style="white-space: nowrap; margin-top: 4px;">${item.bidClseDate} ${item.bidClseTm}</div>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>

            <!-- 페이징 -->
            <div class="pagination">
                <c:if test="${not empty bidPbancVoList}">
                    <ui:pagination paginationInfo="${bidPbancVo}" type="text" jsFunction="fnPaging" />
                </c:if>
            </div>
        </div>
    </div>
</div>