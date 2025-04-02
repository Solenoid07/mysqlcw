import java.sql.Connection;
import java.sql.DriverManager;

public class CRUD_Test {
    public static void main(String[] args) {
        CRUD_Test dbTest = new CRUD_Test();
        Connection conn = dbTest.getConnection();
        
        if (conn != null) {
            System.out.println("Database connected successfully!");
        } else {
            System.out.println("Failed to connect to the database.");
        }
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weekendDB", "root", "root");
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        return conn;
    }
}
