<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<html>
 <head>
 </head>
 <body>
 <a>Array is: </a>
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
 <a> Average: </a>
 <%
 int summ = 0; 
 for (int i = 0; i < array.length; i++){ 
 summ += array[i];
 }
  out.println("  " + summ/array.length);
 }
   %>
 
 </body>
</html>