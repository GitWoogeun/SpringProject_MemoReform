package com.memoreform.service.impl;

import com.memoreform.dao.impl.CommentDAOImpl;
import com.memoreform.service.CommentService;
import com.memoreform.vo.QnAVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

  private final CommentDAOImpl commentDAO;

  public CommentServiceImpl(CommentDAOImpl commentDAO) {
    this.commentDAO = commentDAO;
  }

  //DAO에서 넘겨받은 insertComment()를 Controller로 연결
  @Override
  public void insertComment(QnAVO qnaVO) {
    System.out.println("=>>>>>>>>>>>>>>>>>>>>>Service()");
    commentDAO.insertComment(qnaVO);
  }

  //DB에 저장된 댓글들을 전체 불러오기(List)로 불러오기
  @Override
  public List<QnAVO> getCommentList(QnAVO qnaVO) {
    System.out.println("=>>>>>>getCommentList()호출");
    return commentDAO.getCommentList(qnaVO);
  }

  @Override
  public void deleteComment(QnAVO qnaVO) {
    System.out.println("=>>>>>>>deleteComment() Service호출");
    commentDAO.deleteComment(qnaVO);
  }

  @Override
  public void updateComment(QnAVO qnaVO) {
    System.out.println("=>>>>>>>>updateComment() Service호출");
    commentDAO.updateComment(qnaVO);
  }
}
