<%@page import="java.util.regex.Pattern"  %>
<%@page import="java.util.regex.Matcher"  %>
<html>
 <head>
 </head>
 	<body>	
	 <%	
	 Pattern pName = Pattern.compile("[A-Z][a-z]{2,25}");
	 Pattern pEmail = Pattern.compile("([A-Za-z0-9]+(\\'?)(\\-?)(\\_?)(\\.?))+@([A-Za-z0-9]+(\\'?)(\\-?)(\\_?)(\\.?)){0,2}[A-Za-z]\\.[A-Za-z]{1,5}");
	 Pattern pPhone = Pattern.compile("(\\+38)?0[(63)?&(93)?&(67)?&(97)?&(50)?&(98)?][0-9]{7}");
	
	String name = request.getParameter("Name");
	String phone = request.getParameter("Phone");
	String eMail = request.getParameter("Email");
	 if (request.getParameter("Name") == null || request.getParameter("Phone") == null ){ 		
	 			
	 		}else{			
	 		
			
			if(name.isEmpty() | phone.isEmpty()){
				out.println("Empty field");					
					%> <br>  <%
			}else{				
					Matcher mPhone = pPhone.matcher(phone);
				if(mPhone.lookingAt()){	
					if(mPhone.end() == phone.length()){
						out.print("Vse OK");
					}else	
					out.print("Error: " + (mPhone.end()+1) + "position");
				}else{
					out.print("Error 1 position");
				}
				}
	 		}
				%>
	</body>
</html>