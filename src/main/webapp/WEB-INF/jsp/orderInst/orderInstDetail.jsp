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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/app/js/orderInst/orderInstDetail.js"></script>

<div id="wrapper">
    <div class="header">
        <h1 class="page-title"></h1>
    </div>
    <div class="page-inner">
        <table id="orderInstInfoTable" class="result-table">
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
                    <td colspan="3">${orderInstDetail.locatstdNm}</td>
                </tr>
            </tbody>
        </table>
        <jsp:include page="/page/orderInstPbancList.do">
            <jsp:param name="dmndInsttCd" value="${orderInstDetail.orgCd}" />
        </jsp:include>
        <jsp:include page="/page/orderInstBidPtcpEntList.do" />
        <jsp:include page="/page/orderInstSucsfEntList.do" />
        <div id="btnDiv">
            <button id="listBtn" class="btn btn-secondary">목록</button>
        </div>
    </div>
</div>
