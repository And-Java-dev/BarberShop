package servlet;



import manager.ApointementManager;
import manager.MasterManager;
import manager.ServiceManager;
import model.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/adminHome")
public class AdminHomeServlet extends HttpServlet {

    private ServiceManager serviceManager = new ServiceManager();
    private MasterManager masterManager = new MasterManager();
    private ApointementManager apointementManager = new ApointementManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null ) {
            resp.sendRedirect("home.jsp");
        } else {
            req.setAttribute("masters", masterManager.getAllMaster());
            req.setAttribute("services", serviceManager.getAllservice());
            req.setAttribute("allAponitment", apointementManager.getAllApointment());
            req.getRequestDispatcher("/adminHome.jsp").forward(req, resp);

        }

    }
}
