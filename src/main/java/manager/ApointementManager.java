package manager;

import db.DBConnectionProvider;
import model.Apointment;
import util.DateUtil;

import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class ApointementManager {

    private Connection connection;
    private ServiceManager serviceManager;
    private MasterManager masterManager;


    public ApointementManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
        serviceManager = new ServiceManager();
        masterManager = new MasterManager();

    }


    public void add(Apointment apointment) {
        String query = "INSERT INTO apointments(`name`,`time`,`service_id`,`master_id`, `phoneNumber`,`email`,`date` ) VALUES (?, ?, ?, ?, ?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, apointment.getName());
            preparedStatement.setString(2,DateUtil.timeConvertToString(apointment.getTime()) );
            preparedStatement.setInt(3,apointment.getService().getId() );
            preparedStatement.setInt(4, apointment.getMaster().getId());
            preparedStatement.setString(5, apointment.getPhoneNumber());
            preparedStatement.setString(6, apointment.getEmail());
            preparedStatement.setString(7,DateUtil.dateConvertToString(apointment.getDate()));


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("error during create statement:" + e);
        }

    }



    public List<Apointment> getAllApointment() {
        String query = "SELECT * FROM apointments";
        List<Apointment> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Apointment apointment = getApointmentFromResultSet(resultSet);
                result.add(apointment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<Apointment> getAllApointmentByDate( String date) {
        String query = "SELECT * FROM apointments where `date`='"+ date+"'";
        List<Apointment> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Apointment apointment = getApointmentFromResultSet(resultSet);
                result.add(apointment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return result;
    }

//    public void addBy(Apointment apointment1) {
//        String query = "INSERT INTO apointments(`name`,`time`,`service_id`,`master_id`, `phoneNumber`,`email`,`date` ) VALUES (?, ?, ?, ?, ?,?,?)";
//        List<Apointment> allApointment = getAllApointmentByDate (DateUtil.timeConvertToString(apointment1.getTime()));
//
//        for (Apointment apointment : allApointment) {
//            System.out.println(apointment1.getTime());
//            System.out.println(apointment.getTime().plusMinutes(30));
//            System.out.println(apointment.getTime().minusMinutes(30));
//            System.out.println(apointment1.getTime().isAfter(apointment.getTime().plusMinutes(30)));
//            System.out.println(apointment1.getTime().isBefore(apointment.getTime().minusMinutes(30)));
//            if (apointment1.getTime().isAfter(apointment.getTime().plusMinutes(30)) || apointment1.getTime().isBefore(apointment.getTime().minusMinutes(30))) {
//                a = true;
//
//            } else {
//                a = false;
//            }
//            System.out.println(a);
//        }
//
//        if (a){
//            apointementManager.add(apointment1);
//            req.getRequestDispatcher("index.jsp").forward(req, resp);
//        }else{
//            req.getRequestDispatcher("/adminHome.jsp").forward(req, resp);
//        }
//
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setString(1, apointment.getName());
//            preparedStatement.setString(2,DateUtil.timeConvertToString(apointment.getTime()) );
//            preparedStatement.setInt(3,apointment.getService().getId() );
//            preparedStatement.setInt(4, apointment.getMaster().getId());
//            preparedStatement.setString(5, apointment.getPhoneNumber());
//            preparedStatement.setString(6, apointment.getEmail());
//            preparedStatement.setString(7,DateUtil.dateConvertToString(apointment.getDate()));
//
//
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println("error during create statement:" + e);
//        }
//
//    }

//    public List<Apointment> getAllApointmentLimite() {
//        int d = 0;
//        int dd = 3;
//        String query = "SELECT * FROM apointments ORDER BY id DESC LIMIT 5++";
//        List<Apointment> result = new ArrayList<>();
//        try {
//            Statement statement = connection.createStatement();
//            ResultSet resultSet = statement.executeQuery(query);
//            while (resultSet.next()) {
//                Apointment apointment = getApointmentFromResultSet(resultSet);
//                result.add(apointment);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        return result;
//    }


    private Apointment getApointmentFromResultSet(ResultSet resultSet) throws SQLException, ParseException {
        return Apointment.builder()
                .id(resultSet.getInt(1))
                .name(resultSet.getString(2))
                .time(DateUtil.stringConvertToTime(resultSet.getString(3)))
                .service(serviceManager.getServiceById(resultSet.getInt(4)))
                .master(masterManager.getMasterById(resultSet.getInt(5)))
                .phoneNumber(resultSet.getString(6))
                .email(resultSet.getString(7))
                .date(DateUtil.stringConvertToDate(resultSet.getString(8)))
                .build();
    }
}
