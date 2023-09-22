package vgbox.vgboxDB.DAO;
import java.util.List;

import org.apache.ibatis.annotations.Select;

import vgbox.vgboxDB.VO.ProductandImg;

public interface IndexDao {
	//긴급구출 상품명 가격 불러오기 
	 @Select("SELECT P.PRODUCT_NUM, P.PRODUCT_NAME, P.PRICE, PI.IMG FROM PRODUCT P INNER JOIN MEMBERSHIP M ON P.PRODUCT_NUM = M.PRODUCT_NUM LEFT OUTER JOIN PRD_IMG PI ON P.PRODUCT_NUM = PI.PRODUCT_NUM WHERE M.MEMS_BEGIN_DATE <= SYSDATE AND M.MEMS_END_DATE >= SYSDATE")
	public List<ProductandImg> emerList();
}



