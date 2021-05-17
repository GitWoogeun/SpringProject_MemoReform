package com.memoreform.dao.impl;

import com.memoreform.vo.QnAVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAOImpl {

  private final SqlSessionTemplate mybatis;

  public CommentDAOImpl(SqlSessionTemplate mybatis) {
    this.mybatis = mybatis;
  }

  //댓글 DB에서 불러오기
  //mybatis = DB연결 , mybatis에 있는 select * from문 호출해서 DAO에 적용
  public List<QnAVO> getCommentList(QnAVO qnaVO) {
    System.out.println("===>> mybatis getCommentList()호출");
    return mybatis.selectList("comment.getCommentList", qnaVO);
  }

  //댓글 DB에 저장하기
  //mybatis = DB연결 , mybatis에 있는 insert문 호출해서 DAO에 적용
  public void insertComment(QnAVO qnaVO) {
    System.out.println("====> mybatis insertComment()호출");
    mybatis.insert("comment.insertComment", qnaVO);
  }

  //댓글 DB에서 삭제하기
  //mybatis = DB연결 , mybatis에 있는 delete from qna_reply 호출해서 DAO에 적용
  public void deleteComment(QnAVO qnaVO) {
    System.out.println("===> mybatis deleteComment()호출");
    mybatis.delete("comment.deleteComment", qnaVO);
  }

  //댓글 DB에서 수정하기
  //mybatis = DB연결 , mybatis에 있는 updateComment 호출해서 DAO에 적용
  public void updateComment(QnAVO qnaVO) {
    System.out.println("=>>>>>>>>>>>>mybatis.updateComment() 호출");
    mybatis.update("comment.updateComment", qnaVO);
  }
}
