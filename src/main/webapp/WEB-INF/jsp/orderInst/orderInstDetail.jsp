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
<script src="/app/js/orderInst/orderInstDetail.js"></script>
<html>
<head>
    <title>발주 기관 상세 조회</title>
</head>
<body>
<div id="wrapper">
    <div class="header">
        <h1 class="page-title"></h1>
    </div>
    <div class="page-inner">
        <table id="orderInstInfoTable">
            <p><b>${orderInstDetail.fullNm} 기본 정보</b></p>
            <tbody>
                <tr>
                    <th>기관명</th>
                    <td>
                        <input type="hidden" id="orgCd" name="orgCd" value="${orderInstDetail.orgCd}" />
                        ${orderInstDetail.fullNm}
                    </td>
                    <th>기관대분류</th>
                    <td>${orderInstDetail.typebigNm}</td>
                </tr>
                <tr>
                    <th>기관중분류</th>
                    <td>${orderInstDetail.typemidNm}</td>
                    <th>기관소분류</th>
                    <td>${orderInstDetail.typesmlNm}</td>
                </tr>
                <tr>
                    <th>소재지</th>
                    <td>${orderInstDetail.locatstdNm}</td>
                </tr>
            </tbody>
        </table>
        <p><b>기관 발주 공고 내역</b> [총 ${orderPbancListCnt}건]</p>
        <table id="orderPbancListTable">
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
                        <td colspan="8">
                            조회된 데이터가 없습니다
                        </td>
                    </tr>
                </c:if>
                <c:forEach items="${orderPbancList}" var="orderPbanc" varStatus="status">
                    <tr>
                        <td>${orderPbanc.rnum}</td>
                        <td>[${orderPbanc.bidNtceNo}]<br><b>${orderPbanc.bidNtceNm}</b></td>
                        <td>${orderPbanc.bidNtceSttusNm}</td>
                        <td>${orderPbanc.bsnsDivNm}</td>
                        <td>${orderPbanc.ntceInsttNm}</td>
                        <td>${orderPbanc.dmndInsttNm}</td>
                        <td>${orderPbanc.presmptPrce}</td>
                        <td>${orderPbanc.bidNtceDate} ${orderPbanc.bidNtceBgn}</td>
                    </tr>
                </c:forEach>
            </tbody>
            <form id="orderPbancForm" name="orderPbancForm" action="/orderInst/retrieveOrderInstDetail.do?orgCd=${orderInstVo.orgCd}}">
                <input type="hidden" name="currentPageNo1" value="${currentPageNo1}" />
            </form>
            <c:if test="${orderPbancList.size() ne 0}">
                <ui:pagination paginationInfo="${orderInstVo}" type="text" jsFunction="fnPaging" />
            </c:if>
        </table>
        <p><b>물품 현황</b></p>
        <table id="">
        </table>
        <p><b>업종 현황</b></p>
        <table id="">
        </table>
        <div id="btnDiv">
            <button id="listBtn">목록</button>
        </div>
    </div>
</div>
</body>
</html>
