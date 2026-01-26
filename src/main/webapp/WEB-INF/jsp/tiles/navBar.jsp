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

    <%-- 상단 내비 부분 3등분 --%>
    <div class="container-fluid nav-3col">

        <%-- 왼쪽 영역 --%>
        <div class="nav-left">
            <a class="navbar-brand brand-title" href="<c:url value='/'/>">B-Consulting</a>
        </div>

        <%-- 가운데 영역 --%>
        <div class="nav-center">
            <div class="collapse navbar-collapse justify-content-center" id="topNav">
                <ul class="navbar-nav main-menu">
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" id="pbancDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">공고</a>
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

        <%-- 오른쪽 영역 --%>
        <div class="nav-right">

        </div>

        <button class="navbar-toggler ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#topNav"
                aria-controls="topNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    </div>
</nav>

<style>
    /* 타이틀 크기 조절 */
    .brand-title {
        font-size: 30px;
        font-weight: 700;
    }

    /* 3분할 레이아웃: 좌 / 중 / 우 */
    .nav-3col {
        display: grid;
        grid-template-columns: auto 1fr auto;
        align-items: center;
        column-gap: 16px;
    }

    .nav-left { justify-self: start; }
    .nav-center { justify-self: center; }
    .nav-right {
        width: 180px;
        justify-self: end;
    }

    /* 메뉴 중앙 정렬 */
    .main-menu .nav-link {
        font-size: 30px;
        margin: 0 40px;
        font-weight: 500;
    }

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