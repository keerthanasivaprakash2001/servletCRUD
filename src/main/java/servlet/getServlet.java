package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class getServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        //  Employee employee = new Employee();
        StudentService std = new StudentService();
        Student student= std.getStudent(id);
        System.out.println(student);
        req.setAttribute("student",student);
        req.getRequestDispatcher("getapi.jsp").forward(req,resp);



    }

}
