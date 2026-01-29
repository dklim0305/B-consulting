$(function () {
    // 날짜 포맷 (YYYY-MM-DD)
    function formatDate(date) {
        var year = date.getFullYear();
        var month = ('0' + (date.getMonth() + 1)).slice(-2);
        var day = ('0' + date.getDate()).slice(-2);
        return year + '-' + month + '-' + day;
    }


    // 날짜 버튼 클릭 이벤트
    $('.date_range_btn').on('click', function () {
        var range = $(this).data('range');

        if (range === 'all') {
            // 전체
            var today = new Date();
            var oldDay = new Date('2019-01-01');

            $('#startDate').val(formatDate(oldDay));
            $('#endDate').val(formatDate(today));
            return;
        }

        // 숫자 변환
        range = Number(range);

        // 당일
        if (range === 0) {
            // 당일
            var today = formatDate(new Date());
            $('#startDate').val(today);
            $('#endDate').val(today);
            return;
        }

        // 7일, 1개월, 6개월, 1년
        var endDate = new Date();
        var startDate = new Date();
        startDate.setDate(endDate.getDate() - range);

        $('#startDate').val(formatDate(startDate));
        $('#endDate').val(formatDate(endDate));
    });

    // 초기화 버튼 클릭
    $('#resetBtn').on('click',function () {
        $('#searchForm')[0].reset();

        $('#bidNtceNm').val('');
        $('#bidNtceNo').val('');
        $('#ntceInsttNm').val('');
        $('#dmndInsttNm').val('');
        $('#minPrce').val('');
        $('#maxPrce').val('');

        // 날짜 초기화
        var today = new Date();
        var sevenDaysAgo = new Date();
        sevenDaysAgo.setDate(today.getDate() - 6);

        $('#startDate').val(formatDate(sevenDaysAgo));
        $('#endDate').val(formatDate(today));

        $('input[name="bsnsDivNmArray"]').prop('checked', true);
        $('input[name="cntrctCnclsMthdNmArray"]').prop('checked', true);
        $('input[name="bidNtceSttusNmArray"]').prop('checked', true);

        $form.find('input[name="resetFlag"]').remove();
        $form.append('<input type="hidden" name="resetFlag" value="true">');

        $form.submit();


    });

    $('#searchBtn').on('click', function (e) {
        var minPrice = $('minPrice').val();
        var maxPrice = $('maxPrice').val();

        if ((minPrice && !maxPrice) || (!minPrice && maxPrice)) {
            e.preventDefault();
            alert('추정가격은 최소와 최대를 모두 입력하세요.');
            return false;
        }

        if (minPrice && maxPrice) {
            if (parseFloat(minPrice) > parseFloat(maxPrice)) {
                e.preventDefault();
                alert(`최소 가격이 최대 가격보다 클 수 없습니다.`)
                return false;
            }
        }
    })

    // 페이징 처리
    window.fnPaging = function (pageNo) {
        var $form = $('#searchForm');

        $form.find('input[name="currentPageNo"]').remove();

        $form.append('<input type="hidden" name="currentPageNo" value="' + pageNo + '">');

        $form.submit();
    };
})