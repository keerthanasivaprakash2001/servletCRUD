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
        Student existing = std1.getAllStudent(id);

        existing.setStudname(req.getParameter("name"));
        existing.setDept(req.getParameter("dept"));

        std1.updateStudent(existing);






    }
}
