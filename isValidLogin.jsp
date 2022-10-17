<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerystore","root","root");
	   @SuppressWarnings("unused")
	   String email= request.getParameter("email");
	   String passwd= request.getParameter("passwd");
	   System.out.println(email+" "+passwd);
       PreparedStatement pst = con.prepareStatement("Select user,pass from user where email=? and password=?");
       pst.setString(1, email);
       pst.setString(2, passwd);
       ResultSet rs = pst.executeQuery();                        
       if(rs.next())           
          out.println("Valid login credentials");        
       else
          out.println("Invalid login credentials"); 	   
}
catch(Exception e){
	
}

  %>
</body>
</html>