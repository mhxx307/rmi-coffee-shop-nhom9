package facade.Impl;

import java.rmi.MarshalledObject;
import java.rmi.RemoteException;
import java.rmi.activation.Activatable;
import java.rmi.activation.ActivationID;
import java.util.List;

import business.LoaiSanPhamBusiness;
import facade.LoaiSanPhamFacade;
import model.LoaiSanPham;

public class LoaiSanPhamImpl extends Activatable implements LoaiSanPhamFacade {

	private static final long serialVersionUID = 1L;
	private LoaiSanPhamBusiness loaiSanPhamBusiness;

	public LoaiSanPhamImpl(ActivationID id, MarshalledObject<?> data) throws RemoteException {
		super(id, 0);
		loaiSanPhamBusiness = new LoaiSanPhamBusiness();
	}

	@Override
	public boolean addLoaiSanPham(LoaiSanPham loaiSP) throws RemoteException {
		return loaiSanPhamBusiness.addLoaiSanPham(loaiSP);
	}

	@Override
	public boolean updateLoaiSanPham(LoaiSanPham loaiSP) throws RemoteException {
		return loaiSanPhamBusiness.updateLoaiSanPham(loaiSP);
	}

	@Override
	public boolean deleteLoaiSanPham(String id) throws RemoteException {
		return loaiSanPhamBusiness.deleteLoaiSanPham(id);
	}

	@Override
	public LoaiSanPham getLoaiSanPhamById(String id) throws RemoteException {
		return loaiSanPhamBusiness.getLoaiSanPhamById(id);
	}

	@Override
	public List<LoaiSanPham> getDSLoaiSPByName(String name) throws RemoteException {
		return loaiSanPhamBusiness.getDSLoaiSPByName(name);
	}

	@Override
	public List<LoaiSanPham> getDanhSachLoaiSP() throws RemoteException {
		return loaiSanPhamBusiness.getDanhSachLoaiSP();
	}

	@Override
	public String getMaLoaiTheoTen(String tenLoai) throws RemoteException {
		return loaiSanPhamBusiness.getMaLoaiTheoTen(tenLoai);
	}


}
