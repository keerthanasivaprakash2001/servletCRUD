package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Student student = new Student();
    student.setStuddid(Integer.valueOf(req.getParameter("id")));
        student.setStudname(req.getParameter("name"));
        student.setDept(req.getParameter("dept"));

        StudentService std = new StudentService();
        std.addStudent(student);






    }
}
