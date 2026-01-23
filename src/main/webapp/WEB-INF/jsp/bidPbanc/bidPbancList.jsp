<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-20
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/app/js/orderInst/orderInstList.js"></script>
<html>
<head>
    <title>입찰공고 목록 조회</title>
</head>
<body>
<div id="wrapper">
    <div class="header">
        <h1 class="page-title">입찰 공고</h1>
    </div>
    <div class="page-inner">
        <form id="searchForm" name="searchForm" action="/bidPbanc/retrieveBidPbancList.do" method="get">
            <table>
                <tbody>
                <tr>
                    <th>기간</th>
                    <td colspan="3">
                        <input type="date" id="startDate" name="searchBidBeginDate" value="${bidPbancVo.searchBidBeginDate}" />
                        ~
                        <input type="date" id="endDate" name="searchBidClseDate" value="${bidPbancVo.searchBidClseDate}" />
                        <span class="rnage-btn-group">
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="all" style="white-space: nowrap; width: 60px">전체</button>
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="0" style="white-space: nowrap; width: 60px">당일</button>
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="6" style="white-space: nowrap; width: 60px">7일</button>
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="29" style="white-space: nowrap; width: 60px">1개월</button>
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="182" style="white-space: nowrap; width: 60px">6개월</button>
                                <button type="button" class="date_range_btn" id="dateRangeBtn" data-range="364" style="white-space: nowrap; width: 60px">1년</button>
                        </span>
                    </td>
                </tr>
                <tr>
                    <th>공고명</th>
                    <td>
                        <input type="text" id="bidNtceNm" name="bidNtceNm" value="${bidPbancVo.bidNtceNm}" placeholder="예) 정보시스템, 보수공사, 보수장비" style="width: 90%;"/>
                    </td>
                    <th>공고번호</th>
                    <td>
                        <input type="text" id="bidNtceNo" name="bidNtceNo" value="${bidPbancVo.bidNtceNo}" placeholder="예) R25BK00773169,R25BK00773842" style="width: 90%;"/>
                    </td>
                </tr>
                <tr>
                    <th>공고 업무 구분</th>
                    <td>
                        <label><input type="checkbox" name="bsnsDivNm" value="물품" checked/>물품</label>
                        <label><input type="checkbox" name="bsnsDivNm" value="공사" checked/>공사</label>
                        <label><input type="checkbox" name="bsnsDivNm" value="영역" checked/>영역</label>
                        <label><input type="checkbox" name="bsnsDivNm" value="외자" checked/>외자</label>
                        <label><input type="checkbox" name="bsnsDivNm" value="기타" checked/>기타</label>
                    </td>
                    <th>공고기관명</th>
                    <td>
                        <input type="text" id="ntceInsttNm" name="ntceInsttNm" value="${bidPbancVo.ntceInsttNm}" placeholder="예) 경기도, 조달청, 서울교통공사" style="width: 90%;"/>
                    </td>
                </tr>
                <tr>
                    <th>계약 방법</th>
                    <td>
                        <label><input type="checkbox" name="cntrctCnclsMthdNm" value="일반경쟁" checked/>일반경쟁</label>
                        <label><input type="checkbox" name="cntrctCnclsMthdNm" value="제한경쟁" checked/>제한경쟁</label>
                        <label><input type="checkbox" name="cntrctCnclsMthdNm" value="지명경쟁" checked/>지명경쟁</label>
                        <label><input type="checkbox" name="cntrctCnclsMthdNm" value="수의계약" checked/>수의계약</label>
                        <label><input type="checkbox" name="cntrctCnclsMthdNm" value="기타" checked/>기타</label>
                    </td>
                    <th>상태 분류</th>
                    <td>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="일반공고" checked />일반공고</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="긴급공고" checked />긴급공고</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="정정공고" checked />정정공고</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="취소공고" checked />취소공고</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="재입찰공고" checked />재입찰공고</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="전자입찰" checked />전자입찰</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="공동도급" checked />공동도급</label>
                        <label><input type="checkbox" name="bidNtceSttusNm" value="기타" checked />기타</label>
                    </td>
                </tr>
                <tr>
                    <th>수요기관</th>
                    <td>
                        <input type="text" id="dmndInsttNm" name="dmndInsttNm" value="${bidPbancVo.dmndInsttNm}" placeholder="예) 경기도, 건설본부, 서울교통공사" style="width: 90%;"/>
                    <td>
                </tr>
                <tr>
                    <th>추정 가격</th>
                    <td colspan="3">
                        <input type="number" id="minPrce" name="minPrce" placeholder="0" style="width: 150px;" /> 억원 ~
                        <input type="number" id="maxPrce" name="maxPrce" placeholder="5.5" style="width: 150px;" /> 억원
                        <span style="color: #999; font-size: 12px;">예)추정금액 : 0.5 억원, 5,5억원까지</span>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="btn-area" style="text-align: center; margin-top: 20px;">
                <button type="button" id="resetBtn" class="btn-reset">초기화</button>
                <button type="submit" id="searchBtn" class="btn-search">검색</button>
            </div>
        </form>

        <div class="result-area" style="margin-top: 30px;">
            <table class="result-table">
                <thead>
                <tr>
                    <th>[검색결과 ${bidPbancListCnt}건]</th>
                </tr>
                <tr>
                    <th>번호</th>
                    <th>공고번호<br/>공고명</th>
                    <th>상태 분류</th>
                    <th>공고 업무 구분</th>
                    <th>계약 방법</th>
                    <th>추정 가격</th>
                    <th>지역</th>
                    <th>수요기관</th>
                    <th>개시일시<br/>마감일시</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${empty bidPbancVoList}">
                        <tr>
                            <td colspan="9" style="text-align: center;">검색 결과가 없습니다</td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="item" items="${bidPbancVoList}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>
                                    <a href="/bidPbanc/retrieveBidPbancDetail.do?bidNtceNo=${item.bidNtceNo}&bidNtceOrd=${item.bidNtceOrd}">
                                            ${item.bidNtceNo}<br/>
                                            ${item.bidNtceNm}
                                    </a>
                                </td>
                                <td>${item.bidNtceSttusNm}</td>
                                <td>${item.bsnsDivNm}</td>
                                <td>${item.cntrctCnclsMthdNm}</td>
                                <td>${item.presmptPrce}</td>
                                <td>${item.prtcptPsblRgnNm}</td>
                                <td>${item.dmndInsttNm}</td>
                                <td>
                                        ${item.bidBeginDate} ${item.bidBeginTm}<br/>
                                        ${item.bidClseDate} ${item.bidClseTm}
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>

            <!-- 페이징 -->
            <div class="pagination" style="text-align: center; margin-top: 20px;">
                <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
            </div> 
        </div>

    </div>
</div>

</body>
</html>
