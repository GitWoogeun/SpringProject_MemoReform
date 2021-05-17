package com.memoreform.dao.impl;

import com.memoreform.dao.NoticeDAO;
import com.memoreform.vo.NoticeVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

  final
  SqlSessionTemplate sqlSession;

  public NoticeDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<NoticeVO> getNoticeList(NoticeVO vo) {
    return sqlSession.selectList("notice.getNoticeList", vo);
  }

  public NoticeVO getNotice(NoticeVO vo) {
    return sqlSession.selectOne("notice.getNotice", vo);
  }

  public void insertNotice(NoticeVO vo) {
    sqlSession.insert("notice.insertNotice", vo);
  }

  public void updateNotice(NoticeVO vo) {
    sqlSession.update("notice.updateNotice", vo);
  }

  public int updateCount(NoticeVO vo) {
    return sqlSession.update("notice.updateCount", vo);
  }

  public void deleteNotice(NoticeVO vo) {
    sqlSession.delete("notice.deleteNotice", vo);
  }
}
