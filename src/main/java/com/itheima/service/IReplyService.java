package com.itheima.service;

import com.itheima.domain.BbsReply;
import com.itheima.domain.BbsTopic;

import java.util.List;

public interface IReplyService {

    public void save(BbsReply reply);

    public void deleteById(Integer id);

    public void deleteByTopicId(Integer topicId);

    public List<BbsReply> findAllByTopicId(Integer topicId);

}
