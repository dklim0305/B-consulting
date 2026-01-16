// 회원 등록 화면 이동
function goInsert() {
    location.href = '/login/insertForm.do';
}

// 회원 상세 화면 이동
function goDetail(userId) {
    location.href = '/login/detail.do?userId=' + userId;
}

// 회원 수정 화면 이동
function goUpdate(userId) {
    location.href = '/login/updateForm.do?userId=' + userId;
}

// 회원 삭제
function deleteLogin(userId) {
    if (!confirm('삭제하시겠습니까?')) {
        return;
    }

    $.ajax({
        url: '/login/delete.do',
        type: 'POST',
        data: { userId: userId },
        success: function(response) {
            if (response === 'success') {
                alert('삭제되었습니다.');
                location.reload();
            }
        },
        error: function() {
            alert('삭제 실패');
        }
    });
}