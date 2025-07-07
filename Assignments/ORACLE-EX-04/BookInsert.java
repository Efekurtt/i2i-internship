import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

public class BookInsert {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@35.239.137.9:1521:XE";
        String username = "sys as sysdba";
        String password = "ORACLE";

        String sql = "INSERT INTO BOOK (ID, NAME, ISBN) VALUES (?, ?, ?)";
        Random random = new Random();

        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            PreparedStatement stmt = conn.prepareStatement(sql);

            for (int i = 1; i <= 100; i++) {
                String name = "Book" + random.nextInt(10000);
                String isbn = "ISBN" + random.nextInt(100000);

                stmt.setInt(1, i);
                stmt.setString(2, name);
                stmt.setString(3, isbn);
                stmt.executeUpdate();
            }

            stmt.close();
            conn.close();
            System.out.println("100 book records inserted successfully.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
