package vgbox.vgboxService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vgbox.vgboxDB.DAO.CartDao;
import vgbox.vgboxDB.VO.Cart;

@Service
public class CartService {
	@Autowired
	private CartDao dao;
	
	
	public void cartInsert(Cart ins) {
		dao.cartInsert(ins);
	}
	
	public List<Cart> cartList(String id) {
		return dao.cartList(id);
	}
	
	public Cart cartDetail(int product_num) {
		return dao.cartDetail(product_num);
	}
	
	public void cartDelete(int cart_num) {
		dao.cartDelete(cart_num);
	}
	
	// 가격 Service	
	public interface getprice {
		Cart getPrice(int product_num);
		int calculatePrice(int product_num);
	}
	
}
