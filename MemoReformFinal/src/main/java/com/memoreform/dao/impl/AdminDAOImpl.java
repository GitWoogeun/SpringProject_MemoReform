package com.memoreform.dao.impl;

import com.memoreform.dao.AdminDAO;
import com.memoreform.vo.CountVO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO {

  //session 적용
  final
  SqlSessionTemplate sqlSession;

  public AdminDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  @Override
  public List<MemberVO> getUserList(MemberVO vo) {
    return sqlSession.selectList("admin.getUserList");
  }

  @Override
  public List<MemberVO> getExpertList(MemberVO vo) {
    return sqlSession.selectList("admin.getExpertList");
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO vo) {
    return sqlSession.selectList("admin.getRequestList");
  }

  @Override
  public List<ProposalVO> getProposalList(ProposalVO vo) {
    return sqlSession.selectList("admin.getProposalList");
  }

  @Override
  public CountVO getCount(CountVO vo) {
    return sqlSession.selectOne("admin.getCount", vo);
  }

  @Override
  public List<CountVO> getUserCount(CountVO countVO) {
    return sqlSession.selectList("admin.getUserCount");
  }

  @Override
  public List<CountVO> getExpertCount(CountVO countVO) {
    return sqlSession.selectList("admin.getExpertCount");
  }

  @Override
  public List<CountVO> getRequestCount(CountVO countVO) {
    return sqlSession.selectList("admin.getRequestCount");
  }

  @Override
  public List<CountVO> getProposalCount(CountVO countVO) {
    return sqlSession.selectList("admin.getProposalCount");
  }

  @Override
  public List<DealingVO> getDealingCount(DealingVO dealingVO) {
    return sqlSession.selectList("admin.getDealList");
  }
}
