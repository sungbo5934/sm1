package com.kh.tc.product.model.vo;

import java.sql.Date;

public class Product {

	private String productName;
	private Date currentDate;
	private String categoryName;
	private String sellerName;
	private int customerRating;

	
	public Product(){}
	
	public Product(String productName, Date currentDate, String categoryName, String sellerName, int customerRating) {
		super();
		this.productName = productName;
		this.currentDate = currentDate;
		this.categoryName = categoryName;
		this.sellerName = sellerName;
		this.customerRating = customerRating;
	}
	
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Date getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(Date currentDate) {
		this.currentDate = currentDate;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public int getCustomerRating() {
		return customerRating;
	}
	public void setCustomerRating(int customerRating) {
		this.customerRating = customerRating;
	}
	@Override
	public String toString() {
		return "WishBuy [productName=" + productName + ", currentDate=" + currentDate + ", categoryName=" + categoryName
				+ ", sellerName=" + sellerName + ", customerRating=" + customerRating + "]";
	}
}