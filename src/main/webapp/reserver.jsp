<%@page import="web.client"%>
<%@page import="web.Place"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserver</title>
 <!-- fichier css -->
    <link rel="stylesheet" href="css/stylereserver.css">
    <link rel="stylesheet" href="css/stylehome.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/all.min.css" />
    <!-- Rendre touts les elemtents normal -->
    <link rel="stylesheet" href="css/normalize.css" />
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,600&display=swap" rel="stylesheet" />
    
</head>
<body>
<% 

  String reqsession=(String)session.getAttribute("ids");
  String message =(String) request.getAttribute("message");
  HttpSession session2 =request.getSession();
  String id2=session2.getId();
  

  Place place=(Place) request.getAttribute("place");
  
  if(reqsession==null || !reqsession.equals(id2)){
	  request.setAttribute("id_place", place.getId());
	  request.setAttribute("place", place);
	  request.getRequestDispatcher("loginClient.jsp").forward(request, response);
	  }
	  
  %>	  
  <%
     int id_user=(Integer)session.getAttribute("id_user");
      client c= new client();
      c = c.find(id_user);
      
  String msg_error="";
	if(message==null){
		
	}
	else{ msg_error=message;}
	
	%>
	<%=msg_error %>
  	
<!-- Start Header -->
     <div class="header">
         <div class="container">
             <!-- <img class="logo" src="images/logo.png" alt="" > -->            
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
                     <li><a href="loginAdmin.jsp">Admin</a></li>
                     <li><a href="loginClient.jsp">Client</a></li>
                 </ul>
            </div>
         </div>
     </div>


            

    <!-- End Header -->
<div class="register">
    <div class="containere">
        <div class="title">Les informations de la reservation :</div>
        <form action="reserver.do" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Nom</span>
                     <input type="text" name="nom" value="<%=c.getNom() %>" > 
               </div>
                <div class="input-box">
                    <span class="details">Prenom</span>
                    <input type="text" name="prenom" value="<%=c.getPrenom() %>" > 
               </div>
                <div class="input-box">
                    <span class="details">CNE :</span>
                    <input type="text" name="cne" value="<%=c.getCne() %>" > 
                </div>
                
                <div class="input-box">
                    <span class="details"> Telephone</span>
                     <input type="text" name="phone" value="<%=c.getTelephone() %>" > </br>
                </div>
                 <div class="input-box" style="margin-top: 25px;">
                    <span class="details">Numero de la place</span>
                    <input type="number" name="id_place" value="<%=place.getId() %>">  
                 </div>
                <div class="input-box" style="margin-top: 25px;">
                    <span class="details">Quartier</span>
                    <input type="text" name="quartier" value="<%=place.getQuartier()%>"> 
                </div>
                <div class="input-box">
                    <span class="details">Jour </span>
                     <input type="text" name="jour" value="<%=place.getJour()%>">  
                 </div>
                <div class="input-box">
                    <span class="details">Heure debut </span>
                    <input type="number" name="date_debut" value="<%=place.getDate_debut()%>">
                 </div>
                <div class="input-box">
                    <span class="details">Heure fin</span>
                    <input type="number" name="date_fin" value="<%=place.getDate_fin()%>">  
                 </div>   
                 <div class="input-box">
                    <span class="details">Prix Totale (DH) </span>
                     <input type="number" name="prix" value="<%=place.getPrix() %>" >
                  </div> 
                <input type="text" name="email" value="<%=c.getEmail() %>" hidden="true"> 
                <input type="number" name="id_user" value="<%=c.getId() %>" hidden="true">  
            </div>
            <div class="button">
                <input type="submit" value="Confirmer Reservation">
            </div>
        </form>
    </div>
    </div>
  
</body>
</html>