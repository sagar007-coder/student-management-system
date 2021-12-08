<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String rollNo=request.getParameter("rollNo");
String tot=request.getParameter("tot");
String amt=request.getParameter("amt");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into feestatus values('"+rollNo+"',"+tot+","+amt+")");
	response.sendRedirect("fee.html");
}
catch(Exception e){
	out.println(e);
}


%>