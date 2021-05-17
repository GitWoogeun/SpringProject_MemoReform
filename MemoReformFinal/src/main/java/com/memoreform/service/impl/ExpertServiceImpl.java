package com.memoreform.service.impl;

import com.memoreform.dao.ExpertDAO;
import com.memoreform.service.ExpertService;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class ExpertServiceImpl implements ExpertService {

  final
  ExpertDAO expertDAO;

  public ExpertServiceImpl(ExpertDAO expertDAO) {
    this.expertDAO = expertDAO;
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO requestVO) {
    return expertDAO.getRequestList(requestVO);
  }

  @Override
  public List<ProposalVO> getProposalList(ProposalVO proposalVO) {
    return expertDAO.getProposalList(proposalVO);
  }

  @Override
  public RequestVO getRequest(RequestVO requestVO) {
    return expertDAO.getRequest(requestVO);
  }

  @Override
  public ProposalVO getProposal(ProposalVO proposalVO) {
    return expertDAO.getProposal(proposalVO);
  }

  @Override
  public void insertProposal(ProposalVO proposalVO) {
    expertDAO.insertProposal(proposalVO);
  }

}
