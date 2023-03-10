package util;

import java.text.DecimalFormat;

public class FormatUtil {
public static String number (long number, String pattern) {
	DecimalFormat format = new DecimalFormat(pattern); //정수자료형이 들어오면 포맷 지켜서 들어오게 해주세여
	return format.format(number); 
	
}
}
