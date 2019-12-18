package servlet;

import service.UserHibernateServiceImpl;
import service.UserService;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        Long id = Long.parseLong(request.getParameter("id"));
        userService.deleteUser(id);

        response.sendRedirect(request.getContextPath() + "/");
        //request.getRequestDispatcher("/").forward(request, response);

    }
}
