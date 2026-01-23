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
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="pbancDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">공고</a>
                    <ul class="dropdown-menu" aria-labelledby="pbancDropdown">
                        <li><a class="dropdown-item" href="/bidPbanc/retrieveBidPbancList.do">입찰공고</a></li>
                        <li><a class="dropdown-item" href="/bidPbanc/retrieveBidResultList.do">공고결과</a></li>
                    </ul>
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

<style>
    /* 드롭다운 가로 배치 */
    .dropdown-menu {
        display: none;
        flex-direction: row !important;
        padding: 0;
    }

    .dropdown-menu.show {
        display: flex !important;
    }

    .dropdown-menu .dropdown-item {
        padding: 10px 20px;
        white-space: nowrap;
        border-right: 1px solid #ddd;
    }

    .dropdown-menu .dropdown-item:last-child {
        border-right: none;
    }

    /* 활성화된 드롭다운 항목 스타일 */
    .dropdown-item.active {
        background-color: #0d6efd;
        color: white;
        font-weight: bold;
    }

    /* 메인 메뉴 활성화 */
    .nav-link.active {
        font-weight: bold;
        text-decoration: underline;
    }
</style>