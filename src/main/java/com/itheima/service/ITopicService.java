package com.itheima.service;

import com.itheima.domain.BbsReply;
import com.itheima.domain.BbsTopic;

import java.util.List;

public interface ITopicService {

    public void save(BbsTopic topic);

    public void delete(BbsTopic topic);

    public BbsTopic findById(Integer id);

    public List<BbsTopic> findAll();


}
