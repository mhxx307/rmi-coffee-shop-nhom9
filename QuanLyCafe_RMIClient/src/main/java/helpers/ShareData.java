package helpers;

import model.TaiKhoan;

public class ShareData {
	public static TaiKhoan taiKhoanDangNhap;

	public static boolean isNumeric(String str) {
		try {
			Integer.parseInt(str);
			return true;
		} catch (NumberFormatException e) {
				e.printStackTrace();
		}
		return false;
	}
}
