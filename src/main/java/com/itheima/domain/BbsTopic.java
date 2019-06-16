package com.itheima.domain;

import java.util.Date;
import java.util.List;

public class BbsTopic {
    private Integer id;
    private String name;
    private String subject;
    private String content;



    private Date createtime;
    private List<BbsReply> replies;

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

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public List<BbsReply> getReplies() {
        return replies;
    }

    public void setReplies(List<BbsReply> replies) {
        this.replies = replies;
    }
}
