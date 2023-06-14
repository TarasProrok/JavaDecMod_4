package DatabaseServices;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.function.Consumer;

public class ExecuteSql {
    public void QueExecute (String sql, Consumer<ResultSet> consumer) {
        Database database = Database.getInstance();

        try (Connection connection = database.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            consumer.accept(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
