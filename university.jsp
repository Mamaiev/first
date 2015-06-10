
<html>
 <head>
 </head>
 <body>
 <a> <img   alt="university" src="min.jpg"> </a>
 		
 	 	<p> Edition  </p>
 		<form action="./university.jsp" method="post" >
			
			<p> Name  </p> 			
 			<input type="text" name="name" >
 		 	<p> Birthday  </p> 	 
 			<input type="text" name="year" value="Year">
  			<p> University  </p> 	 
 			<input type="text" name="year" value="University">
  			<p> Facultet  </p> 	 
 			<input type="text" name="facultet" value="Facultet">
 			<p> Specialization  </p> 	 
 			<input type="text" name="specialization" value="Specialization">	
  				 
  			<input type="submit" value="send" >
  			</form>
  			
  	<%		
			response.sendRedirect("allRight.html");
				
				 %>
 
 
 
 
 
 
 
 </body>
 </html>