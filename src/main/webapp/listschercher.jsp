<%@page import="web.Place"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Template One</title>
    <!-- fichier css -->
    <link rel="stylesheet" href="css/stylehome.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/all.min.css" />
    <!-- Rendre touts les elemtents normal -->
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,600&display=swap" rel="stylesheet" />

</head>
<body>

<!-- Start Header -->
     <div class="header">
         <div class="container">          
            <h1 class="link">Parking</h1>  
             <div class="links">
                 <span class="icon">
                     <span></span>
                     <span></span>
                     <span></span>
                 </span>                
                 <ul>
                     <li><a href="#services">Services</a></li>
                     <li><a href="#portfolio">PortFolio</a></li>
                     <li><a href="#about">About</a></li>
                     <li><a href="#contact">Contact</a></li>
                     <li><a href="#reserver">Reserver</a></li>
                     <li><a href="#login">Login</a></li>
                 </ul>
            </div>
         </div>
     </div>
  <!-- End Header -->
  <%
 int n=1;
int size_list = (Integer)request.getAttribute("size_list");
if(size_list>0){
%>
  <div class="container">
    <table class="table" style="margin-top: 20px;">
  <thead class="thead-dark">
    <tr style="text-align: center;">
      <th scope="col">#</th>
      <th scope="col">Jour</th>
      <th scope="col">Date debut</th>
      <th scope="col">Date fin</th>
      <th scope="col">Prix Totale</th>
      <th scope="col">Quartier</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${place.places}" var="place">
	      <tr style="text-align: center;">
	        <td><c:out value="${place.id}" /></td>
	        <td><c:out value="${place.jour}" /></td>
	        <td><c:out value="${place.date_debut}" /></td>
	        <td><c:out value="${place.date_fin}" /></td>
	        <td><c:out value="${place.prix} DH" /></td>
	        <td><c:out value="${place.quartier}" /></td>
	        
	        <td>
	           <form action="demande_reserve.do" method="post">
	                <input type="text" name="id" value="${place.id}" hidden="true">
	                <input type="text" name="prix" value="${place.prix}" hidden="true">
	                <input type="text" name="quartier" value="${place.quartier}" hidden="true">
	                <input type="text" name="jour" value="${place.jour}" hidden="true">
	                <input type="number" name="date_debut" value="${place.date_debut}" hidden="true">
	                <input type="number" name="date_fin" value="${place.date_fin}" hidden="true">
	                <input type="submit" value="Reserver">
	           </form>
	        </td>
	      </tr>
	      <%n=n+1; %>
     </c:forEach>
  </tbody>
</table>
</div>
<% } 
else {
%>
 <h3>Aucun resultat</h3>
<%} %>
</body>
</html>