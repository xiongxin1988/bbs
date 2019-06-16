package com.itheima.dao;

import com.itheima.domain.BbsTopic;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ITopicDao {

    //    @Select()
//    保存一个主题帖子
    @Insert("insert into bbs_topic(name,subject,content,createtime) values(#{name},#{subject},#{content},now())")
    public void save(BbsTopic topic);
//删除帖子
    @Delete("delete from bbs_topic where id = #{id}")
    public void delete(BbsTopic topic);

    /*
    展示
     */
    @Select("select id,name,subject,content,createtime from bbs_topic order by createtime asc")
    @Results({
            @Result(id=true,column="id",property="id"),
            @Result(column="name",property="name"),
            @Result(column="subject",property="subject"),
            @Result(column="id",property="replies",
                    many=@Many(select="com.itheima.dao.IReplyDao.findAllByTopicId",
                    fetchType= FetchType.LAZY))
    })
    public List<BbsTopic> findAll();

    /*
    查询单个帖子
     */
    @Select("select id,name,subject,content,createtime from bbs_topic where id = #{id}")
    public BbsTopic findById(Integer id);


}
