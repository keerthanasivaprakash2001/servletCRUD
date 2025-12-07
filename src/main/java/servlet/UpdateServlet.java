package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        StudentService std1= new StudentService();
        Student existing = std1.getStudent(id);

        existing.setStudname(req.getParameter("name"));
        existing.setDept(req.getParameter("dept"));

        if (existing != null) {
            existing.setStudname(req.getParameter("name"));
            existing.setDept(req.getParameter("dept"));

            std1.updateStudent(existing);

            req.setAttribute("student", existing);
            req.setAttribute("message", "Student Updated Successfully!");

        } else {
            req.setAttribute("message", "Student Not Found!");
        }

        req.getRequestDispatcher("updateSuccess.jsp").forward(req, resp);
    }






    }

