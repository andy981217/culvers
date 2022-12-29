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
						<td><input type="text" name="order_no" value="<%=order_no%>"
							readonly></td>
					</tr>
					<tr>
						<th>회원번호</th>
						<td><input type="text" name="custno"></td>
					</tr>
					<tr>
						<th>메뉴1</th>
						<td><select name="menu1">
								<option value="">메뉴를 선택해주세요.</option>
								<option value="The Culvers Deluxe">The Culvers Deluxe</option>
								<option value="The Culvers Bacon Deluxe">The Culvers Bacon Deluxe</option>
								<option value="Sundaes">Sundaes</option>
								<option value="Concrete Mixer">Concrete Mixer</option>
								<option value="Crinkle Cut Fries">Crinkle Cut Fries</option>
								<option value="Onion Rings">Onion Rings</option>
								<option value="Coke">Coke</option>
								<option value="Sprite">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>메뉴2</th>
						<td><select name="menu2">
								<option value="nochoice">선택안함</option>
								<option value="The Culvers Deluxe">The Culvers Deluxe</option>
								<option value="The Culvers Bacon Deluxe">The Culvers Bacon Deluxe</option>
								<option value="Sundaes">Sundaes</option>
								<option value="Concrete Mixer">Concrete Mixer</option>
								<option value="Crinkle Cut Fries">Crinkle Cut Fries</option>
								<option value="Onion Rings">Onion Rings</option>
								<option value="Coke">Coke</option>
								<option value="Sprite">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>메뉴3</th>
						<td><select name="menu3">
								<option value="nochoice">선택안함</option>
								<option value="The Culvers Deluxe">The Culvers Deluxe</option>
								<option value="The Culvers Bacon Deluxe">The Culvers Bacon Deluxe</option>
								<option value="Sundaes">Sundaes</option>
								<option value="Concrete Mixer">Concrete Mixer</option>
								<option value="Crinkle Cut Fries">Crinkle Cut Fries</option>
								<option value="Onion Rings">Onion Rings</option>
								<option value="Coke">Coke</option>
								<option value="Sprite">Sprite</option>
						</select></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<th>특이사항</th>
						<td><input type="text" name="req"></td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="btn" type="submit">배달 접수</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>