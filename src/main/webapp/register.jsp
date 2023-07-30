<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title> Register</title>
     <!-- fichier css -->
     <link rel="stylesheet" href="css/styleregister.css">
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
        <div class="title">Registration</div>
        <form action="creationClient.do" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Cnie</span>
                    <input type="text" placeholder="Entrer votre nom" required name="cne">
                </div>
                                <div class="input-box">
                    <span class="details">Nom</span>
                    <input type="text" placeholder="Entrer votre nom" required name="nom">
                </div>
                <div class="input-box">
                    <span class="details">Prenom</span>
                    <input type="text" placeholder="Entrer votre prenom" required  name="prenom">
                </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="text" placeholder="Entrer votre email" required name="email">
                </div>
                   <div class="input-box">
                    <span class="details">Mot de Passe</span>
                    <input type="text" placeholder="Entrer votre password" required name="code">
                </div>
                <div class="input-box">
                    <span class="details"> Telephone</span>
                    <input type="text" placeholder="Entrer votre numero" required name="tele">
                </div>
                <div class="input-box">
                    <span class="details">Adresse</span>
                    <input type="text" placeholder="Entrer votre adresse" required name="adresse">
                </div>
                <div class="input-box">
                    <span class="details">Solde </span>
                    <input type="text" placeholder="Entrer votre password" required name="compte"">
                </div>
             
              
                <div class="gender-details">
                    <input type="radio" name="gender" id="dot-1" value="homme">
                    <input type="radio" name="gender" id="dot-2" value="femme">
                    <span class="gender-title">Gender</span>
                    <div class="category">
                        <label for="dot-1">
                            <span class="dot one"></span>
                            <span class="gender"> Male</span>
                        </label>
                        <label for="dot-2">
                            <span class="dot two"></span>
                            <span class="gender">Female</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Enregistrer">
            </div>
        </form>
    </div>
    </div>
</body>
</html>