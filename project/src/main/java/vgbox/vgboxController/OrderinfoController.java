package vgbox.vgboxController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vgbox.vgboxDB.VO.Orderinfo;
import vgbox.vgboxService.OrderinfoService;

@Controller
public class OrderinfoController {
	@Autowired
	private OrderinfoService service;

	@RequestMapping("orderinfoins.do")
	public String insertOrderinfo(Orderinfo ins, Model d) {
		if(ins.getCart_num() > 0) {
			d.addAttribute("msg",service.InsertOrderinfo(ins));
		}
		return "WEB-INF\\views\\store\\checkout.jsp";
	}

}
