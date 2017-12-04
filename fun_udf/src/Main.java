import java.util.Calendar;

public class Main {
    public static void main(String[] args) {
        Calendar c = Calendar.getInstance();
        c.set(1996,1,12,22, 11, 11);
        System.out.println(c.get(Calendar.YEAR));
    }
}
