package com.memoreform.dao.impl;

import com.memoreform.dao.ProposalDAO;
import com.memoreform.vo.ProposalVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProposalDAOImpl implements ProposalDAO {

  final
  SqlSessionTemplate sqlSession;

  public ProposalDAOImpl(SqlSessionTemplate sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<ProposalVO> getProposalList(ProposalVO vo) {
    return sqlSession.selectList("proposal.getProposalList", vo);
  }

  public ProposalVO getProposal(ProposalVO vo) {
    return sqlSession.selectOne("proposal.getProposal", vo);
  }
}
