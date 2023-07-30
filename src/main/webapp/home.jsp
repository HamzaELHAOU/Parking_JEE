<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceuil</title>
    <!-- fichier css -->
    <link rel="stylesheet" href="css/stylehome.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/all.min.css" />
    <!-- Rendre touts les elemtents normal -->
    <link rel="stylesheet" href="css/normalize.css" />
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,600&display=swap" rel="stylesheet" />
<style type="text/css">
/* Start Landing Section  */
.landing{
      
      background-size: cover;
      height: 650px;
      position: relative;
  }
  .landing .recherche{
      position: absolute;
      left: 50%;
      top: 50%;
      text-align: center;
      transform: translate(-50%, -50%);
      max-width: 100%;
      width: 30%;
      padding: 15px;
      background-color: white;
      border-radius: 15px;
      box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
  }
  .landing .recherche .input-box{
    margin-bottom: 20px;
    width: 90%;
    margin: 20px auto;
    opacity: 0.8;
  }
  .landing .recherche .input-box .zonetext{
    height: 50px;
    width: 100%;
    outline :none;
    border-radius: 5px;
    border: 1px solid #ccc;
    padding-left: 15px;
    font-size: 15px;
    border-block-width: 2px;
    transition: all 0.3s ease;
  }
  .landing .recherche .input-box .zonetext:focus,
  .landing .recherche .input-box textarea:focus{
   border-color: var(--secondary-color);
}
  form .button{
    height: 45px;
    margin-bottom: 15px;
    text-align: center;   
}
.landing .recherche form .button input{
    height: 100%;
    width: 90%;
    outline: none;
    color: white;
    border: none;
    font-size: 18px;
    font-weight: 600;
    letter-spacing: 1px;
    border-radius: 5px;
    background-color: var(--secondary-color); 
}

@media (max-width:850px){
    .landing .recherche{
        width: 80%;
    }
}


 /* Start Features */
</style>
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
  <!-- Start Landing Section -->
          <div class="landing" style="background-image: url(images/parking1.jpg);">
         <div class="recherche">
            <form action="chercher.do" method="post">
                <div class="input-box">
                    <select name="id_park" id="" class="zonetext">
                        <option value="1">OULFA</option>
                        <option value="2">SIDI MAAROUF 2</option>
                        <option value="3">MAARIF</option>
                        <option value="3">ANFA</option>
                    </select>
                </div>
                <div class="input-box">
                    <input type="date" name="jour" placeholder="Entrer le jour" required class="zonetext">
                </div>
                
                <div class="input-box">
                     <input type="number"  name="datedebut" placeholder="Entrer date debut" required class="zonetext">
                </div>
                <div class="input-box">
                     <input type="number" name="datefin" placeholder="Entrer date fin" required class="zonetext">
                </div>
                <div class="button">
                    <input type="submit" value="chercher">
                </div>            
            </form>
         </div>
     </div>
  <!-- End Landing Section -->
  <!-- Start Features -->
     <div class="features">
         <div class="container">
         <div class="feat">
             <i class="fas fa-magic fa-3x"></i>
             <h3>Gagner de l'argent</h3>
             <p> grace  aux liens publicitaires : en fonction du nom de domaine et dans la langue de vos visiteurs</p>
         </div>
         <div class="feat">
            <i class="far fa-gem fa-3x"></i>
            <h3>Mise en oeuvre facile</h3>
            <p>entierement gratuite pour vous
