import java.time.LocalDateTime;

public class HelloWorld {
    public static void main(String[] args) {
        while (true) {
            LocalDateTime now = LocalDateTime.now();
            System.out.println(now);
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {}
        }
    }
}
