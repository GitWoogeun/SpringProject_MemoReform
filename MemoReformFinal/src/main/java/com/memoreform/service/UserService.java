package com.memoreform.service;

import com.memoreform.vo.DealingVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface UserService {

  List<RequestVO> getRequestList(RequestVO requestVO);

  List<RequestVO> getRequestListAdmin(RequestVO requestVO);

  RequestVO getRequest(RequestVO requestVO);

  void insertRequest(RequestVO requestVO);

  void updateRequest(RequestVO requestVO);

  void deleteRequest(String no);

  ProposalVO getProposal(ProposalVO proposalVO);

  void choiceProposal(RequestVO requestVO, ProposalVO proposalVO, DealingVO dealingVO);

}
