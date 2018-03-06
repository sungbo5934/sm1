package com.kh.tc.customer.model.dao;

import static com.kh.tc.common.JDBCTemplet.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.tc.customer.model.vo.Customer;

public class CustomerDao {
	
	private Properties prop = new Properties();
	
	public CustomerDao() {
		String fileName = CustomerDao.class.getResource("/sql/customer/customer-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Customer loginCheck(Connection con, String userId, String password) {
		Customer loginUser=null;
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		try {
			
			String query=prop.getProperty("loginCheck");
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser=new Customer();
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
			
		}
		return loginUser;
	}
	public Customer selectOne(Connection con, String id) {
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		Customer c = null;
		
		String query = prop.getProperty("selectOne");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new Customer();
				c.setC_code(rset.getString("c_code"));
				c.setC_id(rset.getString("c_id"));
				c.setC_pwd(rset.getString("c_pwd"));
				c.setC_email(rset.getString("c_email"));
				c.setC_phone(rset.getString("c_phone"));
				c.setC_accout(rset.getString("c_account"));
				c.setJoin_date(rset.getDate("join_date"));
				c.setEnd_yn(rset.getString("end_yn"));
				c.setCerti_name(rset.getString("certi_name"));
				c.setToken(rset.getString("token"));
				c.setLogintype(rset.getString("logintype"));
				c.setC_name(rset.getString("c_name"));
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		
		return c;
	}
	public int insertNaver(Connection con, String id, String email,String actoken) {
		PreparedStatement pstmt =null;
		int result =0;
		int c_code = Integer.parseInt(id);
		int where = email.indexOf("@");
		String c_name=email.substring(0, where);
		
		String query = prop.getProperty("insertNaver");
		try {
			pstmt  = con.prepareStatement(query);
			
			pstmt.setString(1, c_code+"");
			pstmt.setString(2, email);
			pstmt.setString(3, email);
			pstmt.setString(4, actoken);
			pstmt.setString(5, c_name);
			
			result = pstmt.executeUpdate();
			System.out.println(result);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	public int insertGoogle(Connection con, String id, String name, String email, String actoken) {
		PreparedStatement pstmt = null;
		int result =0;
		
		String query = prop.getProperty("insertGoogle");
		
		try {
			pstmt  = con.prepareStatement(query);
			
			pstmt.setString(1, id+"g");
			pstmt.setString(2, email);
			pstmt.setString(3, email);
			pstmt.setString(4, actoken);
			pstmt.setString(5, name);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
