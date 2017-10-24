package com.techelevator.model.store;

import java.util.List;

public interface ProductDao {
	public List<Product> getAllProducts();
	public Product getProductById(Long productId);
	public List<Product> getProductByCategoryId(Long categoryId);
	

}
