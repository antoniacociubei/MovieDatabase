<?php
require 'conectare.php';
?>

<!DOCTYPE html>
<html>
<head>
<title>3b</title>
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
  background-color: rgba(0,0,0, 0.55); /* Black w/opacity/see-through */
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
$suma=$_POST['suma'];
$moneda=$_POST['moneda'];
$sql = "SELECT * FROM Persoana WHERE castig_net > '$suma' AND moneda='$moneda'";
$result = $con->query($sql);
 

if ($result->num_rows >0 ){
  echo "<table><tr><th>ID</th><th>NUME</th><th>ADRESA</th><th>EMAIL</th><th>SEX</th><th>DATA NASTERII</th><th>CASTIG</th></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id_persoana"]. "</td><td>" . $row["nume"]. "</td><td>" . $row["adresa"]. "</td><td>" . $row["email"]. "</td><td>" . $row["sex"]. "</td><td>" . $row["data_nasterii"]. "</td><td>" . $row["castig_net"]. " " . $row["moneda"]. "</td></tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}
$con->close();
?>

  <center><form action="afisare3b.html" >
  <input type="submit" name="inapoi" value="INAPOI "></form></center>
  <center><form action="meniu.php" >
  <input type="submit" name="inapoi" value="INAPOI LA MENIU "></form></center>

  
</body>
</html>