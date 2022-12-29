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
			throws ServletException, IOException {
		try {
			conn = getConnection();
			String sql = "select max(order_no)+1 order_no from delivery ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			int order_no = 0;
			if (rs.next())
				order_no = rs.getInt(1);

			request.setAttribute("order_no", order_no);
			conn.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "order.jsp";
	}

	public String orderMenu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		int custno = Integer.parseInt(request.getParameter("custno"));
		String menu1 = request.getParameter("menu1");
		String menu2 = request.getParameter("menu2");
		String menu3 = request.getParameter("menu3");
		String address = request.getParameter("address");
		String req = request.getParameter("req");
		int result = 0;

		try {
			conn = getConnection();
			String sql = "insert into delivery values(?,?,?,?,?,?,?) ";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, order_no);
			ps.setInt(2, custno);
			ps.setString(3, menu1);
			ps.setString(4, menu2);
			ps.setString(5, menu3);
			ps.setString(6, address);
			ps.setString(7, req);

			result = ps.executeUpdate();

			conn.close();
			ps.close();
			rs.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index.jsp";
	}

	public String selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Delivery> list = new ArrayList<Delivery>();
		try {
			conn = getConnection();
			String sql = "select order_no, custno, address, req from delivery order by order_no ";

			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "orderList.jsp";
	}

	public String modify(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			conn = getConnection();
			int order_no = Integer.parseInt(request.getParameter("order_no"));
			String sql = "select custno, menu1, menu2, menu3, address, req from delivery where order_no=" + order_no;

			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			Delivery delivery = new Delivery();

			if (rs.next()) {
				delivery.setOrder_no(order_no);
				delivery.setCustno(rs.getInt(1));
				delivery.setMenu1(rs.getString(2));
				delivery.setMenu2(rs.getString(3));
				delivery.setMenu3(rs.getString(4));
				delivery.setAddress(rs.getString(5));
				delivery.setReq(rs.getString(6));
			}
			request.setAttribute("delivery", delivery);

			conn.close();
			ps.close();
			rs.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "modify.jsp";
	}

	public int update(HttpServletRequest request, HttpServletResponse response){
		int custno = Integer.parseInt(request.getParameter("custno"));
		String menu1 = request.getParameter("menu1");
		String menu2 = request.getParameter("menu2");
		String menu3 = request.getParameter("menu3");
		String address = request.getParameter("address");
		String req = request.getParameter("req");
		int order_no = Integer.parseInt(request.getParameter("order_no"));
		int result = 0;
		
		try {
			conn = getConnection();
			String sql = "update delivery set  custno = ?, menu1 = ?, menu2 = ?, menu3 = ?, address = ?, req = ? ";
			sql += "where order_no = ?";

			ps = conn.prepareStatement(sql);
			ps.setInt(1, custno);
			ps.setString(2, menu1);
			ps.setString(3, menu2);
			ps.setString(4, menu3);
			ps.setString(5, address);
			ps.setString(6, req);
			ps.setInt(7, order_no);

			result = ps.executeUpdate();

			conn.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int delete(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		try {
			conn = getConnection();
			String order_no = request.getParameter("order_no");
			String sql = "delete from delivery where order_no=" + order_no;

			ps = conn.prepareStatement(sql);
			result = ps.executeUpdate();

			conn.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}