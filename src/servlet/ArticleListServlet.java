package servlet;

import com.mchange.v2.beans.BeansUtils;
import dao.Impl.UserDaoImpl;
import dao.UserDao;
import doman.Manager;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet( "/ArticleListServlet")
public class ArticleListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("登陆");
        Map<String, String[]> map = request.getParameterMap();
        Manager manager = new Manager();
        try {
            BeanUtils.populate(manager,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        System.out.println("登陆用户"+manager);
        UserDaoImpl dao = new UserDaoImpl();
        System.out.println("--------------------------------------");
        if(dao.loginManager(manager)==null){
            request.setAttribute("login_msg","密码或用户名错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }else{
            request.getSession().setAttribute("name",manager.getManagername());
            request.getRequestDispatcher("/ShowServlet").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doPost(request,response);
    }
}
