<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book Seats</title>
</head>
<body>
	<%
	
	int rows = 6;
	int columns = 10;
	
	session.setAttribute("rows", rows);
	session.setAttribute("columns", columns);
	
	String[][] seats = new String[rows][columns];
	String seatID;
	
	char rowLetter = 'A';
	String seatName;
	
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < columns; j++) {
			if((String)session.getAttribute("seats[" + i + "][" + j + "]")!=null){
				seats[i][j] = (String)session.getAttribute("seats[" + i + "][" + j + "]");
			}else{
				seats[i][j] = null;
			}
			
		}
	}
	%>
	<jsp:include page="header.jsp"/>
    <form class="mainForm" action="Cal" method="post">
        <label id="lblCusName" for="cusName">Enter your name</label>
        <input type="text" id="cusName" name="cusName" value="${cusName}" required/> <br> <br>
        
        <label id="lblPhoneNo" for="phoneNo">Enter a valid phone number</label>
        <input type="tel" id="phoneNo" name="phoneNo" placeholder="089 028 3123" value="${phoneNo}" required/> <br> <br>

        <label id="lblEmail" for="email">Enter a valid email address</label>
        <input type="email" id="email" name="email" placeholder="abc@123.com" value="${email}" required/> <br> <br>
        
       
        <label id="lblSeats">Please select the seat numbers <br>
        &nbsp;&nbsp;&nbsp;&nbsp;• Rows A,B = USD 100.00 <br>
        &nbsp;&nbsp;&nbsp;&nbsp;• Rows C,D = USD 250.00 <br>
        &nbsp;&nbsp;&nbsp;&nbsp;• Rows E,F = USD 600.00</label> <br>
       
        <div class="seats">
        	<%
			for (int i = 0; i < rows; i++) {
				for (int j = 0; j < columns; j++) {
					seatID = Integer.toString(i)+Integer.toString(j);
					seatName = rowLetter+Integer.toString(j);
					if(seats[i][j]!=null){%>
						<input type="checkbox" id="<%=seatID%>" name="<%=seatID%>" checked="checked"/>
			            <label for="<%=seatID%>"><%=seatName%></label> 
					<%}else{%>
						<input type="checkbox" id="<%=seatID%>" name="<%=seatID%>"/>
			            <label for="<%=seatID%>"><%=seatName%></label> 
					<%}
				}%> <br> <%	
			rowLetter++;
			}
		%>
        </div>
        <br>
        <input type="submit" id="btnSubmit" value="CONFIRM YOUR PURCHASE">
    </form>
    <jsp:include page="footer.jsp"/>
</body>
</html>