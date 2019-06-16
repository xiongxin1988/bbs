package com.itheima.service.impl;

import com.itheima.dao.IReplyDao;
import com.itheima.domain.BbsReply;
import com.itheima.domain.BbsTopic;
import com.itheima.service.IReplyService;
import com.itheima.service.ITopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReplyServiceImp implements IReplyService {

    @Autowired
    IReplyDao replyDao;

    @Transactional
    public void save(BbsReply reply) {
        replyDao.save(reply);
    }

    @Transactional
    public void deleteById(Integer id) {
        replyDao.delete(id);
    }

    @Transactional
    public void deleteByTopicId(Integer topicId) {
        replyDao.deleteByTopicId(topicId);
    }

    @Transactional(readOnly = true)
    public List<BbsReply> findAllByTopicId(Integer topicId) {
        return replyDao.findAllByTopicId(topicId);
    }

}
