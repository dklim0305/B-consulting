// 회원 수정
function updateLogin() {
    const loginData = {
        userId : $('#userId').val(),
        userPw : $('#userPw').val(),
        userNm : $('#userNm').val(),
        email : $('#email').val(),
        phone : $('#phone').val()
    }

    // 필수값 체크
    if (!loginData.userPw || !loginData.userNm) {
        alert('필수 항목을 입력하여주세요.');
        return;
    }

    if (!confirm('수정하시겠습니까?')) {
        return;
    }

    $.ajax({
        url: '/login/update.do',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(loginData),
        success: function(response) {
            if (response === 'success') {
                alert('수정되었습니다.');
                location.href = '/login/list.do';
            }
        },
        error: function() {
            alert('수정 실패');
        }
    });
}

// 목록으로 이동
function goList() {
    location.href = '/login/list.do';
}