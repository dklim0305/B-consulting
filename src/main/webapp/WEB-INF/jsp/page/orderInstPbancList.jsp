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
<input type="hidden" id="dmndInsttCd" name="dmndInsttCd" value="${bidPbancVo.dmndInsttCd}" />
<div id="pbancArea" style="margin-top: 3%;">
    <p><b>기관 발주 공고 내역</b> [총 <fmt:formatNumber value="${orderPbancListCnt}" pattern="#,###" />건]</p>
    <table id="orderPbancListTable" class="result-table">
        <colgroup>
            <col style="width: 5%;" />
            <col style="width: auto;" />
            <col style="width: 7%;" />
            <col style="width: 7%;" />
            <col style="width: 10%;" />
            <col style="width: 10%;" />
            <col style="width: 10%;" />
            <col style="width: 13%;" />
        </colgroup>
        <thead>
            <tr>
                <th>번호</th>
                <th>공고번호/공고명</th>
                <th>공고상태</th>
                <th>업무구분</th>
                <th>공고기관</th>
                <th>수요기관</th>
                <th>추정가격</th>
                <th>공고일시</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${orderPbancList.size() eq 0}">
                <tr>
                    <td colspan="8" style="text-align: center;">
                        조회된 데이터가 없습니다
                    </td>
                </tr>
            </c:if>
            <c:forEach items="${orderPbancList}" var="orderPbanc" varStatus="status">
                <tr>
                    <td style="text-align: center;">${orderPbanc.rnum}</td>
                    <td>[${orderPbanc.bidNtceNo}]<br><b>${orderPbanc.bidNtceNm}</b></td>
                    <td style="text-align: center;">${orderPbanc.bidNtceSttusNm}</td>
                    <td style="text-align: center;">${orderPbanc.bsnsDivNm}</td>
                    <td>${orderPbanc.ntceInsttNm}</td>
                    <td>${orderPbanc.dmndInsttNm}</td>
                    <td><fmt:formatNumber value="${orderPbanc.presmptPrce}" pattern="#,###" /></td>
                    <td style="text-align: center;">${orderPbanc.bidNtceDate} ${orderPbanc.bidNtceBgn}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="pagination">
        <c:if test="${orderPbancList.size() ne 0}">
            <ui:pagination paginationInfo="${bidPbancVo}" type="text" jsFunction="fnPaging1" />
        </c:if>
    </div>
</div>