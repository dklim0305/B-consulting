<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-15
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>B-counsulting</title>

    <!-- Bootstrap -->
<%--    <link rel="stylesheet" href="<c:url value='/assets/lib/bootstrap-5.3.5-dist/css/bootstrap.min.css'/>" >--%>
<%--    <script src="<c:url value='/assets/lib/bootstrap-5.3.5-dist/js/bootstrap.bundle.min.js'/>"></script>--%>

    <!-- Bootstrap (테스트용 CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- 공통 CSS (프로젝트 내부 파일) -->
    <link href="<c:url value='/assets/css/app.css'/>" rel="stylesheet" />
</head>

<body>
    <!-- 상단 네비 -->
    <tiles:insertAttribute name="navBar" />

    <!-- 본문 -->
    <main class="container-fluid py-3">
        <tiles:insertAttribute name="body" />
    </main>

    <!-- Bootstrap JS (bundle) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
