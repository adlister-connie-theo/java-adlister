import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class JDBCLecture {
    public static void main(String[] args) {
//        connection, statement, execute, resultset, dont forget to close, pass sql to execute
        //connections are expensive
        Connection connection = null;
        try {
            System.out.println("creating connection...");
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    "jdbc:mysql://studentdb.fulgentcorp.com:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                    "codeup",
                    "codeup"
            );

            //statement
            Statement st = connection.createStatement();
            //execute
            ResultSet dogs = st.executeQuery("select * from dogs order by id");
//            dogs.next(); //move to spot first record
//            System.out.println(dogs.getString("name"));

//            dogs.next(); //move to daisy second record
//            System.out.println(dogs.getString("name"));

//            dogs.next(); //move to oblivion
//            System.out.println(dogs.getString("name"));
            while(dogs.next()) {

                    Dog dog = makeDogFromResultSet(dogs);

                System.out.println(dog);
            }

            //inserting a record
            String sql = """
            insert into dogs (name, age, gender)
            values ('Thug', 7, 'M')
            """;
            System.out.println("insert returned " + st.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS));

            ResultSet keys = st.getGeneratedKeys();
            keys.next();
            long newKey = keys.getLong(1);
            System.out.println(newKey);
            keys.close();
            st.close();

            //close when you are done
            dogs.close();
            st.close();




        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                System.out.println("closing connection...");
                connection.close();
            } catch (SQLException e) {
//                throw new RuntimeException(e);
            }

        }
    }

    private static Dog makeDogFromResultSet(ResultSet dogs) throws SQLException {
        Dog dog = new Dog(
                dogs.getLong("id"),
                dogs.getString("name"),
                dogs.getInt("age"),
                dogs.getString("gender")
        );
        return dog;
    }
}
