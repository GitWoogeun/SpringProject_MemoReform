package com.memoreform.service;

import com.memoreform.vo.NoticeVO;
import java.util.List;

public interface NoticeService {

  List<NoticeVO> getNoticeList(NoticeVO vo);

  NoticeVO getNotice(NoticeVO vo);

  void insertNotice(NoticeVO vo);

  void updateNotice(NoticeVO vo);

  int updateCount(NoticeVO vo);

  void deleteNotice(NoticeVO vo);

}
