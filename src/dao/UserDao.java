package dao;

import doman.Blog;
import doman.Manager;

import java.util.List;

public interface UserDao {
    /**
     * 管理员登陆
     * @param manager
     * @return
     */
     public Manager loginManager(Manager manager);

    /**
     * 添加博客
     * @param blog
     */
     public void addBlog(Blog blog);

    /**
     * 找到所有的博客并返回
     * @return
     */
     public List<Blog> findAllBlog();

    /**
     * 通过id找博客，并返回
     * @param id
     * @return
     */
     public Blog findById(int id);

    /**
     * 删除指定id的博客
     * @param id
     */
    void deleteById(int id);

    /**
     * 搜索博客
     * @param searchStr
     * @return
     */
    List<Blog> search(String searchStr);
}
