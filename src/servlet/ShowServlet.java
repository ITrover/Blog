package servlet;

import dao.Impl.UserDaoImpl;
import doman.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( "/ShowServlet")
public class ShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("显示首页");
        UserDaoImpl dao = new UserDaoImpl();
        String searchStr = request.getParameter("searchStr");
        System.out.println(searchStr);
        List<Blog> allBlog;
        if(searchStr == null || searchStr.isEmpty()){
            //找出全部
            allBlog= dao.findAllBlog();
        }else{
            //指定搜索
           allBlog =  dao.search(searchStr);
        }
        request.setAttribute("allBlog",allBlog);
        System.out.println("--------------------------------------");
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request,response);
}
}
