package facade.Impl;

import java.rmi.MarshalledObject;
import java.rmi.RemoteException;
import java.rmi.activation.Activatable;
import java.rmi.activation.ActivationID;
import java.util.List;

import business.HoaDonBusiness;
import facade.HoaDonFacade;
import model.HoaDon;

public class HoaDonImpl extends Activatable implements HoaDonFacade {

	private static final long serialVersionUID = 1L;
	private HoaDonBusiness hoaDonBusiness;

	public HoaDonImpl(ActivationID id, MarshalledObject<?> data) throws RemoteException {
		super(id, 0);
		hoaDonBusiness = new HoaDonBusiness();
	}


	@Override
	public HoaDon addhoaDon(HoaDon hd) throws RemoteException {
		return hoaDonBusiness.addHoaDon(hd);
	}

	@Override
	public boolean updatehoaDon(HoaDon hd) throws RemoteException {
		return hoaDonBusiness.updateHoaDon(hd);
	}

	@Override
	public boolean deletehoaDonById(String id) throws RemoteException {
		return hoaDonBusiness.deleteHoaDonById(id);
	}

	@Override
	public HoaDon gethoaDonById(String id) throws RemoteException {
		return hoaDonBusiness.getHoaDonById(id);
	}

	@Override
	public List<HoaDon> getDanhSachHoaDon() throws RemoteException {
		return hoaDonBusiness.getDanhSachHoaDon();
	}

}
