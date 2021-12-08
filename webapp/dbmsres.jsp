<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%
String rollNo=request.getParameter("rollNo");
String ut=request.getParameter("ut");
String mt=request.getParameter("mt");
String ass=request.getParameter("ass");
String att=request.getParameter("att");
String sem=request.getParameter("sem");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into dbmsres values('"+rollNo+"',"+ut+","+mt+","+ass+","+att+","+sem+")");
	response.sendRedirect("dbms.html");
}
catch(Exception e){
	out.println(e);
}


%>