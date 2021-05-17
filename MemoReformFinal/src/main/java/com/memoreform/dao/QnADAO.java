package com.memoreform.dao;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface QnADAO {

  //QNA 리스트를 내림차순 정렬을 후 보여주는 쿼리 추상 메소드
  List<QnAVO> getQnAList(QnAVO vo);

  //특정 QNA를 보여주는 쿼리 추상 메소드
  QnAVO getQnA(QnAVO vo);

  //작성한 QNA를 DB에 저장 해주는 쿼리 추상 메소드
  int insertQnA(QnAVO vo);

  //작성된 QNA를 제목, 내용, 날짜(당시시간으로)을 수정할수 있는 쿼리 추상 메소드
  int updateQnA(QnAVO vo);

  //작성된 QNA를 클릭시 조회수 1증가 시켜주는 업데이트 쿼리
  int updateCount(QnAVO vo);

  //작성된 QNA를 삭제 시켜주는 쿼리
  int deleteQnA(QnAVO vo);
}
