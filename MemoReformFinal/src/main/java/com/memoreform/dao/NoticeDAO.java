package com.memoreform.dao;

import com.memoreform.vo.NoticeVO;
import java.util.List;

public interface NoticeDAO {

  //공지사항 번호를 내림차순으로 정렬하는 쿼리 추상 메소드
  List<NoticeVO> getNoticeList(NoticeVO vo);

  //특정 공지사항을 확인 할수 있는 쿼리 추상메소드
  NoticeVO getNotice(NoticeVO vo);

  //공지사항에 작성한 글쓰기 DB에 저장 추상 메소드
  void insertNotice(NoticeVO vo);

  //특정 공지사항을 수정 할수 있는 쿠리 추상 메소드
  void updateNotice(NoticeVO vo);

  //공지사항을 클릭(확인)할 시 조회수를 증가 시켜주는 쿼리 추상 메소드
  int updateCount(NoticeVO vo);

  //특정 공지사항을 삭제 하는 쿼리 추상 메소드
  void deleteNotice(NoticeVO vo);
}
