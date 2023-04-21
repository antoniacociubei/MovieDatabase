<?php
require 'conectare.php';
?>

<!DOCTYPE html>
<html>
<head>
<title>6b</title>
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
  margin-top: 200px;
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
$sql = "SELECT MIN(castig_net) AS 'Castigul minim',MAX(castig_net) AS 'Castigul maxim'
FROM Persoana
WHERE id_persoana IN(SELECT id_presedinte FROM Studio)";
$result = $con->query($sql);
 

if ($result->num_rows >0 ){
  echo "<table><tr><th>CASTIGUL MINIM</th><th>CASTIGUL MAXIM</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["Castigul minim"]. "</td><td>" . $row["Castigul maxim"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$con->close();
?>

<center><form action="afisare6b.html" >
<input type="submit" name="inapoi" value="INAPOI "></form></center>
<center><form action="meniu.php" >
<input type="submit" name="inapoi" value="INAPOI LA MENIU "></form></center>
</div>  
</body>
</html>