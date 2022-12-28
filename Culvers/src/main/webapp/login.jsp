<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
 <%
request.setCharacterEncoding("UTF-8");
int custno = 0;
custno = (Integer) request.getAttribute("custno");
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<%@ include file="topmenu.jsp"%>
	<section>
		<div class="title">비회원 로그인</div>
		<form name="frm" action="insertLog">
			<input type="hidden" id="GUBUN" value=insert>
			<div class="wrapper">
				<table>
					<tr>
						<th>주문번호(자동생성)</th>
						<td><input type="text" name="custno" value="<%=custno%>"  readonly></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="phone"></td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="btn" type="submit"
								onclick="fn_submit(); return false;">입장샷!</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>