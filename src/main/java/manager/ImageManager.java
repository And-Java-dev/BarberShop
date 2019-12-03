package manager;

import db.DBConnectionProvider;
import model.Image;

import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class ImageManager {

    private Connection connection;



    public ImageManager() {
        connection = DBConnectionProvider.getInstance().getConnection();


    }

    public void add(Image image) {
        String query = "INSERT INTO image(`imgPath`) VALUES (?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, image.getImgPath());



            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("error during create statement:" + e);
        }

    }

    public List<Image> getAllImage() {
        String query = "SELECT * FROM image";
        List<Image> result = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Image image = getMasterFromResultSet(resultSet);
                result.add(image);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return result;
    }


    private Image getMasterFromResultSet(ResultSet resultSet) throws SQLException, ParseException {
        return Image.builder()
                .imgPath(resultSet.getString(1))
                .build();
    }
}
