package servlet;

import dao.Impl.UserDaoImpl;
import doman.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/changeServlet")
public class ChangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("重新编辑");
        String id = request.getParameter("id");
        if(!id.isEmpty()){
            //回显
            UserDaoImpl dao = new UserDaoImpl();
            Blog blog = dao.findById(Integer.parseInt(id));
            request.setAttribute("blog",blog);
            System.out.println("--------------------------------------");
            request.getRequestDispatcher("/edit.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doPost(request, response);
    }
}
