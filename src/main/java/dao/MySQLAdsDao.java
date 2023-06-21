package dao;

import com.mysql.cj.jdbc.Driver;
import models.Ad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class MySQLAdsDao implements Ads {
    private Connection connection;


    public MySQLAdsDao(Config config) {
        try {
            System.out.println("Creating connection...");
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Ad> all() {
        // 0. declare new array list
        List<Ad> ads = new ArrayList<>();

        try {
            // 1. make a statement
            Statement st = connection.createStatement();
            // 2. execute select query to grab all ads
            ResultSet adData = st.executeQuery("SELECT * FROM ads");
            // 3. iterate over results
            while (adData.next()) {
                // 4. for each record make an ad object and add it to array list
                Ad ad = makeAdFromResultSet(adData);
                ads.add(ad);
//                System.out.println(adData);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // 5. return array list
        System.out.println(ads);
        return ads;
    }

    private Ad makeAdFromResultSet(ResultSet adData) throws SQLException {

        Ad ad = new Ad(
                adData.getLong("id"),
                adData.getLong("user_id"),
                adData.getString("title"),
                adData.getString("description")
        );
        return ad;
    }

    @Override
    public Long insert(Ad ad) {
        Long newId;
        try {
            //1. make a statement
            Statement st = connection.createStatement();

            //2. execute the insert
            String query = "INSERT INTO ads (title, user_id, description) VALUES ('"
                    + ad.getTitle() + "', "
                    + ad.getUserId() + ", '"
                    + ad.getDescription()
                    + "')";
            st.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            // 3. get the id of the newly inserted record
            ResultSet keys = st.getGeneratedKeys();
            keys.next();
            newId = keys.getLong(1);
            return newId;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
//    public Long insert(Ad ad) {
//        try {
//            String query = "INSERT INTO ads (title, user_id, description) VALUES ('"
//                    + ad.getTitle() + "', "
//                    + ad.getUserId() + ", '"
//                    + ad.getDescription()
//                    + "')";
////            String query = "INSERT INTO ads (id, title, user_id, description) VALUES (11, 'nintendo46 for sale', 1, 'brand new in box')";
//            Statement st = connection.createStatement();
//            st.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
//            ResultSet keys =  st.getGeneratedKeys();
//            keys.next();
//            long newKey = keys.getLong(1);
//            return newKey;
//
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }

}
