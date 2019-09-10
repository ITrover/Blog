package dao.Impl;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
import dao.UserDao;
import doman.Blog;
import doman.Manager;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.List;
import java.util.jar.JarEntry;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public Manager loginManager(Manager manager) {
        String sql="select * from manager where managername = ? and password = ?";
        try{
            Manager manager1 = new Manager();
            manager1= template.queryForObject(sql, new BeanPropertyRowMapper<>(Manager.class), manager.getManagername(),manager.getPassword());
            return  manager1;
        }catch (Exception e){
            return null;
        }
    }

    @Override
    public void addBlog(Blog blog) {
          String sql ="insert into blog (owner,title,date,content) values (?,?,?,?)";
          template.update(sql,blog.getOwner(),blog.getTitle(),blog.getDate(),blog.getContent());
    }

    @Override
    public List<Blog> findAllBlog() {
        String sql = "select * from blog";
        return template.query(sql,new BeanPropertyRowMapper<Blog>(Blog.class));
    }

    @Override
    public Blog findById(int id) {
        String sql = "select * from blog where id = ?";
        return template.queryForObject(sql,new BeanPropertyRowMapper<Blog>(Blog.class),id);
    }

    @Override
    public void deleteById(int id) {
          String sql ="delete from blog where id=?";
          template.update(sql,id);
    }

    @Override
    public List<Blog> search(String searchStr) {
        String sql = "select * from blog where title = ? or owner =?";
        return template.query(sql,new BeanPropertyRowMapper<Blog>(Blog.class),searchStr,searchStr);
    }

}
