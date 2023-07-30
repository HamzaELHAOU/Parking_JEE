<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                     <li><a href="#reserver">Reserver</a></li>
                     <li><a href="#login">Login</a></li>
                 </ul>
            </div>
         </div>
     </div>
  <!-- End Header -->
  <div class="container">
    <table class="table" style="margin-top: 20px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Jour</th>
            <th scope="col">Date debut</th>
            <th scope="col">Date fin</th>
            <th scope="col">Prix Totale</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>2022-04-02</td>
            <td>3</td>
            <td>4</td>
            <td>100 DH</td>
            <td><button type="submit" class="btn btn-danger">Reserver</button></td>
          </tr>
           <tr>
            <th scope="row">2</th>
            <td>2022-04-02</td>
            <td>3</td>
            <td>4</td>
            <td>100 DH</td>
            <td><button type="submit" class="btn btn-danger">Reserver</button></td>
          </tr>
        </tbody>
      </table>
    </div>
</body>
</html>