Des visiteurs au lieu d'un simple site en construction : les noms de domaine parqués sont accessibles en ligne et se vendent deux fois plus vite que les noms de domaine hors ligne.</p>
        </div>
        <div class="feat">
            <i class="fas fa-globe-asia fa-3x"></i>
            <h3>Connaitre la valeur d'un nom de domaine </h3>
            <p> des statistiques précieuses sur les visites comme base pour les negociations de prix avec les acheteurs intéressés.</p>
        </div>
     </div>
    </div>
    <!-- Start Services -->
    <div class="services" id="services">
        <div class="container">
            <h2 class="special-heading">Services</h2>
            <p>Don't be busy, be productives</p>
            <div class="services-content">
                <div class="col">
                    <!-- Start Service 1 -->
                    <div class="srv">
                        <i class="fas fa-pencil-ruler fa-2x"></i>
                        <div class="text">
                            <h3>Graphic Desing</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae dolorum animi consequatur, alias .</p>
                        </div>
                    </div>
                    <div class="srv">
                        <i class="fas fa-vector-square fa-3x"></i>
                        <div class="text">
                            <h3>UI & UX</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae dolorum animi consequatur, alias .</p>
                        </div>
                    </div>
                    <!-- End Srevice 1 -->
                </div>
                <div class="col">
                    <!-- Start Service 2-->
                    <div class="srv">
                        <i class="fas fa-pencil-ruler fa-2x"></i>
                        <div class="text">
                            <h3>Graphic Desing</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae dolorum animi consequatur, alias .</p>
                        </div>
                    </div>
                    <div class="srv">
                        <i class="fas fa-vector-square fa-3x"></i>
                        <div class="text">
                            <h3>UI & UX</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae dolorum animi consequatur, alias .</p>
                        </div>
                    </div>
                    <!-- End Srevice 2-->
                </div>
                <div class="col">
                    <!-- Start Service 3-->
                      <div class="image image-colum">
                          <img src="images/montagne.jfif" alt="">
                      </div>
                    <!-- End Srevice 3-->
                </div>
            </div>
        </div>
    </div>
    <!-- End Services -->
  <!-- End Features -->
  <!-- Start PortFolio -->
  <div class="portfolio" id="portfolio">
    <div class="container">
        <h2 class="special-heading">Parkings</h2>
        <p>If you do it rigth, it will last forever.</p>
        <div class="portfolio-content">
           <div class="card">
               <img src="images/portfolio1.jpg" alt="">
               <div class="info">
                   <h3>Project Here</h3>
                   <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorem ad laboriosam praesentium accusamus consectetur aliquid accusantium quas.</p>
               </div>
           </div>
           <div class="card">
            <img src="images/portfolio2.jpg" alt="">
            <div class="info">
                <h3>Project Here</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorem ad laboriosam praesentium accusamus consectetur aliquid accusantium quas.</p>
            </div>
        </div>
        <div class="card">
            <img src="images/portfolio3.jpg" alt="">
            <div class="info">
                <h3>Project Here</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorem ad laboriosam praesentium accusamus consectetur aliquid accusantium quas.</p>
            </div>
        </div>
        </div>
    </div>
</div>
  <!-- End PortFolio -->
  <!-- Start Abput-->
  <div class="about" id="about">
    <div class="container">
        <h2 class="special-heading">About</h2>
        <p>Less is more Work.</p>
        <div class="about-content">
           <div class="image">
               <img src="images/about.jpg" alt="">
           </div>
           <div class="text">
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quisquam veniam repellat expedita neque! Aperiam odio, velit esse ab totam sint architecto unde, facere labore doloremque eum incidunt at perferendis.</p>
               <hr>
               <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim provident vitae cupiditate molestiae consectetur adipisci fugit asperiores aliquid! Harum aspernatur cumque qui omnis magni aliquam corporis? Consectetur nulla eveniet maiores.</p>
            </div>
        </div>
    </div>
</div>
  <!-- End PAbout -->
  <!-- Start Contact -->
  <div class="contact" id="contact">
      <div class="container">
        <h2 class="special-heading">Contact</h2>
        <p>we are born to create.</p>
        <div class="info">
            <p class="label">Feel free to drop us a line at :</p>
            <a href="mailto:email@gmail.com?subject=Contact" class="link">emailparking@gmail.com</a>
            <div class="social">
                Find Us On Social Networks
                <i class="fab fa-youtube"></i>
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
            </div>
        </div>
      </div>
  </div>
    <!-- End Contact -->
    <!-- Start Footar -->
    <div class="footer">
        &copy: 2022 <span>Leon</span> All Right Reserved 
    </div>
    <!-- End Footar -->
</body>
</html>