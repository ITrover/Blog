package servlet;

import dao.Impl.UserDaoImpl;
import doman.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ShowFullBlog")
public class ShowFullBlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("查看博客");
        System.out.println("ShowFullBlog");
        String id = request.getParameter("id");
        System.out.println(id);
        UserDaoImpl dao = new UserDaoImpl();
        Blog blog = dao.findById(Integer.parseInt(id));
        request.setAttribute("blog",blog);
        System.out.println("--------------------------------------");
        request.getRequestDispatcher("/showBlog.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request, response);
    }
}
