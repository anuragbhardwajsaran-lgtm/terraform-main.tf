import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Utility class for writing content to a file.
 * Creates parent directories if they do not exist.
 */
public class WriteFileUtility {

    /**
     * Writes the given content to the specified file path.
     *
     * @param path    File path where content should be written
     * @param content Content to write into the file
     */
    public static void writeFile(String path, String content) {
        try {
            Path filePath = Paths.get(path);

            // Create parent directories if they don't exist
            if (filePath.getParent() != null) {
                Files.createDirectories(filePath.getParent());
            }

            // Write content to file
            Files.write(filePath, content.getBytes());

            System.out.println("File written successfully at: " + filePath);

        } catch (IOException e) {
            throw new RuntimeException("File writing failed", e);
        }
    }

    // Example usage (Optional - can remove if not required)
    public static void main(String[] args) {
        String filePath = "output/sample.txt";
        String content = "Hello, this is Mpocket assignment task.";

        writeFile(filePath, content);
    }
}
