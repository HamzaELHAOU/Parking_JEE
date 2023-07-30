<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
   .message_confirme{
   margin-top: 15px;
   height :80px;
   text-align:center;
   background-color: #3ADF00;
   border-radius: 5px;
   font-size: 20px;
   color:white;
   padding-top: 10px;
 }
</style>
</head>
<body>

<head>
    <meta charset="utf-8">
    <title>Responsive Navbar | CodingNepal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/user.css">
  </head>
  <body>
  
    <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo"><%=session.getAttribute("nom") %>  <%=session.getAttribute("prenom") %> </label>
      <ul>
        <li><a class="active" href="home.jsp">Home</a></li>
        <li><a  id="show_contact">Contact</a></li>
        <li><a href="#">liste réservation</a></li>
        <li><a href="liste.do">Parking</a></li>
        <li><a href="modefierCompte.jsp" > compte</a></li>
        <li><a href="home.jsp">Réserver</a></li>
      </ul> 
    </nav>
  
<section>
    <div class="container">
    
  
		
	   
        <div class="liste_réservation">
           <h1 class="heading">liste réservations</h1>
           <table class="table1">
              <thead class="thead1">
                 <th>Numero </th>
                 <th>Nom</th>
                 <th>Prenom</th>
                 <th>Addresse</th>
                 <th>place</th>
                 <th>heures</th>
                  <th>début</th>
                 <th>fin</th>
                 <th>prix</th>
                 
               
              </thead>
              <tbody>
              
              
                <c:forEach items="${reserve.res}" var="res">

                 <tr>
                    <td>${res.id} </td>
                    <td>${res.nom} </td>
                    <td>${res.prenom} </td>
                    <td>${res.quartier} </td>
                    <td>${res.id_place}  </td>
                    <td>${res.jour} </td>
                     <td>${res.date_debut} </td>
                    <td>${res.date_fin}  </td>
                    <td>${res.prix} </td>
                   
                 </tr>
  
  </c:forEach> 

                       
           </tbody>
           </table>
        </div>      
        </div>
    </section>

    <div class="contact">
      <form class="form_contact" action="contact.do" method="post">
        <h1>Contactez-nous</h1>
        <div class="separation"></div>
        <div class="corps-formulaire">
          <div class="gauche">
            <div class="groupe">
              <label>Votre Prénom</label>
              <input type="text" autocomplete="off" name="prenom" />
              <i class="fas fa-user"></i>
            </div>
            <div class="groupe">
              <label>Votre Nom</label>
              <input type="text" autocomplete="off"  name="nom"/>
              <i class="fas fa-user"></i>
            </div>
            <div class="groupe">
              <label>Votre adresse e-mail</label>
              <input type="text" autocomplete="off"  name="email"/>
              <i class="fas fa-envelope"></i>
            </div>
            <div class="groupe">
              <label>Votre téléphone</label>
              <input type="text" autocomplete="off"  name="tele"/>
              <i class="fas fa-mobile"></i>
            </div>

          </div>
  
          <div class="droite">
            <div class="groupe">
              <label>Message</label>
              <textarea placeholder="Saisissez ici..."  name="message"></textarea>
            </div>
          </div>
        </div>
  
        <div class="pied-formulaire" align="center">
          <button id="close_contact">Envoyer le message</button>
        </div>
      </form>
    </div>
   
   
   
    <script> 
    
    document.querySelector("#show_contact").addEventListener("click",function(){
      document.querySelector(".contact").classList.add("active");
    });
 
    document.querySelector("#close_contact").addEventListener("click",function(){
document.querySelector(".contact").classList.remove("active");
});
    
    

    

    </script>
  </body>



</body>
</html>