package servlet;


import manager.MasterManager;
import model.Master;
import model.MasterStatus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/changeMasterStatus")
public class ChangeMasterStatusServlet  extends HttpServlet {
MasterManager masterManager= new MasterManager();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String status = req.getParameter("status");
        String master_id = req.getParameter("master_id");
        int id = Integer.parseInt(master_id);
        Master master = masterManager.getMasterById(id);
        masterManager.changeMasterStatus(master.getId(), MasterStatus.valueOf(status));
        resp.sendRedirect("/adminHome");
    }
}
