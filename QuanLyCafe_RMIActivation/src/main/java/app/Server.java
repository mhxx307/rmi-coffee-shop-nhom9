package app;

import java.net.MalformedURLException;
import java.net.UnknownHostException;
import java.rmi.AlreadyBoundException;
import java.rmi.MarshalledObject;
import java.rmi.Naming;
import java.rmi.RemoteException;
import java.rmi.activation.Activatable;
import java.rmi.activation.ActivationDesc;
import java.rmi.activation.ActivationException;
import java.rmi.activation.ActivationGroup;
import java.rmi.activation.ActivationGroupDesc;
import java.rmi.activation.ActivationGroupID;
import java.rmi.activation.UnknownGroupException;
import java.util.Properties;

import facade.ChiTietHoaDonFacade;
import facade.HoaDonFacade;
import facade.KhachHangFacade;
import facade.LoaiSanPhamFacade;
import facade.NhanVienFacade;
import facade.SanPhamFacade;
import facade.TaiKhoanFacade;
import facade.Impl.ChiTietHoaDonlmpl;
import facade.Impl.HoaDonImpl;
import facade.Impl.KhachHangImpl;
import facade.Impl.LoaiSanPhamImpl;
import facade.Impl.NhanVienImpl;
import facade.Impl.SanPhamImpl;
import facade.Impl.TaiKhoanImpl;

public class Server {
	public static void main(String[] args)
			throws RemoteException, MalformedURLException, UnknownGroupException, ActivationException, UnknownHostException, AlreadyBoundException {

		System.setSecurityManager(new SecurityManager());

		Properties props = new Properties();
		props.put("java.security.policy", "myrmi/myrmi.policy");

		ActivationGroupDesc.CommandEnvironment ace = null;
		ActivationGroupDesc exampleGroup = new ActivationGroupDesc(props, ace);

		ActivationGroupID agi = ActivationGroup.getSystem().registerGroup(exampleGroup);

		String location = "file:myrmi/";

		MarshalledObject<?> data = null;

		ActivationDesc taiKhoanImpl = new ActivationDesc(agi, TaiKhoanImpl.class.getName(), location, data);
		ActivationDesc sanPhamImpl = new ActivationDesc(agi, SanPhamImpl.class.getName(), location, data);
		ActivationDesc nhanVienImpl = new ActivationDesc(agi, NhanVienImpl.class.getName(), location, data);
		ActivationDesc loaiSanPhamImpl = new ActivationDesc(agi, LoaiSanPhamImpl.class.getName(), location, data);
		ActivationDesc khachHangImpl = new ActivationDesc(agi, KhachHangImpl.class.getName(), location, data);
		ActivationDesc hoaDonImpl = new ActivationDesc(agi, HoaDonImpl.class.getName(), location, data);
		ActivationDesc cthdImpl = new ActivationDesc(agi, ChiTietHoaDonlmpl.class.getName(), location, data);

		TaiKhoanFacade taiKhoanFacade = (TaiKhoanFacade) Activatable.register(taiKhoanImpl);
		SanPhamFacade sanPhamFacade = (SanPhamFacade) Activatable.register(sanPhamImpl);
		NhanVienFacade nhanVienFacade = (NhanVienFacade) Activatable.register(nhanVienImpl);
		LoaiSanPhamFacade loaiSanPhamFacade = (LoaiSanPhamFacade) Activatable.register(loaiSanPhamImpl);
		KhachHangFacade khachHangFacade = (KhachHangFacade) Activatable.register(khachHangImpl);
		HoaDonFacade hoaDonFacade = (HoaDonFacade) Activatable.register(hoaDonImpl);
		ChiTietHoaDonFacade chiTietHoaDonFacade = (ChiTietHoaDonFacade) Activatable.register(cthdImpl);

		System.out.println("Got the stub");
		
//		"192.168.1.73"
		String ipv4 = Config.getAddress();
		System.out.println("ip: " + ipv4);

		Naming.rebind("rmi://" + ipv4 + ":1099/taiKhoanFacade", taiKhoanFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/sanPhamFacade", sanPhamFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/nhanVienFacade", nhanVienFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/loaiSanPhamFacade", loaiSanPhamFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/khachHangFacade", khachHangFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/hoaDonFacade", hoaDonFacade);
		Naming.rebind("rmi://" + ipv4 + ":1099/chiTietHoaDonFacade", chiTietHoaDonFacade);

		System.out.println("Exported from registration");

		System.exit(0);

	}
}
