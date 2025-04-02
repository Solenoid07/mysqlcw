import java.sql.*;

public class JDBC {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  
            System.out.println("11111");
            
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/friday", "root", "root");
            // Here "friday" is the database name, "root" is username, and "root" is password
            
            System.out.println("22222");
            
            Statement stmt = con.createStatement();
            System.out.println("33333");
            
            ResultSet rs = stmt.executeQuery("SELECT * FROM student");
            
            while (rs.next()) {
                System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));
            }
            
            con.close();
        } catch (Exception e) {
            System.out.println("Shubham, check your program. There is a small error: " + e.getMessage());
        }
    }
}
