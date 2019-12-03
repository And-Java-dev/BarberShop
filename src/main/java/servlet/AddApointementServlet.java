package servlet;

import manager.ApointementManager;
import manager.MasterManager;
import manager.ServiceManager;
import model.Apointment;
import model.Master;
import model.Service;
import util.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(urlPatterns = "/addAppointment")
public class AddApointementServlet extends HttpServlet {

    private ApointementManager apointementManager = new ApointementManager();
    private ServiceManager serviceManager = new ServiceManager();
    private MasterManager masterManager = new MasterManager();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String date = req.getParameter("date");
        String time = req.getParameter("time");
        String service_id = req.getParameter("service_id");
        String master_id = req.getParameter("master_id");
        String phoneNumber = req.getParameter("phoneNumber");
        String email = req.getParameter("email");
        int serviceId = Integer.parseInt(service_id);
        int masterId = Integer.parseInt(master_id);
        Service service = serviceManager.getServiceById(serviceId);
        Master master = masterManager.getMasterById(masterId);
        List<Apointment> allApointment = apointementManager.getAllApointmentByDate (date);
        Apointment apointment1 = Apointment.builder()
                .name(name)
                .time(DateUtil.stringConvertToTime(time))
                .service(service)
                .master(master)
                .phoneNumber(phoneNumber)
                .email(email)
                .date(DateUtil.stringConvertToDate(date))
                .build();
        boolean a = true;
        for (Apointment apointment : allApointment) {
            System.out.println(apointment1.getTime());
            System.out.println(apointment.getTime().plusMinutes(30));
            System.out.println(apointment.getTime().minusMinutes(30));
            System.out.println(apointment1.getTime().isAfter(apointment.getTime().plusMinutes(30)));
            System.out.println(apointment1.getTime().isBefore(apointment.getTime().minusMinutes(30)));
            if (DateUtil.stringConvertToTime(time).isAfter(apointment.getTime().plusMinutes(30)) ||
                    DateUtil.stringConvertToTime(time).isBefore(apointment.getTime().minusMinutes(30)) &&
                            DateUtil.stringConvertToTime(time) != apointment.getTime()) {
                a = true;
            } else {
                a = false;
                break;
            }
            System.out.println(a);
        }

        if (a || allApointment == null){
            apointementManager.add(apointment1);
            req.getRequestDispatcher("/sucssesAppoinmentAdd.jsp").forward(req, resp);
        }else{
            req.setAttribute("allAppointment",allApointment);
            req.getRequestDispatcher("/unSucssesApoinmentAdd.jsp").forward(req, resp);
        }
    }
}
