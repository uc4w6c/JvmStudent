import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class HelloWorld extends Thread {
    public static void main(String[] args) {
        HelloWorld helloWorld1 = new HelloWorld();
        HelloWorld helloWorld2 = new HelloWorld();
        HelloWorld helloWorld3 = new HelloWorld();
        HelloWorld helloWorld4 = new HelloWorld();
        HelloWorld helloWorld5 = new HelloWorld();
        helloWorld1.run();
        helloWorld2.run();
        helloWorld3.run();
        helloWorld4.run();
        helloWorld5.run();
    }

    public void run() {
        List objList = new ArrayList<Object>();
        long i = 0;
        while (true) {
            Object obj = new Object();
            if (i++ % 1000 == 0)
                objList.add(obj);
        }
    }
}
