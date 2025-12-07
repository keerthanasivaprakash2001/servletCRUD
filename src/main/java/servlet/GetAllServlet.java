package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class GetAllServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService studentService = new StudentService();
        List<Student> allStudent = studentService.getALlStudent();
        req.setAttribute("student",allStudent);

        System.out.println("Fetching All Students Servlet Triggered!");
        System.out.println(allStudent);

        req.getRequestDispatcher("viewStudents.jsp").forward(req, resp);

    }
}
