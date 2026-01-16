package com.oke.app.orderInst;

import java.util.List;

public interface OrderInstSvc {

    // 발주기관 목록갯수조회
    int retrieveOrderInstListCnt(OrderInstVo orderInstVo);
    // 발주기관 목록조회
    List<OrderInstVo> retrieveOrderInstList(OrderInstVo orderInstVo);
    // 기관 분류 조회
    List<OrderInstVo> retrieveOrderInstClsf();
    // 발주기관 상세조회
    OrderInstVo retrieveOrderInstDetail(OrderInstVo orderInstVo);
}
