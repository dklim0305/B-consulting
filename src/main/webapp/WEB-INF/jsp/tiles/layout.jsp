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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B-Consulting</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- 공통 CSS -->
    <style>
        /* 전체 레이아웃 */
        body {
            background-color: #ffffff;
            margin: 0;
            padding: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }

        #wrapper {
            padding: 20px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .page-inner {
            margin-top: 20px;
        }

        .page-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        /* 검색 필터 테이블 */
        .search-table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #dee2e6;
            margin-bottom: 20px;
            background-color: #ffffff;
        }

        .search-table th {
            background-color: #f8f9fa;
            padding: 12px;
            text-align: left;
            border: 1px solid #dee2e6;
            font-weight: 600;
            color: #495057;
            vertical-align: middle;
        }

        .search-table td {
            padding: 12px;
            border: 1px solid #dee2e6;
            vertical-align: middle;
        }

        .search-table input[type="text"],
        .search-table input[type="date"],
        .search-table input[type="number"],
        .search-table select {
            padding: 8px 12px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 14px;
        }

        .search-table input[type="text"]:focus,
        .search-table input[type="date"]:focus,
        .search-table input[type="number"]:focus,
        .search-table select:focus {
            outline: none;
            border-color: #80bdff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .search-table label {
            margin-right: 15px;
            font-size: 14px;
            cursor: pointer;
        }

        .search-table input[type="checkbox"] {
            margin-right: 5px;
            cursor: pointer;
        }

        /* 날짜 버튼 */
        .range-btn-group {
            margin-left: 10px;
        }

        .date_range_btn {
            padding: 6px 12px;
            margin-right: 5px;
            border: 1px solid #6c757d;
            background-color: #ffffff;
            color: #6c757d;
            border-radius: 4px;
            cursor: pointer;
            font-size: 13px;
            transition: all 0.2s;
        }

        .date_range_btn:hover {
            background-color: #6c757d;
            color: #ffffff;
        }

        .date_range_btn:active {
            background-color: #5a6268;
            border-color: #545b62;
        }

        /* 버튼 영역*/
        .btn-area {
            text-align: center;
            margin: 20px 0;
        }

        .btn-reset {
            padding: 10px 30px;
            margin-right: 10px;
            background-color: #6c757d;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.2s;
        }

        .btn-reset:hover {
            background-color: #5a6268;
        }

        .btn-search {
            padding: 10px 30px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.2s;
        }

        .btn-search:hover {
            background-color: #0056b3;
        }

        /* 결과 테이블*/
        .result-area {
            margin-top: 30px;
        }

        /* 검색 결과 카운트 */
        .result-count {
            text-align: right;
            margin-bottom: 10px;
            font-size: 14px;
            font-weight: 600;
            color: #495057;
        }

        .result-table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #dee2e6;
            background-color: #ffffff;
        }

        .result-table thead {
            background-color: #343a40;
            color: #ffffff;
        }

        .result-table th {
            padding: 12px;
            border: 1px solid #dee2e6;
            font-weight: 600;
            text-align: center;
        }

        .result-table td {
            padding: 12px;
            border: 1px solid #dee2e6;
            color: #495057;
        }

        .result-table tbody tr:hover {
            background-color: #f8f9fa;
        }

        .result-table a {
            color: #007bff;
            text-decoration: none;
        }

        .result-table a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* 페이징  */
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
            padding: 10px;
        }

        .pagination a {
            display: inline-block;
            padding: 8px 12px;
            margin: 0 3px;
            border: 1px solid #dee2e6;
            border-radius: 4px;
            color: #007bff;
            text-decoration: none;
            transition: all 0.2s;
        }

        .pagination a:hover {
            background-color: #007bff;
            color: #ffffff;
            border-color: #007bff;
        }

        .pagination .active {
            background-color: #007bff;
            color: #ffffff;
            border-color: #007bff;
        }

        /* 네비게이션 바 */
        .nav-link.dropdown-toggle::after {
            display: none !important;
        }

        .dropdown-item::before {
            content: none !important;
        }

        .dropdown-menu .dropdown-item {
            padding-left: 1rem !important;
        }
    </style>
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