package com.memoreform.dao;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface CommentDAO {

  //댓글 전체 불러오기
  List<QnAVO> getCommentList(QnAVO qnaVO);

  //댓글 DB에 저장
  void insertComment();

  //댓글 삭제
  void deleteComment(QnAVO qnaVO);

  //댓글 수정하기
  int updateComment(QnAVO qnaVO);
}
