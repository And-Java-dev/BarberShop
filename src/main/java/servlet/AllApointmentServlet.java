package servlet;

import manager.ApointementManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/allAppointment")
public class AllApointmentServlet extends HttpServlet {

    private ApointementManager apointementManager = new ApointementManager();


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


            req.setAttribute("allAponitment", apointementManager.getAllApointment());
            req.getRequestDispatcher("/WEB-INF/allAppoinment.jsp").forward(req, resp);

    }
}
