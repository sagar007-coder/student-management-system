<%@page import= "Project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
try
{ String rollNo= request.getParameter("rollNo");
Connection con= ConnectionProvider.getCon();
Statement st= con.createStatement();
ResultSet rs =st.executeQuery(" select s.course, s.branch, s.rollNo, s.name, s.fatherName,s.gender, f.tot, f.amt from student s,feestatus f where s.rollNo=f.rollNo and s.rollNo = '"+rollNo+"'");
if(rs.next()){
%>



  <head>
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>University Name: Vel Tech</th>
          <th>Course Name: <%=rs.getString(1) %></th>
          <th>Branch Name: <%=rs.getString(2) %></th>
          <th style="text-align:center;">RollNo:<%=rs.getString(3) %></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %></th>
          <th>Father Name: <%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
  

<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
  <hr class="new1">
</head>
<body>

    <a href="studentFee.html">Back</a>
  <table>
    <thead>
      <tr>
        <th rowspan="2" style="text-align:center;">Total Amount</th>
        <th rowspan="2" style="text-align:center;">Amount Paid</th>
        <th rowspan="2" style="text-align:center;">Due Amount</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=rs.getInt(7) %></td>
            <td><%=rs.getInt(8) %></td>
        <td><%int due=rs.getInt(7)-rs.getInt(8); out.println(due); %></td>
        </tr>
      </table>
      <br>
      <br>
      <br>
      <br>
  <hr class="new1">
<center><h6>All Right Reserved @ Blank Canvas :: 2021-23</h6></center> 
  <hr class="new1">
</body>
<%
}
else
{
	response.sendRedirect("errorVeltechOneView.html");
	}
}
	catch(Exception e)
	{out.println(e);}%>
