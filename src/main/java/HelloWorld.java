import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class HelloWorld {
    public static void main(String[] args) {
        List objList = new ArrayList<Object>();
        long i = 0;
        while (true) {
            // LocalDateTime now = LocalDateTime.now();
            // System.out.println(now);
            if (i++ % 1000 == 0)
                objList.add(new Object());
            /*
            try {
                Thread.sleep(0);
            } catch (InterruptedException e) {}
             */
        }
    }
}
