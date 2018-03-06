package com.kh.tc.customer.model.service;

import static com.kh.tc.common.JDBCTemplet.*;

import java.sql.Connection;

import com.kh.tc.customer.model.dao.CustomerDao;
import com.kh.tc.customer.model.vo.Customer;
public class CustomerService {

	public Customer loginCheck(String userId, String password) {
		Connection con = getConnection();
		Customer loginUser = new CustomerDao().loginCheck(con,userId,password);
		return loginUser;
	}

	public Customer selectOne(String id) {
		Connection con  = getConnection();

		Customer c = new CustomerDao().selectOne(con,id);


		close(con);

		return c;
	}

	public Customer insertNaver(String id, String email, String actoken) {

		Connection con  = getConnection();
		int result = 0;
		Customer c   = null;

		result  = new CustomerDao().insertNaver(con,id,email,actoken);
			if(result>0) {
				commit(con);
				c = new CustomerDao().selectOne(con,id);
			}else {
				rollback(con);
				
			}
			
			close(con);
		return c;
	}

	public Customer insertGoogle(String id, String name, String email, String actoken) {
		Connection con  = getConnection();
		int result = 0;
		Customer c   = null;

		result  = new CustomerDao().insertGoogle(con,id,name,email,actoken);
			if(result>0) {
				commit(con);
				c = new CustomerDao().selectOne(con,id+"g");
			}else {
				rollback(con);
				
			}
			
			close(con);
		return c;
	}

}
