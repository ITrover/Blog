package servlet;

import dao.Impl.UserDaoImpl;
import doman.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.datatransfer.DataFlavor;
import java.io.IOException;
import java.util.Date;

@WebServlet("/edited")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("编辑");
        Blog blog = new Blog();
        blog.setTitle(request.getParameter("title"));
//        blog.setDate(new Date(request.getParameter("date")));
        blog.setDate(new Date());
        blog.setContent(request.getParameter("content"));
        String owner = (String) request.getSession().getAttribute("name");
        blog.setOwner(owner);
        UserDaoImpl dao = new UserDaoImpl();
        dao.addBlog(blog);
        System.out.println("--------------------------------------");
        request.getRequestDispatcher("/ShowServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
