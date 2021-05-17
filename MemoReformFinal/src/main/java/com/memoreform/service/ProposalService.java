package com.memoreform.service;

import com.memoreform.vo.ProposalVO;
import java.util.List;

public interface ProposalService {

  List<ProposalVO> getProposalList(ProposalVO vo);

  ProposalVO getProposal(ProposalVO vo);
}
