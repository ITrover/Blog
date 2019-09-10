package test;

import dao.Impl.UserDaoImpl;
import dao.UserDao;
import doman.Blog;
import doman.Manager;
import org.junit.Test;

import java.util.List;

public class StepTest {
    @Test
    public void test(){
        UserDaoImpl dao = new UserDaoImpl();
        List<Blog> list = dao.search("测试");
        System.out.println(list);
    }
}
