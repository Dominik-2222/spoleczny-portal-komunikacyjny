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

            <h1 id="title">
                <div>„Całe nasze życie to działanie i pasja. Unikając zaangażowania w działania i pasje naszych czasów,
                    ryzykujemy, że w ogóle nie zaznamy życia.“

                    --Herodot</div>

            </h1>
            <h1 id="title">
                <div>Dzień dobry. Witaj na naszej stronie wolnej od szumu internetowego. Używając naszej wyszukiwarki otrzymasz dane najbardziej zgodne z Twoimi zapytaniami
                    nie pozycyjonujących się za pomocą reklam.</div>
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