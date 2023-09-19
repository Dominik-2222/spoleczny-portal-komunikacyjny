<?php
$host='localhost';
$user="spk2022";
$password="Spk2-0-2-2";
$dbName="dominik2043";
$baza = @new mysqli($host, $user, $password, $dbName); //połączenie z bazą
$baza->query("SET NAMES 'utf8'");

if (mysqli_connect_errno()) {
    echo "Wystąpił błąd połączenia z bazą";
}   

?>