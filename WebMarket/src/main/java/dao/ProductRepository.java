package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	// singtone선언	
	private static ProductRepository instance = new ProductRepository();
	// getter메소드	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	// 생성자 - 객체 생성시 속성(필드,전역변수)을 초기화하는 역할
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0;i < listOfProducts.size();i++) {
			Product product = listOfProducts.get(i);
			if(product !=null & product.getProductId() !=null 
					& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	// 신규상품 등록
	public void 	addProduct(Product product) {
		listOfProducts.add(product);
	}
}
