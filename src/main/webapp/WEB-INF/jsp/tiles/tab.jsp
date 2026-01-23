<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2026-01-22
  Time: 오후 4:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- 탭 목록 파싱 --%>
<c:set var="tabList" value="${fn:split(param.tabs, ',')}" />

<div class="tab-container" style="margin-bottom: 20px; border-bottom: 2px solid #ddd;">
    <c:forEach var="tabItem" items="${tabList}">
        <c:set var="tabData" value="${fn:split(tabItem, ':')}" />
        <c:set var="tabName" value="${tabData[0]}" />
        <c:set var="tabUrl" value="${tabData[1]}" />
        <c:set var="isActive" value="${param.activeTab == tabName}" />

        <button type="button" class="tab-btn ${isActive ? 'active' : ''}" onclick="location.href='${tabUrl}'"
                style="padding: 10px 20px;
                        border: none;
                        background: ${isActive ? '#fff' : '#f5f5f5'};
                        border-bottom: ${isActive ? '3px solid #e74c3c' : 'none'};
                        font-weight: ${isActive ? 'bold' : 'normal'};
                        cursor: pointer;">
                ${tabName}
        </button>
    </c:forEach>
</div>
