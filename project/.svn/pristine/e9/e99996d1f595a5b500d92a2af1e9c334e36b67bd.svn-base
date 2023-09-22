package vgbox.vgboxService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vgbox.vgboxDB.DAO.OrderinfoDao;
import vgbox.vgboxDB.VO.Orderinfo;

@Service
public class OrderinfoService {
	@Autowired
	private OrderinfoDao dao;
	
	public String InsertOrderinfo(Orderinfo ins) {
		return dao.insertOrderinfo(ins)>0?"등록성공":"등록실패";
	}
}
