package com.itheima.domain;

import java.util.Date;

public class BbsReply {
    private Integer id;
    private String name;
    private String content;
    private Date createtime;
    private BbsTopic topic;

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public BbsTopic getTopic() {
        return topic;
    }

    public void setTopic(BbsTopic topic) {
        this.topic = topic;
    }
}
