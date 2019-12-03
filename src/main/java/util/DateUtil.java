package util;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class DateUtil {
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
//    private static SimpleDateFormat SDFTIME = new SimpleDateFormat("hh:mm");
//    private static LocalDateTime localDateTime = LocalDateTime.now();
    private static LocalTime localTime = LocalTime.now();
    private static DateTimeFormatter dtf = DateTimeFormatter.ofPattern("hh:MM");


    public static String dateConvertToString(Date date){
        return sdf.format(date);
    }


    public static String timeConvertToString(LocalTime time){
        return time.format(dtf);
    }

    public static Date stringConvertToDate(String date){
        try {
            return sdf.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;


    } public static LocalTime stringConvertToTime(String time){
        return LocalTime.parse(time);
    }
}
