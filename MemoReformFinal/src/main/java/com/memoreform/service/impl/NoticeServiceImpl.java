package com.memoreform.service.impl;

import com.memoreform.dao.impl.NoticeDAOImpl;
import com.memoreform.service.NoticeService;
import com.memoreform.vo.NoticeVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {

  private final NoticeDAOImpl dao;

  public NoticeServiceImpl(NoticeDAOImpl noticeDAO) {
    this.dao = noticeDAO;
  }

  @Override
  public List<NoticeVO> getNoticeList(NoticeVO vo) {
    return dao.getNoticeList(vo);
  }

  @Override
  public NoticeVO getNotice(NoticeVO vo) {
    return dao.getNotice(vo);
  }

  @Override
  public void insertNotice(NoticeVO vo) {
    dao.insertNotice(vo);
  }

  @Override
  public void updateNotice(NoticeVO vo) {
    dao.updateNotice(vo);
  }

  @Override
  public int updateCount(NoticeVO vo) {
    return dao.updateCount(vo);
  }

  @Override
  public void deleteNotice(NoticeVO vo) {
    dao.deleteNotice(vo);
  }
}
