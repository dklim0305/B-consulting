<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-16
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand fw-semibold" href="<c:url value='/'/>">B-Consulting</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="topNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#>">공고</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">입찰기업</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">발주기관</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
