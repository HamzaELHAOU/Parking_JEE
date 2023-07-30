<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="web.Place"%>
<!DOCTYPE html>

<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Client</title>
      <link rel="stylesheet" href="css/loginClient.css">
   </head>
   
   <body>
   
  <%
String message =(String) request.getAttribute("message");
  int date_debut=0;
  int date_fin=0;
  double prix=0;
  String quartier="";
  int id_place=-1;

if(request.getAttribute("place")==null){
	 id_place=-1;
}
else{
	Place place = (Place)request.getAttribute("place");
	id_place=place.getId();
	date_debut =place.getDate_debut();
	prix=place.getPrix();
	date_fin = place.getDate_fin();
	quartier = place.getQuartier();
	
}
String msg_error="";
if(message==null){
	
}
else{ msg_error=message;}

%>
<%=msg_error %>
   
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action="login.do" method="post">
            <div class="field">
               <input type="text" required name="email">
               <label>Email Address</label>
            </div>
            
            <div class="field">
               <input type="password" required name="codel">
               <label>Password</label>
            </div>
         <input type="text" name="id_place" value="<%=id_place %>" hidden="true">
         <input type="text" name="date_debut" value="<%=date_debut %>" hidden="true">
         <input type="text" name="date_fin" value="<%=date_fin %>" hidden="true">
         <input type="text" name="quartier" value="<%=quartier %>" hidden="true">
         <input type="number" name="prix" value="<%=prix %>" hidden="true">
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               pas membre? <a href="register.jsp">Créer compte</a>
            </div>
         </form>
      </div>
   </body>
</html>