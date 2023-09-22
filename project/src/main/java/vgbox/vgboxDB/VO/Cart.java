package vgbox.vgboxDB.VO;

public class Cart {
	private int cart_num;
	private int product_num;
	private String id;
	private int count;
	private int price;
	private String product_name;
	private String img;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cart_num, int product_num, String id, int count) {
		super();
		this.cart_num = cart_num;
		this.product_num = product_num;
		this.id = id;
		this.count = count;
	}
	
	

	public Cart(int cart_num, int product_num, String id, int count, int price, String product_name, String img) {
		super();
		this.cart_num = cart_num;
		this.product_num = product_num;
		this.id = id;
		this.count = count;
		this.price = price;
		this.product_name = product_name;
		this.img = img;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public int getProduct_num() {
		return product_num;
	}

	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	

}
