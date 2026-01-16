//회원 등록
function saveLogin() {
    const loginData = {
        userId : $('#userId').val(),
        userPw : $('#userPw').val(),
        userNm : $('#userNm').val(),
        email : $('#email').val(),
        phone : $('#phone').val()

    };

    //필수값 체크
    if (!loginData.userId || !loginData.userPw || !loginData.userNm) {
        alert('필수 항목을 입력해주세요.');
        return;
    }

    $.ajax({
        url : '/login/insert.do',
        type : 'POST',
        contentType : 'application/json',
        data : JSON.stringify(loginData),
        success : function (response) {
            if (response === 'success') {
                alert('등록이되었습니다.');
                location.href = '/login/list.do';
            }
        },
        error : function () {
            alert('등록 실패');
        }
    });
}

// 목록으로 이동
function goList() {
    location.href = '/login/list.do';
}