<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-09
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 수정</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h2>회원 수정</h2>

    <form id="updateForm">
        <table border="1">
            <tr>
                <th>사용자ID</th>
                <td><input type="text" id="userId" name="userId" value="${login.userId}" readonly /></td>
            </tr>

            <tr>
                <th>비밀번호</th>
                <td><input type="password" id="userPw" name="userPw" value="${login.userPw}" required /></td>
            </tr>

            <tr>
                <th>사용자명</th>
                <td><input type="text" id="userNm" name="userNm" value="${login.userNm}" required /></td>
            </tr>

            <tr>
                <th>이메일</th>
                <td><input type="email" id="email" name="email" value="${login.email}" /></td>
            </tr>

            <tr>
                <th>전화번호</th>
                <td><input type="text" id="phone" name="phone" value="${login.phone}" /></td>
            </tr>
        </table>

        <button type="button" onclick="updateLogin()">수정</button>
        <button type="button" onclick="goList()">목록</button>
    </form>

    <script src="<c:url value='/app/js/login/LoginUpdate.js'/>"></script>
</body>
</html>
