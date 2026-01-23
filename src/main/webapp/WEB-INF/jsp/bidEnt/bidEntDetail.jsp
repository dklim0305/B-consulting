<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 26. 1. 21.
  Time: 오후 1:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/app/js/bidEnt/bidEntDetail.js"></script>
<html>
<head>
    <title>입찰 기업</title>
</head>
<body>
<div id="wrapper">
    <div class="header">
        <h1 class="page-title">${bidEntDetail.corpName} 기본 정보</h1>
    </div>
    <div class="page-inner">
        <table id="bidEngInfoTable">
            <tbody>
                <tr>
                    <th>기업명</th>
                    <td>${bidEntDetail.corpName}</td>
                    <th>대표자명</th>
                    <td>${bidEntDetail.ceoNm}</td>
                </tr>
                <tr>
                    <th>사업자등록번호</th>
                    <td>
                        ${bidEntDetail.bizrNo}
                        <input type="hidden" id="bizrNo" value="${bidEntDetail.bizrNo}">
                    </td>
                    <th>설립일</th>
                    <td>${bidEntDetail.estDt}</td>
                </tr>
                <tr>
                    <th>전화번호</th>
                    <td>${bidEntDetail.phnNo}</td>
                    <th>팩스번호</th>
                    <td>${bidEntDetail.faxNo}</td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td>${bidEntDetail.adres}</td>
                    <th>홈페이지</th>
                    <td>
                        <a href="//${fn:trim(bidEntDetail.hmUrl)}" target="_blank">${fn:trim(bidEntDetail.hmUrl)}</a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div id="btnDiv">
            <button id="listBtn">목록</button>
        </div>
        <br>
        <p><b>업체 입찰 내역</b></p>
        <p>최근 낙찰 공고 [총 건]</p>
        <table>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>공고명 / 업종</th>
                    <th>공고기관 / 수요기관</th>
                    <th>공고일시</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        <br>
        <p>참여 입찰 내역 [총 건]</p>
        <table>
            <thead>
            <tr>
                <th>번호</th>
                <th>공고명 / 업종</th>
                <th>공고기관 / 수요기관</th>
                <th>공고일시</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        <br>
        <p><b>입찰 참여 물품 현황</b></p>
        <table>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>물품 | 물품상태분류번호</th>
                    <th>참여갯수</th>
                    <th>낙찰갯수</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        <br>
        <p><b>입찰 참여 업종 현황</b></p>
        <table>
            <thead>
                <tr>
                    <th>순위</th>
                    <th>업종</th>
                    <th>참여갯수</th>
                    <th>낙찰갯수</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
