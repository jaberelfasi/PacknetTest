<!DOCTYPE html>
<?php 
require __Dir__ . '/Dao.php';
$albumData = $db->getByFamilyMember();

//$input2 = array("Jaber", "Ibra", "mom", "dad", "sis", "bro", "littleBro");
////$array = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");
//$sums_array = array();
//$genres_array = array();
//for ($i = 0; $i < sizeof($input2); $i++) {
//    $sum = 0;
//    for ($j = 0; $j < 100; $j++) {
//        //echo $array[$i];
////        if (preg_match('/$array[$i]/',$albumData[$j]['genres'], $matches_out)) {
////            echo "found";
////            $sum=$sum+1;
////            
////        } 
//        if (strpos($albumData[$j]['genres'], $input2[$i]) !== false) {
//            //echo 'true';
//            //echo "<br>";
//            $sum=$sum+1;
//        }
//    }
//    $sums_array[] = $sum;
//    $genres_array[] = $input2[$i];
//}

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
    <th>Album</th>
    <th>Family Member</th>
    <th>Cost</th>
    <th>Genre</th>
  </tr>
  <?php for ($i=0; $i<100; $i++){
      //title, artist, no_tracks, year_issued, genres, purchase_date, cost, purchased_by
  echo "<tr>"
  . "<td>".$albumData[$i]['title']." </td>"
  . "<td> ". $albumData[$i]['purchased_by'] ."</td>"
  . "<td>" .$albumData[$i]['cost']." </td>"
  . "<td> ".$albumData[$i]['genres']." </td>"
  . "</tr>";
  } ?>
 
</table>

</body>
</html>
