package facade.Impl;

import java.rmi.MarshalledObject;
import java.rmi.RemoteException;
import java.rmi.activation.Activatable;
import java.rmi.activation.ActivationID;
import java.util.List;

import business.NhanVienBusiness;
import facade.NhanVienFacade;
import model.NhanVien;

public class NhanVienImpl extends Activatable implements NhanVienFacade {

	private static final long serialVersionUID = 1L;
	private NhanVienBusiness nhanVienBusiness;

	public NhanVienImpl(ActivationID id, MarshalledObject<?> data) throws RemoteException {
		super(id, 0);
		nhanVienBusiness = new NhanVienBusiness();
	}

	@Override
	public NhanVien addNhanVien(NhanVien nv) throws RemoteException {
		return nhanVienBusiness.addNhanVien(nv);
	}

	@Override
	public boolean updateNhanVien(NhanVien nv) throws RemoteException {
		return nhanVienBusiness.updateNhanVien(nv);
	}

	@Override
	public boolean deleteNhanVien(String id) throws RemoteException {
		return nhanVienBusiness.deleteNhanVien(id);
	}

	@Override
	public NhanVien getNhanVienById(String id) throws RemoteException {
		return nhanVienBusiness.getNhanVienById(id);
	}

	@Override
	public List<NhanVien> getDSNhanVienByName(String name) throws RemoteException {
		return nhanVienBusiness.getDSNhanVienByName(name);
	}

	@Override
	public NhanVien getNhanVienByPhone(String phoneNumber) throws RemoteException {
		return nhanVienBusiness.getNhanVienByPhone(phoneNumber);
	}

	@Override
	public List<NhanVien> getDanhSachNV() throws RemoteException {
		return nhanVienBusiness.getDanhSachNV();
	}
}
