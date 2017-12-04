package com.temple.udf;

import org.apache.hadoop.hive.ql.exec.Description;
import org.apache.hadoop.hive.ql.exec.UDF;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Description(
        name = "zodiac",
        value = "_FUNC_(date) - from the input date string " +
                "or separate month and day arguments, returns the sign of the Zodiac.",
        extended = "Example:\n" +
                " > select _FUNC_(date_string) from src;\n" +
                " > select _FUNC_(month, day) from src;"
)

public class UDFZodiacSign  extends UDF{
    private SimpleDateFormat sdf;

    public UDFZodiacSign()
    {
        sdf = new SimpleDateFormat("MM-dd-yyyy");
    }

    public String evaluate(Date bday)
    {
        Calendar c = Calendar.getInstance();
        c.setTime(bday);
        return this.evaluate(c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH));
    }

    public String evaluate(Integer month, Integer day)
    {
        if (month == 1 && day == 12)
        {
            return "摩羯座";
        }
        else
        {
            return "其他星座";
        }
    }
}
