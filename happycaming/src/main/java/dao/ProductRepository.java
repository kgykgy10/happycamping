package dao;

import java.util.ArrayList;
import dto.Product;
// 자바빈즈로 사용할 상품 데이터 접근 클래스 만들기.
public class ProductRepository {
	
	// 상품 목록을 저장하기 위한 ArrayList<Product>의 객체 타입 변수 listOfProducts를 생성.
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
public ProductRepository() {
	Product site1 = new Product ("1111", "사이트1-1", "50000");
	site1.setFilename("p1234.jpg");
	
	listOfProducts.add(site1);
}

public ArrayList<Product> getAllProducts(){
	return listOfProducts;
}
//상품 상세 정보를 가져오는 메서드 만들기.
public Product getProductById(String productId) {
	Product productById = null;

	for (int i = 0; i < listOfProducts.size(); i++) {
		Product product = listOfProducts.get(i);
		if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
			productById = product;
			break;
		}
	}
	return productById;
}

//상품 등록시 신규 상품 데이터를 저장하는 메소드 만들기. -> 그 후 processAddProduct에서 작업 
private static ProductRepository instance = new ProductRepository();//ProductRepository 클래스의 기본 생성자에 대한 객체 변수 instance 생성.

public static ProductRepository getInstance() { //instance 변수의 getter메소드 작성.
	return instance;
}
	
//객체 변수 listOfProducts에 새로운 상품을 등록하는 addProduct() 메서드를 생성.		
public void addProduct(Product product) {
	listOfProducts.add(product);
}


}