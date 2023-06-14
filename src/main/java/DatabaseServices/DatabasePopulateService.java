package DatabaseServices;

public class DatabasePopulateService {
    public static void main(String[] args) {
        Database database = Database.getInstance();
        database.executeSqlFile("sql/populate_db.sql");
    }
}
