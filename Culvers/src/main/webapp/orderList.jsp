<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*"%>
<%@ page import = "DTO.Delivery" %>
 <%
request.setCharacterEncoding("UTF-8");
ArrayList<Delivery> list = new ArrayList<Delivery>();
list = (ArrayList<Delivery>) request.getAttribute("list");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="topmenu.jsp" %>
	<section>
		<div class="title">배달 순서 확인</div>
		<div class= "wrapper">
			<table style="width:900px">
				<tr>
					<th>순서</th>
					<th>회원번호</th>
					<th>주소</th>
					<th>요청사항</th>
				</tr>
 				<%
				for (Delivery d : list){
				%>
				<tr>
					<td><%=d.getOrder_no()%></td>
					<td><%=d.getCustno()%></td>
					<td><%=d.getAddress()%></td>
					<td><%=d.getReq() %></td>
				</tr>
				<%
				}
				%>	
			</table>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>