package com.memoreform.dao.impl;

import com.memoreform.dao.UserDAO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

  final
  SqlSessionTemplate sqlSession;

  public UserDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<RequestVO> getRequestList(RequestVO vo) {
    return sqlSession.selectList("user.getRequestList", vo);
  }

  @Override
  public List<RequestVO> getRequestListAdmin(RequestVO vo) {
    return sqlSession.selectList("user.getRequestListAdmin", vo);
  }

  public RequestVO getRequest(RequestVO vo) {
    return sqlSession.selectOne("user.getRequest", vo);
  }

  @Override
  public void insertRequest(RequestVO vo) {
    sqlSession.insert("user.insertRequest", vo);
  }

  @Override
  public void updateRequest(RequestVO vo) {
    sqlSession.update("user.updateRequest", vo);
  }

  @Override
  public void deleteRequest(String no) {
    sqlSession.delete("user.deleteRequest", no);
  }

  @Override
  public ProposalVO getProposal(ProposalVO proposalVO) {
    return sqlSession.selectOne("user.getProposal", proposalVO);
  }

  public void choiceProposal(RequestVO requestVO, ProposalVO proposalVO, DealingVO dealingVO) {
    sqlSession.update("user.choiceRequest", requestVO);
    sqlSession.update("user.choiceProposal", proposalVO);
    sqlSession.update("user.insertDealing", dealingVO);
  }
}
