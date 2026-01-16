<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26. 1. 15.
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/app/js/orderInst/orderInstList.js"></script>
<html>
<head>
    <title>발주 기관 목록 조회</title>
</head>
<body>
<div id="wrapper">
    <div class="header">
        <h1 class="page-title">${orderInstListCnt}</h1>
    </div>
    <div class="page-inner">
        <form id="searchForm" name="searchForm" action="/orderInst/retrieveOrderInstList.do">
            <table>
                <tbody>
                    <tr>
                        <th>기관명</th>
                        <td>
                            <input type="text" id="fullNm" name="fullNm" value="${orderInstVo.fullNm}" />
                        </td>
                        <th>소재지</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>기관 분류</th>
                        <td colspan="2">
                            <c:forEach items="${orderInstClsfList}" var="clsf" varStatus="status">
                                <input type="checkbox" id="orderInstClsf" name="typebigNm" value="${clsf.typebigNm}" />${clsf.typebigNm}
                            </c:forEach>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="btnDiv">
                <button id="initBtn">초기화</button>
                <button id="searchBtn">검색</button>
            </div>
            <input type="hidden" id="currentPageNo" name="currentPageNo" value="${currentPageNo}" />
            <div>
                <select id="recordCountPerPage" name="recordCountPerPage" onchange="fnSelectPage()">
                    <option value="10" <c:if test="${orderInstVo.recordCountPerPage eq 10}">selected</c:if> >10</option>
                    <option value="20" <c:if test="${orderInstVo.recordCountPerPage eq 20}">selected</c:if> >20</option>
                    <option value="30" <c:if test="${orderInstVo.recordCountPerPage eq 30}">selected</c:if> >30</option>
                </select>
            </div>
        </form>
        <table id="orderInstListTable">
            <colgroup>
                <col />
                <col />
                <col />
                <col />
            </colgroup>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>기관명</th>
                    <th>기관분류</th>
                    <th>소재지</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${orderInstList.size() eq 0}">
                    <tr>
                        <td colspan="4">
                            조회된 데이터가 없습니다
                        </td>
                    </tr>
                </c:if>
                <c:forEach items="${orderInstList}" var="orderInst" varStatus="status">
                    <tr>
                        <td>${orderInst.rnum}</td>
                        <td>
                            <a href="/orderInst/retrieveOrderInstDetail.do?orgCd=${orderInst.orgCd}">
                                ${orderInst.fullNm}
                                <input type="hidden" id="orgCd" name="orgCd" value="${orderInst.orgCd}"></input>
                            </a>
                        </td>
                        <td>${orderInst.typebigNm}</td>
                        <td>${orderInst.locatstdNm}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <c:if test="${orderInstList.size() ne 0}">
            <ui:pagination paginationInfo="${orderInstVo}" type="text" jsFunction="fnPaging" />
        </c:if>
    </div>
</div>
</body>
</html>
