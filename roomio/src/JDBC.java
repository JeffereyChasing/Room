import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC {

    public static void main(String[] args) throws Exception {

        //1. registering driver

        Class.forName("com.mysql.cj.jdbc.Driver");

        //2. getting connection

        String url = "jdbc:mysql://127.0.0.1:3306/roomio";
        String username = "root";
        String password = "2001518Wu";

        Connection connection = DriverManager.getConnection(url,username,password);

        //3. defining sql query

        String sql = "update users set first_name = 'oi' where gender = 2";

        //4. object that execute sql query
        Statement statement = connection.createStatement();

        //5. executing sql query

        int count = statement.executeUpdate(sql);//row that are affected
        System.out.println(count);


        //6. closing
        statement.close();
        connection.close();
    }
}
