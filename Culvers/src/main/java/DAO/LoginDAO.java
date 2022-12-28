package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Delivery;

public class LoginDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	// 데이터 베이스 연결
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "test", "test1234");
		return con;
	}

	public String insertLog(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int custno = Integer.parseInt(request.getParameter("custno"));
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		int result = 0;

		try {
			conn = getConnection();
			String sql = "insert into login values(?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, custno);
			ps.setString(2, name);
			ps.setString(3, phone);

			result = ps.executeUpdate();
			conn.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "list.jsp";

	}

	public String nextCustno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			conn = getConnection();
			String sql = "select max(custno)+1 custno from login";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			int custno = 0;
			if (rs.next())
				custno = rs.getInt(1);

			request.setAttribute("custno", custno);
			conn.close();
			ps.close();
			rs.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login.jsp";
	}
	public String nextOrder(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException,IOException{
			try {
				conn=getConnection();
				String sql = "select max(order_no)+1 order_no from delivery ";
				ps = conn.prepareStatement(sql);
				rs= ps.executeQuery();
				int order_no = 0;
				if(rs.next())
					order_no = rs.getInt(1);
				
				request.setAttribute("order_no", order_no);
				conn.close();
				ps.close();
				rs.close();
			}catch(Exception e) {
				e.printStackTrace();
		}
			return "order.jsp";
	}
	public String orderMenu(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException,IOException{

			int order_no = Integer.parseInt(request.getParameter("order_no"));
			int custno = Integer.parseInt(request.getParameter("custno")); 
			String menu = request.getParameter("menu");
			String address = request.getParameter("address");
			String req = request.getParameter("request");
			int result = 0;
		
			try {
				conn = getConnection();
				String sql = "insert into delivery values(?,?,?,?,?) ";
				ps = conn.prepareStatement(sql);
				ps.setInt(1, order_no);
				ps.setInt(2, custno);
				ps.setString(3, menu);
				ps.setString(4, address);
				ps.setString(5, req);
				
				result = ps.executeUpdate();
				
				conn.close();
				ps.close();
				rs.close();
						
			}catch(Exception e) {
				e.printStackTrace();
			}
			return "orderList.jsp";
	}	
	public String selectAll(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException,IOException{
		ArrayList<Delivery> list = new ArrayList<Delivery>();
		try {
			conn = getConnection();
			String sql = "select order_no, custno, address, req from delivery order by order_no ";
			
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Delivery delivery = new Delivery();
				delivery.setOrder_no(rs.getInt(1));
				delivery.setCustno(rs.getInt(2));
				delivery.setAddress(rs.getString(3));
				delivery.setReq(rs.getString(4));
				
				list.add(delivery);
			}
			System.out.println(list);
			request.setAttribute("list", list);
			
			conn.close();
			ps.close();
			rs.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "orderList.jsp";
		
	}

}