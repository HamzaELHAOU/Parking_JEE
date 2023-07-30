<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <!-- Start Landing Section -->
          <div class="landing">
         <div class="recherche">
            <form action="chercher.do" method="post">
                <div class="input-box">
                    <select name="quartier" id="" class="zonetext">
                        <option value="quartier1">Quartiet 1</option>
                        <option value="quartier2">Quartiet 2</option>
                        <option value="quartier3">Quartiet 3</option>
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
</body>
</html>