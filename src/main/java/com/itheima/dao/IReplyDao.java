package com.itheima.dao;

import com.itheima.domain.BbsReply;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IReplyDao {

    /*
    保存跟帖
     */
    @Insert("insert into bbs_reply(name,topic_id,content,createtime) values(#{name},#{topic.id},#{content},now())")
    public void save(BbsReply reply);

    /*
    删除跟帖
     */
    @Delete("delete from bbs_reply where id = #{id}")
    public void delete(Integer id);

    /*
    根据topicid
     */
    @Delete("delete from bbs_reply where topic_id = #{topicId}")
    public void deleteByTopicId(Integer topicId);

    /**
     * 根据topicID查询回复
     * @param topicId
     * @return
     */
    @Select("select id,name,topic_id as topicId,content,createtime from bbs_reply where topic_id = #{topicId}  order by createtime asc")
    public List<BbsReply> findAllByTopicId(Integer topicId);

}
