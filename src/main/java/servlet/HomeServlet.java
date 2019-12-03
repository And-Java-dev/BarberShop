package servlet;


import manager.ImageManager;
import manager.MasterManager;
import manager.ServiceManager;
import model.Image;
import model.Master;
import model.MasterStatus;
import model.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

    private ServiceManager serviceManager = new ServiceManager();
    private MasterManager masterManager = new MasterManager();
    private ImageManager imageManager = new ImageManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        List<Service> allService = serviceManager.getAllservice();
        List<Master> allMaster  = masterManager.getMasterByStatus(MasterStatus.FREE.name());
        List<Image> allImage  = imageManager.getAllImage();
        req.getSession().setAttribute("allService", allService);
        req.getSession().setAttribute("allMaster", allMaster);
        req.getSession().setAttribute("allImage", allImage);
        req.getRequestDispatcher("home.jsp").forward(req, resp);

    }
}
