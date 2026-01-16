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
            <h1>기본 정보</h1>
            <tbody>
                <tr>
                    <th>기관명</th>
                    <td>${orderInstDetail.fullNm}</td>
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
    </div>
</div>
</body>
</html>
