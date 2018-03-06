package com.kh.tc.product.model.service;

import static com.kh.tc.common.JDBCTemplet.close;
import static com.kh.tc.common.JDBCTemplet.getConnection;

import java.sql.Connection;
 
import com.kh.tc.product.model.dao.CartDao;
import com.kh.tc.product.model.vo.Product;
 

public class CartService {

	public CartService(){}
	
	public CartService wishbuy(String productId) {
		Connection con = getConnection();
		
		Product cart = new CartDao().wishbuy(con,productId);
		close(con);
		
		return cart;
	}
 
}
