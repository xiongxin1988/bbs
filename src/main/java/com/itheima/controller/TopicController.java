package com.itheima.controller;






import com.itheima.domain.BbsTopic;
import com.itheima.service.ITopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TopicController {

    @Autowired
    ITopicService topicService;

    @RequestMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("index")
                .addObject("topics",topicService.findAll());
    }

    @RequestMapping("/topic/add")
    public ModelAndView topicAdd() {
        return new ModelAndView("topic_add");
    }

    @RequestMapping("/topic/delete")
    public ModelAndView topicDelete(BbsTopic topic) {
        topicService.delete(topic);
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping("/topic/save")
    public ModelAndView topicSave(BbsTopic topic) {
        topicService.save(topic);
        return new ModelAndView("redirect:/index");
    }

}
