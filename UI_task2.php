<!DOCTYPE html>
<?php 
require __Dir__ . '/Dao.php';
$albumData = $db->getAllData();

$array = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");
$sums_array = array();
$genres_array = array();
for ($i = 0; $i < sizeof($array); $i++) {
    $sum = 0;
    for ($j = 0; $j < 100; $j++) {
        //echo $array[$i];
//        if (preg_match('/$array[$i]/',$albumData[$j]['genres'], $matches_out)) {
//            echo "found";
//            $sum=$sum+1;
//            
//        } 
        if (strpos($albumData[$j]['genres'], $array[$i]) !== false) {
            //echo 'true';
            //echo "<br>";
            $sum=$sum+1;
        }
    }
    $sums_array[] = $sum;
    $genres_array[] = $array[$i];
}


?>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<table>
  <tr>
    <th>Genre</th>
    <th>total number of albums</th>
  </tr>
  <?php for ($i=0; $i<sizeof($array); $i++){
  echo "<tr>"
  . "<td> $genres_array[$i] </td>"
  . "<td> $sums_array[$i] </td>"
  . "</tr>";
  } ?>
 
</table>

</body>
</html>
