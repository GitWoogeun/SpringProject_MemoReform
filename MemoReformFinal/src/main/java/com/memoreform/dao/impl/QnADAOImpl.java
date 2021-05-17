package com.memoreform.dao.impl;

import com.memoreform.dao.QnADAO;
import com.memoreform.vo.QnAVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class QnADAOImpl implements QnADAO {

  final
  SqlSessionTemplate sqlSession;

  public QnADAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<QnAVO> getQnAList(QnAVO vo) {
    return sqlSession.selectList("qna.getQnAList", vo);
  }

  public QnAVO getQnA(QnAVO vo) {
    return sqlSession.selectOne("qna.getQnA", vo);
  }

  public int insertQnA(QnAVO vo) {
    return sqlSession.insert("qna.insertQnA", vo);
  }

  public int updateQnA(QnAVO vo) {
    return sqlSession.update("qna.updateQnA", vo);
  }

  public int updateCount(QnAVO vo) {
    return sqlSession.update("qna.updateCount", vo);
  }

  public int deleteQnA(QnAVO vo) {
    return sqlSession.delete("qna.deleteQnA", vo);
  }
}
