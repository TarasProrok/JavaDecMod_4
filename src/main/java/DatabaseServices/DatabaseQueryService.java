package DatabaseServices;

import SqlClasses.LongestProjectClient;
import SqlClasses.MaxProjectCountClient;
import SqlClasses.MaxSaleryWorkerClient;
import SqlClasses.YoungestEldestWorkerClient;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseQueryService {

    public List<MaxProjectCountClient> findMaxProjectsClient() {
        List<MaxProjectCountClient> result = new ArrayList<>();
        String sql = DbUtility.getFilesLines("sql/find_max_projects_client.sql");

        new ExecuteSql().QueExecute(sql, resultSet -> {
            try {
                while (resultSet.next()) {
                    MaxProjectCountClient maxProjectCountClient = new MaxProjectCountClient();
                    maxProjectCountClient.setProjectCount(resultSet.getInt("cnt"));
                    maxProjectCountClient.setName(resultSet.getString("name"));
                    result.add(maxProjectCountClient);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
        return result;
    }

    public List<LongestProjectClient> findLongestProject() {
        List<LongestProjectClient> result = new ArrayList<>();
        String sql = DbUtility.getFilesLines("sql/find_longest_project.sql");

        new ExecuteSql().QueExecute(sql, resultSet -> {
            try {
                while (resultSet.next()) {
                    LongestProjectClient longestProjectClient = new LongestProjectClient();
                    longestProjectClient.setMonthCount(resultSet.getInt("month_count"));
                    longestProjectClient.setName(resultSet.getString("name"));
                    result.add(longestProjectClient);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
        return result;
    }

    public List<MaxSaleryWorkerClient> findMaxSalaryWorker() {
        List<MaxSaleryWorkerClient> result = new ArrayList<>();
        String sql = DbUtility.getFilesLines("sql/find_max_salary_worker.sql");

        new ExecuteSql().QueExecute(sql, resultSet -> {
            try {
                while (resultSet.next()) {
                    MaxSaleryWorkerClient maxSaleryWorkerClient = new MaxSaleryWorkerClient();
                    maxSaleryWorkerClient.setName(resultSet.getString("name"));
                    maxSaleryWorkerClient.setSalery(resultSet.getInt("salary"));
                    result.add(maxSaleryWorkerClient);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
        return result;
    }

    public List<YoungestEldestWorkerClient> findYoungestEldestWorker() {
        List<YoungestEldestWorkerClient> result = new ArrayList<>();
        String sql = DbUtility.getFilesLines("sql/find_youngest_eldest_workers.sql");

        new ExecuteSql().QueExecute(sql, resultSet -> {
            try {
                while(resultSet.next()) {
                    YoungestEldestWorkerClient youngestEldestWorkerClient = new YoungestEldestWorkerClient();
                    youngestEldestWorkerClient.setName(resultSet.getString("name"));
                    youngestEldestWorkerClient.setType(resultSet.getString("type"));
                    youngestEldestWorkerClient.setDob(resultSet.getDate("birthday"));
                    result.add(youngestEldestWorkerClient);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        });
        return result;
    }
}
