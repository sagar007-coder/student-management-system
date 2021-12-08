<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Vel Tech</title>
<body>
<img src="logo.png"  align="left"width="100" height="100">
<center>
<a href="index.html">
	<img src="vel.jpeg" width="250" height="100">
</a>
 
<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <a href="subjectList.html" style="color:white;"><button class="w3-bar-item w3-button tablink">Subjects</button></a>
    <a href="fee.html" style="color:white;"><button class="w3-bar-item w3-button tablink">Fees Status</button></a>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Registered Students</button>
     <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')">All Student Result</button>
     <a href="adminLogin.html" class="w3-bar-item w3-button tablink">Logout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="success1.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Course Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="course">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Branch Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="branch">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="rollNo">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Father Name</label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control" name="fatherName">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="gender">
                                    </div>
                                </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                        Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>
<!------ Include the above in your HEAD tag ---------->



  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
         <th>Course Name</th>
          <th>Branch Name</th>
          <th>Roll Number</th>
          <th>Name</th>
          <th>Father Name</th>
          <th>Gender</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      <%try{
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select * from student");
    	  while(rs.next()){
    		  
    	  
      
      %>
        <tr>
          <td><%=rs.getString(1) %></td>
          <td><%=rs.getString(2) %></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
        </tr>

      </tbody>
     <% }}
      catch(Exception e){}
      %>
    </table>
  </div>
</section>
</div>
<div id="Tokyo1" class="w3-container w3-border city" style="display:none">
   
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll Number</th>
          <th>Operating Systems</th>
          <th>Internet Programming</th>
          <th>Computer Network</th>
          <th>Theory Of Computation</th>
          <th>DataBase Management System</th>
          <th>Data Structure And Algorithm </th>
          <th>Java Programming</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <%@page import="java.sql.*" %>
        <%@page import="Project.ConnectionProvider" %>
        <%
        try{
        Connection con=ConnectionProvider.getCon();
        Statement st= con.createStatement();
        ResultSet rs=st.executeQuery(" select s.rollNo, o.ut, o.mt, o.ass, o.att, o.sem, i.ut, i.mt, i.ass, i.att, i.sem, c.ut, c.mt, c.ass, c.att, c.sem, t.ut, t.mt, t.ass, t.att, t.sem, db.ut, db.mt, db.ass, db.att, db.sem, ds.ut, ds.mt, ds.ass, ds.att, ds.sem,j.ut, j.mt, j.ass, j.att, j.sem from osres o,ipres i,cnres c,tocres t,dbmsres db, dsares ds,jpres j, student s where s.rollNo=o.rollNo and s.rollNo=i.rollNo and s.rollNo=c.rollNo and s.rollNo=t.rollNo and s.rollNo=db.rollNo and s.rollNo=ds.rollNo and s.rollNo=j.rollNo;");
        while(rs.next())
        {
        	%>
        
        <tr >
        <td style="text-align:center;"><%=rs.getString(1) %></td>
          <td style="text-align:center;"><%int sum =rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)+rs.getInt(6); out.println(sum); %></td>         
          <td style="text-align:center;"><%int sum1 =rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11); out.println(sum1); %></td>
          <td style="text-align:center;"><%int sum2 =rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16); out.println(sum2); %></td>
          <td style="text-align:center;"><%int sum3 =rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20)+rs.getInt(21); out.println(sum3); %></td>
          <td style="text-align:center;"><%int sum4 =rs.getInt(22)+rs.getInt(23)+rs.getInt(24)+rs.getInt(25)+rs.getInt(26); out.println(sum4); %></td>
          <td style="text-align:center;"><%int sum5 =rs.getInt(27)+rs.getInt(28)+rs.getInt(29)+rs.getInt(30)+rs.getInt(31); out.println(sum5);%></td>
          <td style="text-align:center;"><%int sum6 =rs.getInt(32)+rs.getInt(33)+rs.getInt(34)+rs.getInt(35)+rs.getInt(36); out.println(sum6);%></td>
        </tr>
        <%}}
        catch(Exception e)
        {
        	
        }%>
      </tbody>
    </table>
  </div>
</section>

</div>
    <hr class="new1">
 <center><h5>All Right Reserved @ Blank Canvas :: 2021</h5></center> 
  <hr class="new1">
<br>
</body>
</html>

