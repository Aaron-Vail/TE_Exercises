package com.techelevator.controller.store;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.model.store.Product;
import com.techelevator.model.store.ProductDao;
import com.techelevator.model.store.ShoppingCart;

@Controller
public class ProductController {

	private ProductDao productDao ;
		
	@Autowired
	public ProductController(ProductDao productDao){
	this.productDao = productDao; 
	}
		
		
	@RequestMapping(path="/", method= RequestMethod.GET)
	public String displayProductList(ModelMap modelHolder) {
		List<Product> listOfProducts = productDao.getAllProducts();
		modelHolder.put("products", listOfProducts);
			
		return "homePage";
	}
		
	@RequestMapping(path="/productList", method=RequestMethod.GET)
	public String displayProductList(@RequestParam Long categoryId, ModelMap modelHolder){
		Product product = productDao.getProductById(categoryId);
		modelHolder.put("product", product);
			
		return "productList";
		}
	
	@RequestMapping(path="/productDetail", method=RequestMethod.GET)
	public String displayProductDetail(@RequestParam Long productId, ModelMap modelHolder){
		Product product = productDao.getProductById(productId);
		modelHolder.put("product", product);
			
		return "productDetail";
		}
}


