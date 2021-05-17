package com.memoreform.dao.impl;

import com.memoreform.dao.ExpertDAO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ExpertDAOImpl implements ExpertDAO {

  final
  SqlSessionTemplate sqlSession;

  public ExpertDAOImpl(SqlSessionTemplate sqlSessionTemplate) {
    this.sqlSession = sqlSessionTemplate;
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO requestVO) {
    return sqlSession.selectList("expert.getRequestList", requestVO);
  }

  @Override
  public List<ProposalVO> getProposalList(ProposalVO proposalVO) {
    return sqlSession.selectList("expert.getProposalList", proposalVO);
  }

  @Override
  public RequestVO getRequest(RequestVO requestVO) {
    return sqlSession.selectOne("expert.getRequest", requestVO);
  }

  @Override
  public ProposalVO getProposal(ProposalVO proposalVO) {
    return sqlSession.selectOne("expert.getProposal", proposalVO);
  }

  @Override
  public void insertProposal(ProposalVO proposalVO) {
    sqlSession.insert("expert.insertProposal", proposalVO);
  }
}
