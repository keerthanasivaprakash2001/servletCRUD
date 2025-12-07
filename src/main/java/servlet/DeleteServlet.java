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
       // Student std1 = new Student();

        Student student = std1.getStudent(id);

        if (student != null) {
            std1.deleteStudent(id);
            req.setAttribute("student", student);
            req.setAttribute("message", "Student Deleted Successfully!");
            req.getRequestDispatcher("deleteSuccess.jsp").forward(req, resp);
        } else {
            req.setAttribute("message1", "No Employee Found!");
            req.getRequestDispatcher("deletefailure.jsp").forward(req, resp);
        }


    }
    }

