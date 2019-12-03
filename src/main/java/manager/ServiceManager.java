package manager;

import db.DBConnectionProvider;
import model.Service;


import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class ServiceManager {


    private Connection connection;


    public ServiceManager() {
        connection = DBConnectionProvider.getInstance().getConnection();

    }

    public void add(Service service) {
        String query = "INSERT INTO services(`name`,`description`,`imagePath`,`price`) VALUES (?, ?, ?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, service.getName());
            preparedStatement.setString(2, service.getDescription());
            preparedStatement.setString(3, service.getImagePath());
            preparedStatement.setDouble(4, service.getPrice());


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("error during create statement:" + e);
        }

    }

    public List<Service> getAllservice() {
        String query = "SELECT * FROM services";
        List<Service> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Service service = getServiceFromResultSet(resultSet);
                result.add(service);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return result;
    }


    public Service getServiceById(int id) {
        String query = "SELECT * FROM services where id=?";

        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return getServiceFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Service getServiceFromResultSet(ResultSet resultSet) throws SQLException, ParseException {
        return Service.builder()
                .id(resultSet.getInt(1))
                .name(resultSet.getString(2))
                .description(resultSet.getString(3))
                .imagePath(resultSet.getString(4))
                .price(resultSet.getDouble(5))
                .build();
    }
}
