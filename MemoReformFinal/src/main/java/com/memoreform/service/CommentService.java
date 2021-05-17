package com.memoreform.service;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface CommentService {

  //댓글 전체 가져오기
  List<QnAVO> getCommentList(QnAVO qnaVO);

  //댓글 DB에 저장
  void insertComment(QnAVO qnaVO);

  //댓글 삭제
  void deleteComment(QnAVO qnaVO);

  //댓글 수정하기
  void updateComment(QnAVO qnaVO);
}
