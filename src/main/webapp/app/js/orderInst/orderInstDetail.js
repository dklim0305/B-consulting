$(function() {

    // 검색
    $("#searchBtn").on("click", function() {
        $("#searchForm").submit();
    })

    // 초기화
    $("#initBtn").on("click", function() {
        $("#fullNm").val("");
        console.log("초기화")
    })

});

// 한 페이지당 보여줄 게시물 갯수
function fnSelectPage() {
    $("#currentPageNo").val(1);
    $("#searchForm").submit();
}

// 페이지 이동
function fnPaging(page) {
    $("#currentPageNo").val(page);
    $("#searchForm").submit();
}

