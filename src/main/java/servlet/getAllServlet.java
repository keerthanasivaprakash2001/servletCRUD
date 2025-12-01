package servlet;

import Dao.StudentService;
import entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class getAllServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        //  Employee employee = new Employee();
        StudentService std = new StudentService();
        Student student= std.getAllStudent(id);

        // Set content type to HTML
        resp.setContentType("text/html");

        // Write HTML content
        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<title>Employee Details</title>");
        resp.getWriter().println("<style>");
        resp.getWriter().println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; }");
        resp.getWriter().println(".container { width: 50%; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }");
        resp.getWriter().println("h2 { color: #333; }");
        resp.getWriter().println("p { font-size: 18px; }");
        resp.getWriter().println("</style>");
        resp.getWriter().println("</head>");
        resp.getWriter().println("<body>");
        resp.getWriter().println("<div class='container'>");
        resp.getWriter().println("<h2>Employee Details</h2>");
        resp.getWriter().println("<p><strong>ID:</strong> " + student.getStuddid() + "</p>");
        resp.getWriter().println("<p><strong>Name:</strong> " + student.getStudname()+ "</p>");
        resp.getWriter().println("<p><strong>Department:</strong> " + student.getDept()+ "</p>");
        resp.getWriter().println("</div>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }

}
