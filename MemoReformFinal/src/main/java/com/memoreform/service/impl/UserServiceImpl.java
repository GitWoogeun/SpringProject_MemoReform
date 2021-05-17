package com.memoreform.service.impl;

import com.memoreform.dao.impl.UserDAOImpl;
import com.memoreform.service.UserService;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

  private final UserDAOImpl userDAO;

  public UserServiceImpl(UserDAOImpl userDAO) {
    this.userDAO = userDAO;
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO requestVO) {
    return userDAO.getRequestList(requestVO);
  }

  @Override
  public List<RequestVO> getRequestListAdmin(RequestVO requestVO) {
    return userDAO.getRequestListAdmin(requestVO);
  }

  @Override
  public RequestVO getRequest(RequestVO requestVO) {
    return userDAO.getRequest(requestVO);
  }

  @Override
  public void insertRequest(RequestVO requestVO) {
    userDAO.insertRequest(requestVO);
  }

  @Override
  public void updateRequest(RequestVO requestVO) {
    userDAO.updateRequest(requestVO);
  }

  @Override
  public void deleteRequest(String no) {
    userDAO.deleteRequest(no);
  }

  @Override
  public ProposalVO getProposal(ProposalVO proposalVO) {
    return userDAO.getProposal(proposalVO);
  }

  @Override
  public void choiceProposal(RequestVO requestVO, ProposalVO proposalVO, DealingVO dealingVO) {
    userDAO.choiceProposal(requestVO, proposalVO, dealingVO);
  }


}
