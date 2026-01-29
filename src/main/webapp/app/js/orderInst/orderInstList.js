$(function() {

    // 검색
    $("#searchBtn").on("click", function() {
        $("#currentPageNo").val(1);
        $("#searchForm").submit();
    })

    // 초기화
    $("#initBtn").on("click", function() {
        $("#fullNm").val("");
        $("input[type=checkbox]").prop("checked", false);
    })

});

// 한 페이지당 보여줄 게시물 갯수
function fnSelectPage() {
    $("#currentPageNo").val(1);
    $("#searchForm").submit();
}

// 정렬 기준
function fnSelectSortStandard() {
    $("#currentPageNo").val(1);
    $("#searchForm").submit();
}

// 정렬 차순
function fnSelectSortOrder() {
    $("#currentPageNo").val(1);
    $("#searchForm").submit();
}

// 페이지 이동
function fnPaging(page) {
    $("#currentPageNo").val(page);
    $("#searchForm").submit();
}

