package facade.Impl;

import java.rmi.MarshalledObject;
import java.rmi.RemoteException;
import java.rmi.activation.Activatable;
import java.rmi.activation.ActivationID;
import business.TaiKhoanBusiness;
import facade.TaiKhoanFacade;
import model.NhanVien;
import model.TaiKhoan;

public class TaiKhoanImpl extends Activatable implements TaiKhoanFacade {

	private static final long serialVersionUID = 1L;
	private TaiKhoanBusiness taiKhoanBusiness;

	public TaiKhoanImpl(ActivationID id, MarshalledObject<?> data) throws RemoteException {
		super(id, 0);
		taiKhoanBusiness = new TaiKhoanBusiness();
	}

	@Override
	public TaiKhoan CheckLogin(String username, String password) throws RemoteException {
		return taiKhoanBusiness.CheckLogin(username, password);
	}

	@Override
	public boolean addTaiKhoan(TaiKhoan tk) throws RemoteException {
		return taiKhoanBusiness.addTaiKhoan(tk);
	}

	@Override
	public TaiKhoan getTaiKhoanById(String id) throws RemoteException {
		return taiKhoanBusiness.getTaiKhoanById(id);
	}

	@Override
	public TaiKhoan taoTaiKhoan(String ma, String string, NhanVien nhanVien) throws RemoteException {
		return taiKhoanBusiness.taoTaiKhoan(ma, string, nhanVien);
	}

}
