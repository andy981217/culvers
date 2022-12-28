<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
request.setCharacterEncoding("UTF-8");
int order_no = 0;
order_no = (Integer) request.getAttribute("order_no");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>\
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@ include file="topmenu.jsp"%>
	<section>
		<div class="title">주문하기</div>
		<form name="frm" action="orderMenu">
			<div name="wrapper">
				<table>
					<tr>
						<th>주문번호</th>
						<td><input type="text" name="order_no"  value="<%=order_no%>"
							readonly></td>
					</tr>
					<tr>
						<th>회원번호</th>
						<td><input type="text" name="custno">
						</td>
					</tr>
					
					<tr>
						<th>메뉴1</th>
						<td><select name="menu">
								<option></option>
								<option value="1">The Culvers Deluxe</option>
								<option value="2">The Culvers Bacon Deluxe</option>
								<option value="3">Sundaes</option>
								<option value="4">Concrete mixer</option>
								<option value="5">Crinkle Cut Fries</option>
								<option value="6">Onion Rings</option>
								<option value="7">Coke</option>
								<option value="8">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>메뉴2</th>
						<td><select name="menu">
								<option></option>
								<option value="1">The Culvers Deluxe</option>
								<option value="2">The Culvers Bacon Deluxe</option>
								<option value="3">Sundaes</option>
								<option value="4">Concrete mixer</option>
								<option value="5">Crinkle Cut Fries</option>
								<option value="6">Onion Rings</option>
								<option value="7">Coke</option>
								<option value="8">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>메뉴3</th>
						<td><select name="menu">
								<option></option>
								<option value="1">The Culvers Deluxe</option>
								<option value="2">The Culvers Bacon Deluxe</option>
								<option value="3">Sundaes</option>
								<option value="4">Concrete mixer</option>
								<option value="5">Crinkle Cut Fries</option>
								<option value="6">Onion Rings</option>
								<option value="7">Coke</option>
								<option value="8">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>특이사항</th>
						<td><input type="text" name="require"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address"></td>	
					</tr>
					<tr>
						<td colspan="2">
						<button class="btn" type="submit" onclick="">배달 접수</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>