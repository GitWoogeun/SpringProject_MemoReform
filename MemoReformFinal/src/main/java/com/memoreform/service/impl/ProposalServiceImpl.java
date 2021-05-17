package com.memoreform.service.impl;

import com.memoreform.dao.ProposalDAO;
import com.memoreform.service.ProposalService;
import com.memoreform.vo.ProposalVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProposalServiceImpl implements ProposalService {

  final
  ProposalDAO dao;

  public ProposalServiceImpl(ProposalDAO dao) {
    this.dao = dao;
  }

  @Override
  public List<ProposalVO> getProposalList(ProposalVO vo) {
    return dao.getProposalList(vo);
  }

  @Override
  public ProposalVO getProposal(ProposalVO vo) {
    return dao.getProposal(vo);
  }

}
