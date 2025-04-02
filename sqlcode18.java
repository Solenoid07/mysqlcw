package CRUD;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
    public static void main(String[] args) {
        DB_Connection dbConn = new DB_Connection();
        System.out.println(dbConn.connectToDB());
    }

    public Connection connectToDB() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_crud", "root", "root");
        } catch (Exception e) {
            System.out.println("Database connection error: " + e.getMessage());
        }
        return conn;
    }
}


package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CRUD_Test {
    public static void main(String[] args) {
        CRUD_Test crudOperations = new CRUD_Test();
        
        // Insert new records
        crudOperations.insertRecord("101", "Aman", "aman123@gmail.com");
        crudOperations.insertRecord("102", "Priya", "priya456@gmail.com");
        
        // Read records
        crudOperations.fetchRecords();
        
        // Update record
        crudOperations.modifyRecord("102", "202", "Priya Sharma", "priya_sharma@gmail.com");
        
        // Delete record
        crudOperations.removeRecord("101");
    }

    // Method to insert data
    public void insertRecord(String id, String name, String email) {
        DB_Connection db = new DB_Connection();
        Connection conn = db.connectToDB();
        PreparedStatement stmt = null;

        try {
            String sql = "INSERT INTO users(id, name, email) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.setString(2, name);
            stmt.setString(3, email);
            stmt.executeUpdate();
            System.out.println("Record added: " + stmt);
        } catch (Exception e) {
            System.out.println("Insert error: " + e.getMessage());
        }
    }

    // Method to read data
    public void fetchRecords() {
        DB_Connection db = new DB_Connection();
        Connection conn = db.connectToDB();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM users";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println("ID: " + rs.getString("id"));
                System.out.println("Name: " + rs.getString("name"));
                System.out.println("Email: " + rs.getString("email"));
                System.out.println("---------------------");
            }
        } catch (Exception e) {
            System.out.println("Read error: " + e.getMessage());
        }
    }

    // Method to update data
    public void modifyRecord(String id, String newID, String name, String email) {
        DB_Connection db = new DB_Connection();
        Connection conn = db.connectToDB();
        PreparedStatement stmt = null;

        try {
            String sql = "UPDATE users SET id=?, name=?, email=? WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, newID);
            stmt.setString(2, name);
            stmt.setString(3, email);
            stmt.setString(4, id);
            stmt.executeUpdate();
            System.out.println("Updated record: " + stmt);
        } catch (Exception e) {
            System.out.println("Update error: " + e.getMessage());
        }
    }

    // Method to delete data
    public void removeRecord(String id) {
        DB_Connection db = new DB_Connection();
        Connection conn = db.connectToDB();
        PreparedStatement stmt = null;

        try {
            String sql = "DELETE FROM users WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.executeUpdate();
            System.out.println("Deleted record: " + stmt);
        } catch (Exception e) {
            System.out.println("Delete error: " + e.getMessage());
        }
    }
}


