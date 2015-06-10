<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<html>
 <head>
 
 </head>
 <body>
 <a>Array is : </a>
 <%if (request.getParameter("n") != null) {
   int n = Integer.parseInt(request.getParameter("n"));
   int[] array = new int[n];
   Random gen = new Random();
   for (int i = 0; i < array.length; i++){
   array[i] = gen.nextInt(100) - 50;
   out.print(array[i] + " \t");
   }
   %>
<br>
 <a>Array elements which evenly divisible: </a>
   <% 
   
   int d = Integer.parseInt(request.getParameter("d"));
 	for(int i = 0; i < array.length; i++)
 		if(array[i]==d)
 			out.print(i + "\t");
 
 }
   %>
 </body>
</html>