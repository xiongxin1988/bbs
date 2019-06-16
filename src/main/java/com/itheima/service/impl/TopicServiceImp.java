package com.itheima.service.impl;

import com.itheima.dao.IReplyDao;
import com.itheima.dao.ITopicDao;
import com.itheima.domain.BbsReply;
import com.itheima.domain.BbsTopic;
import com.itheima.service.ITopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TopicServiceImp implements ITopicService {

    @Autowired
    ITopicDao topicDao;
    @Autowired
    IReplyDao replyDao;

    @Transactional
    public void save(BbsTopic topic) {
        topicDao.save(topic);
    }

    @Transactional
    public void delete(BbsTopic topic) {
        topicDao.delete(topic);
        replyDao.deleteByTopicId(topic.getId());
    }




    @Transactional
    public BbsTopic findById(Integer id) {
        return topicDao.findById(id);
    }

    public List<BbsTopic> findAll() {
        return topicDao.findAll();
    }
}
