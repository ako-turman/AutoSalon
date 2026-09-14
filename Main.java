import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class Main {
    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/autosalon",
                    "root",
                    ""
            );
            Statement stmt = conn.createStatement();
            String sql = "SELECT brand, price FROM cars ORDER BY price DESC";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                System.out.println(rs.getString("brand") + " - " + rs.getInt("price"));
            }
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}