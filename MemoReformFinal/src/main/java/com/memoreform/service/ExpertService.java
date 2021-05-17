package com.memoreform.service;

import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface ExpertService {

  List<RequestVO> getRequestList(RequestVO requestVO);

  List<ProposalVO> getProposalList(ProposalVO proposalVO);

  RequestVO getRequest(RequestVO requestVO);

  ProposalVO getProposal(ProposalVO proposalVO);

  void insertProposal(ProposalVO proposalVO);

}
