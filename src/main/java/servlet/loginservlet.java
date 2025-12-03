package servlet;

import Dao.StudentService;
import entity.Student;
import entity.UserLogin;
import jakarta.persistence.TypedQuery;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class loginservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        StudentService studentService = new StudentService();
        UserLogin loginuser = studentService.loginuser(name, password);

        if(loginuser!=null){
            if(loginuser.getRole().equalsIgnoreCase("admin")){
                HttpSession session = req.getSession();
                session.setAttribute("loginuser", loginuser);
                session.setAttribute("password", password);
                resp.sendRedirect(req.getContextPath()+"/dashboard.jsp");
            }
            else if(loginuser.getRole().equalsIgnoreCase("user")){
                HttpSession session = req.getSession();
                session.setAttribute("loginuser", loginuser);
                session.setAttribute("password", password);
                resp.sendRedirect(req.getContextPath()+"/userdashboard.jsp");
            }
            else {
                req.setAttribute("error", "Invalid Credentials!");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }


    }
}
