package vgbox.vgboxDB.VO;

public class ProductandImg {
	private int product_num;
	private String img;
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public ProductandImg(int product_num, String img, String product_name, int price) {
		super();
		this.product_num = product_num;
		this.img = img;
		this.product_name = product_name;
		this.price = price;
	}
	public ProductandImg() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String product_name;
	private int price;
	
	
}
