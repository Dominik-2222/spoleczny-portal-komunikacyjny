<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-16">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="1style.css">
    <meta http-equiv="content-type" content="text/html">
    <title>Baza NOP</title>
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
            <a href="/slownik.php">
                <div id="menu">slownik</div>
            </a>
        </div>
    </div>

    <div id="srodek">

        <table>
            <tr>
                <form method="get" action="">
                    <td>

                        <button type="submit" name="sort" value="id">Sortuj po id</button>
                    </td>
                    <td><button type="submit" name="sort" value="pojecie" >sortuj definicje A-Z</button>
                    </td>

                    <td>
                        <input type="text" name="szukaj"><input type="submit">
                    </td>
                </form>
            </tr>

            <?php
            include("polacz.php");
            if (isset($_GET['sort'])) {
                if ($_GET['sort'] == 'id' || $_GET['sort'] == 'pojecie') {
                    $sort = $_GET['sort'];
                }
            } else {
                $sort = 'id';
            }


            if (isset($_GET['szukaj'])) {
                $wyraz = $_GET['szukaj'];
                $wynik = mysqli_query($baza, "SELECT * FROM slownik where definicja like '%$wyraz%' ");
            }
            if ($_GET['szukaj'] == '') {
                $wynik = mysqli_query($baza, "SELECT * FROM slownik  order by $sort ");
            }


            $a = 0;

            while ($row = mysqli_fetch_array($wynik)) {
                $a++;
                echo "<tr>" . '<td>' . $row['id'] . '</td>' . "<td>" . $row['pojecie'] . "</td><td>" . $row['definicja'] . "</td>" . '</tr>';
            }
            echo "<tr><td>znaleziono pozycji:</td>" . "<td>" . $a . "</td><td>hasło: " . $wyraz . "</td></tr>";
            if ($a == 0) {
                echo "<h1>Brak wyników\nzglos zapytanie do  administracji</h1>";
            }
            mysqli_close($baza);




            ?>


        </table>



    </div>

</body>

</html>