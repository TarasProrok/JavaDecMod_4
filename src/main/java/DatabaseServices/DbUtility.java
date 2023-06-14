package DatabaseServices;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class DbUtility {
    public static String getFilesLines(String fileName) {

        String result = "";
        try {
            result = Files.readString(Path.of(fileName));
        } catch (IOException e) {
            System.out.println("Error read file " + fileName);
        }

        return result;
    }
}
