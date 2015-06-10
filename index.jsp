<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<html>
 <head>
 </head>
 <body>
 
 <p>   Login and Password   </p>
 	 <form action="./index.jsp" method="post" >
 	 <input type="text" name="Login" value="Login">
 	 <input type="password" name="Password" value="Password">
  	<input type="submit" value="send" >
	  </form>
 
 	<%	
 	if (request.getParameter("Login") != null & request.getParameter("Password") != null){
 		String Login = request.getParameter("Login");
		String Password = request.getParameter("Password");
			if(Login.isEmpty() || Password.isEmpty()){
				out.println("Incorrectly entered data!");
			}		else{
				response.sendRedirect("university.html");
				}}
			%>
  </body>
</html>