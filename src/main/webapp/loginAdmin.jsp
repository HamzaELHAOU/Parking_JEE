<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Admin</title>
      <link rel="stylesheet" href="css/loginClient.css">
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action="loginAdmin.do" method="post">
            <div class="field">
               <input type="text" required  name="email">
               <label>Email Address</label>
            </div>
            <div class="field">
               <input type="password" required name="codea">
               <label>Password</label>
            </div>
        <div class="field">
               <input type="submit" value="Login">
            </div>
          
         </form>
      </div>
   </body>
</html>