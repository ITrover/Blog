package servlet;

import dao.Impl.UserDaoImpl;
import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        System.out.println("删除");
        String id = request.getParameter("id");
        System.out.println("删除的博客id"+id);
        UserDaoImpl dao = new UserDaoImpl();
        dao.deleteById(Integer.parseInt(id));
        System.out.println("--------------------------------------");
        request.getRequestDispatcher(request.getContextPath()+"/ShowServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
