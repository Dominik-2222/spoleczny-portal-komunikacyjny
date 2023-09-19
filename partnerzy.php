<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="iso-8859-2">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style1.css">    <meta http-equiv="content-type" content="text/html" charset="iso-8859-2">
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


            <a href="/partnerzy.php">
                <div id="menu">Partnerzy</div>
            </a> <a href="/index.php">
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
            <table>

        <?php
            
                
            include("polacz.php");
                $wynik = mysqli_query($baza, "SELECT * FROM firmy ");
                
                                $a = 0;
                while ($row = mysqli_fetch_array($wynik)) {
                    $a++;
                    echo "<tr>" . '<td>' . $row['id'] . '</td>' . "<td><a href=" . $row['www'] . "</a>" . $row['nazwa'] . "</td>" . "<td>" . $row['krs'] . '</td>' . "<td>" . $row['Opis'] . '</td>' . '</tr>';               }

                echo "</table>";
                if ($a == 0) {
                    echo "<h1>Brak wyników\nzglos zapytanie do  administracji</h1>";
                }
                mysqli_close($baza);
            
            ?>
        </div>

    </div>

</body>

</html>