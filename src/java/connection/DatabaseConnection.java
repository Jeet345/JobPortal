package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
public class DatabaseConnection {

    public static Connection initializeDatabase() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {

        String connectionURL = "jdbc:mysql://localhost:3306/jobportal";
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        connection = DriverManager.getConnection(connectionURL, "root", "");

        return connection;
    }

}
