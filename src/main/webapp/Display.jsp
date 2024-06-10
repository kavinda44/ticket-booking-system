<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill Summary</title>
</head>
<body>
	<%int rows = (int)session.getAttribute("rows");
	int columns = (int)session.getAttribute("columns");
	
	String[][] seats = new String[rows][columns];
	String seatID;
	
	char rowLetter = 'A';
	String seatName;
	
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < columns; j++) {
			seatID = Integer.toString(i)+Integer.toString(j);
			seats[i][j] = (String)session.getAttribute("seats[" + i + "][" + j + "]");
		}
	}
	%>
	<jsp:include page="header.jsp"/>
	<p>&nbsp;&nbsp;Your name:&nbsp; <%=session.getAttribute("cusName")%> <br> <br>
		&nbsp;&nbsp;Your phone number:&nbsp; <%=session.getAttribute("phoneNo")%> <br> <br>
		&nbsp;&nbsp;Your email address:&nbsp; <%=session.getAttribute("email")%> <br> <br>
		&nbsp;&nbsp;Selected seats:&nbsp; 
		<%
		for (int i = 0; i < rows; i++) {
			for (int j = 0; j < columns; j++) {
				seatName = rowLetter+Integer.toString(j);
				if(seats[i][j]!=null){
					out.println(" " + seatName);
				}
			}
			rowLetter++;
		}
		%> <br> <br>
		&nbsp;&nbsp;Total cost: USD&nbsp;<%=session.getAttribute("totalCost")%>
	</p> <br>
	<input class="confirm" type="submit" onclick="alert('Thank you for your purchase')" value="Confirm Purchase">
	<form class="submitForm" action="seats.jsp" method="post">
		<input type="submit" value="Add more seats">
	</form>
	<jsp:include page="footer.jsp"/>
</body>