package vgbox.vgboxDB.DAO;

import org.apache.ibatis.annotations.Insert;

import vgbox.vgboxDB.VO.Orderinfo;

public interface OrderinfoDao {
//	@Insert("INSERT INTO ORDER_INFO (order_num, cart_num, order_date, pay_method, ship_address, ship_state, ship_begin_date, order_price, address, id) " +
//        "VALUES (TO_CHAR(SYSDATE, 'YYYYMMDD') || '-' || LPAD(ord_num_seq.nextval, 3, '0'), #{cart_num}, TRUNC(SYSDATE, 'MONTH'), " +
//	        "#{pay_method}, #{ship_address}, #{ship_state}, #{ship_begin_date}, #{order_price}, #{address}, #{id})")
// 	public void orderInsert(Orderinfo ins);

	@Insert("INSERT INTO ORDER_INFO VALUES(ord_num_seq.nextval, #{cart_num}, sysdate, '','','','', #{order_price})")
	public int insertOrderinfo(Orderinfo ins);

}
