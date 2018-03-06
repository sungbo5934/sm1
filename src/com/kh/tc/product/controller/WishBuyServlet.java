package com.kh.tc.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.tc.product.model.service.CartService;
import com.kh.tc.product.model.vo.Product;
 
 
  

@WebServlet("/wishbuy.do")
public class WishBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WishBuyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		String productId= request.getParameter("productId");
		
		 Product cart=new CartService().wishbuy(productId);
		
			String page="";
			
		 if(cart!=null){
			 page = "views/mypage/wishbuy.jsp";
		 }else{
			 page="views/common/errorPage.jsp";
			 request.setAttribute("msg", "장바구니 저장실패");
		 }
		
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
