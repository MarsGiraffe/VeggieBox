package vgbox.vgboxController;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vgbox.vgboxDB.VO.ProductandImg;
import vgbox.vgboxService.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService service;	
	
	// http://localhost:5020/project/emerList.do
	@RequestMapping("emerList.do")
	public String emerList(Model d) { 
		List<ProductandImg> emerList = service.emerList();
		d.addAttribute("emerList",emerList); 
		return "WEB-INF\\views\\index\\index.jsp";
	}
}


