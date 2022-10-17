<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.grocery.user.User" %>
    <%@ page import="com.grocery.user.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email = request.getParameter("email");
String passwd = request.getParameter("passwd");
String confirmpasswd = request.getParameter("psw-repeat");
if(confirmpasswd.equals(passwd)) {
User usr = new User();
usr.setEmail(email);
usr.setPassword(passwd);
UserDao.save(usr);
}
else {
 System.out.print("enter same passwords");
}

%>

</body>
</html>