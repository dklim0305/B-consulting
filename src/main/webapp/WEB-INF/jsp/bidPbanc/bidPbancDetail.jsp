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
        <h1 class="page-title">${bidPbancListCnt}</h1>
    </div>
    <div class="page-inner">
        <form id="searchForm" name="searchForm" action="bidPbanc/retrieveBidPbancList.do">
            <table>
                <tbody>
                    <tr>
                        <th></th>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>

</body>
</html>
