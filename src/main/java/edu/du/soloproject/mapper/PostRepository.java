package edu.du.soloproject.mapper;

import edu.du.soloproject.model.Post;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PostRepository {

    @Select("SELECT id, title, content, author, created_at as createdAt, updated_at as updatedAt FROM posts")
    List<Post> getAllPosts();

    @Select("SELECT id, title, content, author, created_at as createdAt, updated_at as updatedAt FROM posts WHERE id=#{id}")
    Post getPostById(int id);

    @Insert("INSERT INTO posts (title, content, author, created_at) VALUES (#{title}, #{content}, #{author}, NOW())")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void insertPost(Post post);

    @Update("UPDATE posts SET title=#{title}, content=#{content}, updated_at = NOW() WHERE id=#{id}")
    void updatePost(Post post);

    @Delete("DELETE FROM posts WHERE id=#{id}")
    void deletePost(int id);
}