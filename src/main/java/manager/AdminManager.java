package manager;

import db.DBConnectionProvider;
import model.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

public class AdminManager {


    private Connection connection;



    public AdminManager() {
        connection = DBConnectionProvider.getInstance().getConnection();


    }

    public Admin getAdminByEmailAndPassword(String email, String password) {
        String query = "SELECT * FROM `admins` WHERE `email` =?  AND `password` =?;";

        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return getAdminFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


    private Admin getAdminFromResultSet(ResultSet resultSet) throws SQLException, ParseException {
        return Admin.builder()
                .id(resultSet.getInt(1))
                .email(resultSet.getString(2))
                .password(resultSet.getString(3))
                .build();
    }
}
