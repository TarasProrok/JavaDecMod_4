package DatabaseServices;

public class DatabaseInitService {
    public static void main(String[] args) {
        Database database = Database.getInstance();
        database.executeSqlFile("sql/init_db.sql");
    }
}
