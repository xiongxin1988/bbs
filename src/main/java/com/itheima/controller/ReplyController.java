package com.itheima.controller;

import com.itheima.domain.BbsReply;
import com.itheima.domain.BbsTopic;
import com.itheima.service.IReplyService;
import com.itheima.service.ITopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReplyController {

    @Autowired
    IReplyService replyService;
    @Autowired
    ITopicService topicService;

    /*
        留言回复
     */
    @RequestMapping("/topic/reply")
    public ModelAndView topicReply(BbsTopic topic) {
        return new ModelAndView("topic_reply")
                .addObject("replies", replyService.findAllByTopicId(topic.getId()))
                .addObject("topic", topicService.findById(topic.getId()));
    }

    @RequestMapping("/topic/reply/save")
    public ModelAndView topicSave(BbsReply reply) {
        replyService.save(reply);
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping("/topic/reply/delete")
    public ModelAndView topicDelete(BbsReply reply) {
        replyService.deleteById(reply.getId());
        return new ModelAndView("redirect:/index");
    }



}

