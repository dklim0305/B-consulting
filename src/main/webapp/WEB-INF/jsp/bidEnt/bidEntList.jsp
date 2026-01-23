<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26. 1. 21.
  Time: 오후 1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/app/js/bidEnt/bidEntList.js"></script>
<html>
<head>
    <title>입찰 기업</title>
</head>
<body>
<div id="wrapper">
    <div class="header">
        <h1 class="page-title">입찰 기업</h1>
    </div>
    <div class="page-inner">
        <form id="searchForm" name="searchForm" action="/bidEnt/retrieveBidEntList.do">
            <table>
                <tbody>
                    <tr>
                        <th>기업명</th>
                        <td><input type="text" id="corpName" name="corpName" value="${bidEntvo.corpName}" /></td>
                        <th>대표자명</th>
                        <td><input type="text" id="ceoNm" name="ceoNm" value="${bidEntVo.ceoNm}" /></td>
                        <th>사업자등록번호</th>
                        <td><input type="text" id="bizrNo" name="bizrNo" ${bidEntVo.bizrNo} /></td>
                    </tr>
                </tbody>
            </table>
            <div class="btnDiv">
              <button id="initBtn">초기화</button>
              <button id="searchBtn">검색</button>
            </div>
            <input type="hidden" id="currentPageNo" name="currentPageNo" value="${currentPageNo}" />
            <p style="display: inline-block;"><b>입찰 기업 검색</b> [검색결과 ${bidEntListCnt}건]</p>
            <select id="sortStandard" name="sortStandard" onchange="fnSelectSortStandard()" style="display: inline-block;">
                <option value="corpName" <c:if test="${bidEntVo.corpName eq 'corpName'}">selected</c:if>>기업명</option>
            </select>
            <select id="sortOrder" name="sortOrder" onchange="fnSelectSortOrder()" style="display: inline-block;">
                <option value="ASC" <c:if test="${bidEntVo.sortOrder eq 'ASC'}">selected</c:if>>오름차순</option>
                <option value="DESC" <c:if test="${bidEntVo.sortOrder eq 'DESC'}">selected</c:if>>내림차순</option>
            </select>
            <select id="recordCountPerPage" name="recordCountPerPage" onchange="fnSelectPage()" style="display: inline-block;">
                <option value="10" <c:if test="${bidEntVo.recordCountPerPage eq 10}">selected</c:if> >10개씩</option>
                <option value="20" <c:if test="${bidEntVo.recordCountPerPage eq 20}">selected</c:if> >20개씩</option>
                <option value="30" <c:if test="${bidEntVo.recordCountPerPage eq 30}">selected</c:if> >30개씩</option>
            </select>
        </form>
        <table id="bidEngListTable">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>기업명</th>
                    <th>기업영문명</th>
                    <th>대표자</th>
                    <th>사업자등록번호</th>
                    <th>주소</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${bidEntList.size() eq 0}">
                    <tr>
                        <td colspan="5">조회된 데이터가 없습니다</td>
                    </tr>
                </c:if>
                <c:forEach items="#{bidEntList}" var="bidEnt" varStatus="status">
                    <tr>
                        <td>${bidEnt.rnum}</td>
                        <td>
                            <a href="/bidEnt/retrieveBidEntDetail.do?corpCode=${bidEnt.corpCode}">
                                ${bidEnt.corpName}
                                <input type="hidden" name="corpCode" value="${bidEnt.corpCode}">
                            </a>
                        </td>
                        <td>${bidEnt.corpNameEng}</td>
                        <td>${bidEnt.ceoNm}</td>
                        <td>${bidEnt.bizrNo}</td>
                        <td>${bidEnt.adres}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <c:if test="${bidEntList.size() ne 0}">
            <ui:pagination paginationInfo="${bidEntVo}" type="text" jsFunction="fnPaging" />
        </c:if>
    </div>
</div>
</body>
</html>
