<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleregister.css">
    <link rel="stylesheet" href="css/stylehome.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/all.min.css" />
    <!-- Rendre touts les elemtents normal -->
    <link rel="stylesheet" href="css/normalize.css" />
    <title> Reserver</title>
    
    
</head>
<body>

    <div class="register">
     <div class="containere">
        <div class="title">Registration</div>
        <form action="modefierCompte.do" method="post">
            <div class="user-details">
              
                 <div class="input-box">
                    <span class="details">Cnie</span>
                    <input type="text" placeholder="entrer votre cnie" required value="<%=session.getAttribute("cnie") %>" name="cne">
                </div>
                  <div class="input-box">
                    <span class="details">Nom </span>
                    <input type="text" placeholder="Entrer votre nom" required value=" <%=session.getAttribute("nom") %>" name="nom">
                </div>
                <div class="input-box">
                    <span class="details">Prenom</span>
                    <input type="text" placeholder="Entrer votre prenom" required value="<%=session.getAttribute("prenom") %>" name="prenom">
                </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="text" placeholder="Entrer votre email" required value="<%=session.getAttribute("email") %>" name="email">
                </div>
                <div class="input-box">
                    <span class="details">Numero Telephone</span>
                    <input type="text" placeholder="Entrer votre numero" required value="<%=session.getAttribute("tele") %>" name="tele">
                </div>
                <div class="input-box">
                    <span class="details">Adresse</span>
                    <input type="text" placeholder="Entrer votre adresse" required value="<%=session.getAttribute("adresse") %>" name="adresse">
                </div>
                <div class="input-box">
                    <span class="details">Solde </span>
                    <input type="text" placeholder="Entrer votre password" required value="<%=session.getAttribute("compte") %>" name="compte">
                </div>
                <div class="input-box">
                    <span class="details">Mot de Passe</span>
                    <input type="text" placeholder="Entrer votre password" required value=" <%=session.getAttribute("code") %>" name="codem">
                </div>
               
                <div class="gender-details">
                    <input type="radio" name="gender" id="dot-1"  value="homme">
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
                <input type="submit" value="Modefier">
            </div>
        </form>
    </div>
    </div>
</body>
</html>