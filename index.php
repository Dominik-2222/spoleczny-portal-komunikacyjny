<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="1style.css">    <meta http-equiv="content-type" content="text/html" charset="iso-8859-2">
    <title>strona</title>
</head>

<body>
    <div id="pasek">
        <div id="pasek_">
            <div>
                <div>
                    <div id="pole_wyszukiwania">

                    
                    <form method="get" action="/wyszukiwarka.php"> <input type="submit" value="Szukaj" id="_2"><input type="text" name="a" id="_1">

                        </form>
                    </div>

                </div>
            </div>

           <a href="/partnerzy.php"><div id="menu">Partnerzy</div></a> <a href="/index.php">
                <div id="menu">Strona główna</div>
            </a>
            <a href="/onas.php">
                <div id="menu">O nas</div>
            </a>
            
            <a href="/kontakt.php">
                <div id="menu">kontakt</div>
            </a>
            <a href="/slownik.php"><div id="menu">slownik</div></a>
        </div>
    </div>

    <div id="srodek">
        <div id="all">
       <h1 id='title'>
        Do stworzenia tej strony zainspirowało nas kilka tematów.<br><br>
Pierwszy to chęć pomocy osobom będącym w trudnej sytuacji, które nie wiedzą do kogo mogą się zwrócić i gdzie uzyskać wsparcie.
<br><br>Drugi to danie narzędzia dla ludzi chcących się zaangażować społecznie, poszukujących organizacji w których mogliby się realizować i wybrać najbliższą sobie formę działania.
<br><br>Trzeci powód - stworzenie miejsca do zaprezentowania swojej działalności organizacjom społecznym, które zazwyczaj nie mają funduszy na swoją promocję czy na pozycjonowanie w internecie. 
<br><br>Mamy nadzieję, że ta strona będzie narzędziem ułatwiającym komunikację, pomagającym potrzebującym i inspirującym do działania.
</h1>
            <?php
            if (isset($_GET['a'])) {
                $wyszukiwanie = $_GET['a'];
                include("polacz.php");
                $wynik = mysqli_query($baza, "SELECT * FROM firmy WHERE nazwa like '%$wyszukiwanie%' or Opis like '%$wyszukiwanie%'  or krs like '%$wyszukiwanie%' ");
                echo "<table>";
                $a = 0;
                while ($row = mysqli_fetch_array($wynik)) {
                    $a++;
                    echo '<tr>' . '<td>' . $row['id'] . '</td>' . "<td><a href=" . $row['www'] . "</a>" . $row['nazwa'] . "</td>" . "<td>" . $row['krs'] . '</td>' . "<td>" . $row['Opis'] . '</td>' . '</tr>';
                }

                echo "</table>";
                if ($a == 0) {
                    echo "<h1>Brak wyników\nzglos zapytanie do  administracji</h1>";
                }
                mysqli_close($baza);
            }
            ?>
        </div>

    </div>

</body>

</html>