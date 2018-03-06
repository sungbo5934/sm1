package com.kh.tc.product.model.dao;

import static com.kh.tc.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.customer.model.vo.Customer;
import com.kh.tc.product.model.vo.Product;
 
 
public class CartDao {
	
	private Properties prop = new Properties();
	
	public CartDao(){
		String fileName = CustomerDao.class.getResource("/sql/product/cart-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	 
	public CartDao wishbuy(Connection con, String productId) {
		Product cart = null;
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectOneCart");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, productId);
			
			rset = pstmt.executeQuery();
		
			while(rset.next()) {
				cart = new Product();
				cart.setCategoryName(rset.getString("categoryName"));
				cart.setCurrentDate(rset.getDate("currentDate"));
				cart.setCustomerRating(rset.getInt("customerRating"));
				cart.setProductName(rset.getString("productName"));
				cart.setSellerName(rset.getString("sellerName"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return cart;
	}

}
