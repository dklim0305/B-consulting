<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-08
  Time: 오후 5:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 목록</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h2>회원 목록</h2>

    <button type="button" onclick="goInsert()">회원 등록</button>

    <table border="1">
        <thead>
             <tr>
                <th>사용자ID</th>
                <th>사용자명</th>
                <th>이메일</th>
                <th>전화번호</th>
                <th>등록일시</th>
                <th>관리</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${list}">
                <tr>
                    <td>${item.userId}</td>
                    <td>${item.userNm}</td>
                    <td>${item.email}</td>
                    <td>${item.phone}</td>
                    <td>${item.regDt}</td>
                    <td>
                        <button type="button" onclick="goUpdate('${item.userId}')">수정</button>
                        <button type="button" onclick="deleteLogin('${item.userId}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <script src="<c:url value='/app/js/login/LoginList.js'/>"></script>
</body>
</html>
