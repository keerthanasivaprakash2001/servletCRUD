package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeleteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        StudentService std1= new StudentService();

        if (std1 != null) {
            std1.deleteStudent(id);
            req.setAttribute("student", std1);
            req.setAttribute("message", "Employee Deleted Successfully!");
        } else {
            req.setAttribute("message", "No Employee Found!");
        }

        req.getRequestDispatcher("deleteSuccess.jsp").forward(req, resp);
    }
    }

