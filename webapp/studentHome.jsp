<%@page import= "Project.ConnectionProvider" %>
<%@page import= "java.sql.*" %>
<%
try
{ String rollNo= request.getParameter("rollNo");
Connection con= ConnectionProvider.getCon();
Statement st= con.createStatement();
ResultSet rs =st.executeQuery(" select s.course, s.branch, s.rollNo, s.name, s.fatherName,s.gender, o.ut, o.mt, o.ass, o.att, o.sem, i.ut, i.mt, i.ass, i.att, i.sem, c.ut, c.mt, c.ass, c.att, c.sem, t.ut, t.mt, t.ass, t.att, t.sem, db.ut, db.mt, db.ass, db.att, db.sem, ds.ut, ds.mt, ds.ass, ds.att, ds.sem,j.ut, j.mt, j.ass, j.att, j.sem from osres o,ipres i,cnres c,tocres t,dbmsres db, dsares ds,jpres j, student s where s.rollNo=o.rollNo and s.rollNo=i.rollNo and s.rollNo=c.rollNo and s.rollNo=t.rollNo and s.rollNo=db.rollNo and s.rollNo=ds.rollNo and s.rollNo=j.rollNo and s.rollNo = '"+rollNo+"'");
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

    <a href="dgiOneView.html">Back</a>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Internals</td>
        <td rowspan="2">Semester</td>
        <td rowspan="2">Full Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1151CS108</td>
        <td colspan="2">Operating Systems</td>
        <td>Theory</td>
        <td><%int sum =rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10); out.println(sum); %></td>
        <td><%=rs.getInt(11) %></td>
        <td><%int fm =rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11); out.println(fm);%></td>
      </tr>
      <tr>
        <td>1151CS202</td>
        <td colspan="2">Internet Programming</td>
        <td>Theory</td>
        <td><%int sum1 =rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15); out.println(sum1); %></td>
        <td><%=rs.getInt(16) %></td>
        <td><%int fm1 =rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16); out.println(fm1);%></td>
      </tr>
      
      <tr>
        <td>1151CS111</td>
        <td colspan="2">Computer Networks</td>
        <td>Theory</td>
        <td><%int sum2 =rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20); out.println(sum2);%></td>
        <td> <%=rs.getInt(21) %></td>
        <td> <%int fm2 =rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20)+rs.getInt(21); out.println(fm2);%></td>
      </tr>
      <tr>
        <td>1151CS109</td>
        <td colspan="2">Theory of Computation</td>
        <td>Theory</td>
        <td><%int sum3 =rs.getInt(22)+rs.getInt(23)+rs.getInt(24)+rs.getInt(25); out.println(sum3);%></td>
        <td> <%=rs.getInt(26) %></td>
        <td> <%int fm3 =rs.getInt(22)+rs.getInt(23)+rs.getInt(24)+rs.getInt(25)+rs.getInt(26); out.println(fm3);%></td>
      </tr>
      <tr>
        <td>1151CS107</td>
        <td colspan="2">DataBase Management System</td>
        <td>Theory</td>
        <td><%int sum4 =rs.getInt(27)+rs.getInt(28)+rs.getInt(29)+rs.getInt(30); out.println(sum4);%></td>
        <td> <%=rs.getInt(31) %></td>
        <td> <%int fm4 =rs.getInt(27)+rs.getInt(28)+rs.getInt(29)+rs.getInt(30)+rs.getInt(31); out.println(fm3);%></td>
      </tr>
      <tr>
        <td>1151CS120</td>
        <td colspan="2">Data Structure and Algorithm</td>
        <td>Theory</td>
        <td><%int sum5 =rs.getInt(32)+rs.getInt(33)+rs.getInt(34)+rs.getInt(35); out.println(sum5);%></td>
        <td> <%=rs.getInt(36) %></td>
        <td> <%int fm5 =rs.getInt(32)+rs.getInt(33)+rs.getInt(34)+rs.getInt(35)+rs.getInt(36); out.println(fm5);%></td>
      </tr>
      <tr>
        <td>1151CS117</td>
        <td colspan="2">Java Programming</td>
        <td>Theory</td>
        <td><%int sum6 =rs.getInt(37)+rs.getInt(38)+rs.getInt(39)+rs.getInt(40); out.println(sum6);%></td>
        <td> <%=rs.getInt(41) %></td>
        <td> <%int fm6 =rs.getInt(37)+rs.getInt(38)+rs.getInt(39)+rs.getInt(40)+rs.getInt(41); out.println(fm6);%></td>
      </tr>
    </tbody>
    <tfoot>
     
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((fm+fm1+fm2+fm3+fm4+fm5+fm6)*100/700+"%");%></td>
      </tr>
  </table>
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
