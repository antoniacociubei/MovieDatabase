<?php
require 'conectare.php';
?>

<!DOCTYPE html>
<html>
<head>
<title>4b</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
  background-image: url('4.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

table, th, td {
    border: 1px solid white;    
}

table {
  border-collapse: collapse;
  width: 95%;
  left:50%;
  top:50%;
  margin-left: 20px;
  margin-top: 100px;
  border-width: 5px;
}

th {
  height: 70px;
}

th, td {
  padding: 15px;
  text-align: center;
}

.text{
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;

}

</style>
</head>
<body>
<form action="PaginaPrincipala.html" >
<input type="submit" name="inapoi" value="Revino la PAGINA PRINCIPALA">
</form>

<div class="text">
  
<?php
$sql = "SELECT d1.id_actor AS actor1 ,d2.id_actor AS actor2
FROM Distributie d1 INNER JOIN
     Distributie d2
     ON (d1.titlu_film = d2.titlu_film AND d1.an_film = d2.an_film)
WHERE d1.id_actor IN(SELECT id_persoana FROM Persoana WHERE sex='F') 
AND d2.id_actor IN(SELECT id_persoana FROM Persoana WHERE sex='M')";
$result = $con->query($sql);
 

if ($result->num_rows >0 ){
  echo "<table><tr><th>ID ACTOR 1</th><th>ID ACTOR 2</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["actor1"]. "</td><td>" . $row["actor2"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$con->close();
?>

  <center><form action="afisare4b.html" >
  <input type="submit" name="inapoi" value="INAPOI "></form></center>
  <center><form action="meniu.php" >
  <input type="submit" name="inapoi" value="INAPOI LA MENIU "></form></center>

</div>
</body>
</html>