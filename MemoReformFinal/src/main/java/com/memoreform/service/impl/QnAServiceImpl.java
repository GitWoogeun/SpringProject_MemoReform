package com.memoreform.service.impl;

import com.memoreform.dao.impl.QnADAOImpl;
import com.memoreform.service.QnAService;
import com.memoreform.vo.QnAVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class QnAServiceImpl implements QnAService {

  private final QnADAOImpl dao;

  public QnAServiceImpl(QnADAOImpl dao) {
    this.dao = dao;
  }

  @Override
  public List<QnAVO> getQnAList(QnAVO vo) {
    return dao.getQnAList(vo);
  }

  @Override
  public QnAVO getQnA(QnAVO vo) {
    return dao.getQnA(vo);
  }

  @Override
  public void insertQnA(QnAVO vo) {
    dao.insertQnA(vo);
  }

  public void updateQnA(QnAVO vo) {
    dao.updateQnA(vo);
  }

  public int updateCount(QnAVO vo) {
    return dao.updateCount(vo);
  }

  public void deleteQnA(QnAVO vo) {
    dao.deleteQnA(vo);
  }

}
