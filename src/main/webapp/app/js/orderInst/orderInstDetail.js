$(function() {

    // 목록
    $("#listBtn").on("click", function() {
        location.href = "/orderInst/retrieveOrderInstList.do";
    })
});

// 기관 발주 공고 내역 페이징
function fnPaging1(page) {
    console.log(page)
    $("#pbancArea").load(
        "/page/orderInstPbancList.do"
        + "?dmndInsttCd=" + $("#dmndInsttCd").val()
        + "&currentPageNo=" + page
    );
}

// 입찰 참여 기업 페이징
function fnPaging2(page) {
    $("#bidPtcpEntArea").load(
        "/page/orderInstBidPtcpEntList.do"
        + "?orgCd=" + $("#orgCd").val()
        + "&currentPageNo=" + page
    );
}

// 낙찰 기업 페이징
function fnPaging3(page) {
    $("#sucsfEntArea").load(
        "/page/orderInstSucsfEntList.do"
        + "?orgCd=" + $("#orgCd").val()
        + "&currentPageNo=" + page
    );
}