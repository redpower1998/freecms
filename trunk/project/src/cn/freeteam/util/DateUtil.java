package cn.freeteam.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public static String format(Date date,String format){
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		if (date!=null) {
			return sdf.format(date);
		}
		return "";
	}
}
