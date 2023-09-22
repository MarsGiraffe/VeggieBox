package vgbox.vgboxDB.VO;

import java.util.Date;

//	vgbox.vgboxDB.VO.Membership
public class Membership {
	private String id;
	private int product_num;
	private String name;
	private String business_num;
	private String product_name;
	private String for_sale;
	private String mems_begin_date;
	private String mems_end_date;
	public Membership() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Membership(String id, int product_num, String name, String business_num, String product_name, String for_sale, String mems_begin_date, String mems_end_date) {
		super();
		this.id = id;
		this.product_num = product_num;
		this.name = name;
		this.business_num = business_num;
		this.product_name = product_name;
		this.for_sale = for_sale;
		this.mems_begin_date = mems_begin_date;
		this.mems_end_date = mems_end_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBusiness_num() {
		return business_num;
	}
	public void setBusiness_num(String business_num) {
		this.business_num = business_num;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getFor_sale() {
		return for_sale;
	}
	public void setFor_sale(String for_sale) {
		this.for_sale = for_sale;
	}
	public String getMems_begin_date() {
		return mems_begin_date;
	}
	public void setMems_begin_date(String mems_begin_date) {
		this.mems_begin_date = mems_begin_date;
	}
	public String getMems_end_date() {
		return mems_end_date;
	}
	public void setMems_end_date(String mems_end_date) {
		this.mems_end_date = mems_end_date;
	}
			
}
