<!DOCTYPE html>
<head>
<title>Meniu cerinte</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #900C3F;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 10%;
  height: 400px ; 
  background: #D85351;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 90%;
  text-align:left;
  background-color: #FAECEB;
  height: 400px;
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}


/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}

</style>
</head>

<body>  
  
  <header>
  <h1>Cerinte</h1>
</header>

<section>
  <nav>
    <ul><h2>
      <li><a href="afisare3a.html">3.A</a></li>
      <li><a href="afisare3b.html">3.B</a></li>
      <li><a href="afisare4a.html">4.A</a></li>
	    <li><a href="afisare4b.html">4.B</a></li>
	    <li><a href="afisare5a.html">5.A</a></li>
	    <li><a href="afisare5b.html">5.B</a></li>
	    <li><a href="afisare6a.html">6.A</a></li>
	    <li><a href="afisare6b.html">6.B</a></li>
    </h2></ul>
  </nav>
  
  <article>
  <p><b>3. Să se exprime în SQL următoarele interogări:</b><br>
a) Să se găsească detaliile filmelor pentru copii ordonate crescător după an și titlu.<br>
b) Să se găsească detaliile persoanelor cu câștig net peste 1000000 USD.</p>
  <p><b>4. Să se exprime în SQL următoarele interogări folosind operatorul JOIN:</b><br>
a) Să se afișeze detaliile studioului și producătorului ce au produs filmul ‘Barry’,2018.<br>
b) Care sunt perechile (id_actor1, id_actor2) de actori de sex diferit ce au jucat în același film? O pereche este unică în rezultat.</p>
  <p><b>5. Să se exprime în SQL fără funcții de agregare următoarele interogări folosind cel puţin o interogare imbricată şi operatori de genul EXISTS, IN,ALL,ANY:</b><br>
a) Să se găsească numele actriței cel mai puțin plătită.<br>
b) Să se găsească titlul, anul și durata filmelor cu durata mai mare decât durata filmului ‘Bohemian Rhapsody’, 2018.</p>
  <p><b>6. Să se exprime în SQL următoarele interogări folosind funcţii de agregare:</b><br>
a) Să se găsească pentru fiecare producător câte filme de gen ‘SF’ a produs.<br>
b) Să se găsească câștigul minim și câștigul maxim pentru președinții de studiouri.</p>
  </article>
  </section>  
</body>
</html>