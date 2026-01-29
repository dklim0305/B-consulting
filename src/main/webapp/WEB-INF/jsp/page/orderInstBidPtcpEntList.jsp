<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26. 1. 27.
  Time: 오후 6:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<input type="hidden" id="currentPageNo" name="currentPageNo" value="${currentPageNo}" />
<input type="hidden" id="orgCd" name="orgCd" value="${orderInstVo.orgCd}" />
<div id="bidPtcpEntArea" style="margin-top: 3%;">
    <p><b>입찰 참여 기업</b> [총 <fmt:formatNumber value="${bidPtcpEntListCnt}" pattern="#,###" />건]</p>
    <table id="BidPtcpEntListTable" class="result-table">
        <colgroup>
            <col style="width: 5%;" />
            <col style="width: auto;" />
            <col style="width: 10%;" />
        </colgroup>
        <thead>
            <tr>
                <th>번호</th>
                <th>기업명</th>
                <th>입찰참여갯수</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${bidPtcpEntList.size() eq 0}">
                <tr>
                    <td colspan="3" style="text-align: center;">
                        조회된 데이터가 없습니다
                    </td>
                </tr>
            </c:if>
            <c:forEach items="${bidPtcpEntList}" var="bidPtcpEnt" varStatus="status">
                <tr>
                    <td style="text-align: center;">${bidPtcpEnt.rnum}</td>
                    <td>${bidPtcpEnt.bidprcCorpNm}</td>
                    <td style="text-align: center;"><fmt:formatNumber value="${bidPtcpEnt.bidPtcpCnt}" pattern="#,###" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="pagination">
        <c:if test="${bidPtcpEntList.size() ne 0}">
            <ui:pagination paginationInfo="${orderInstVo}" type="text" jsFunction="fnPaging2" />
        </c:if>
    </div>
</div>