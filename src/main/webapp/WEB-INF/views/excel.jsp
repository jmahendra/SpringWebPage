<%@page import="org.apache.poi.ss.usermodel.Row"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Sheet sheet = (Sheet) request.getAttribute("sheet");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body style="background: #3b5998">
	<%!int i;%>
	<div class="container">
		<div class="col-md-8 offset-2">
			<table class="table table-hover table-striped">

				<%
					for (Row row : sheet) {
				%>

				<tr>
					<th><%=++i%></th>
					<th><h4><%=row.getCell(0)%></h4>
						<ul class="list-group">
							<li class="list-group-item"><input type="radio" name="mj"
								value="A">A &nbsp &nbsp <span><%=row.getCell(1)%></span></li>
							<li class="list-group-item"><input type="radio" name="mj"
								value="B">B &nbsp &nbsp<span><%=row.getCell(2)%></span></li>
							<li class="list-group-item"><input type="radio" name="mj"
								value="C">C &nbsp &nbsp<span><%=row.getCell(3)%></span></li>
							<li class="list-group-item"><input type="radio" name="mj"
								value="D">D &nbsp &nbsp<span><%=row.getCell(4)%></span></li>
						</ul></th>
				</tr>
				<%
					}
				%>

			</table>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>