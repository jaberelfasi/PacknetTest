<!DOCTYPE html>
<?php 
require __Dir__ . '/Dao.php';
$albumData = $db->getAllData();
$sums = array();
$years = array();
$sumMoneys = array();

for ($i = 2000; $i < 2018; $i++) {
    $sum = 0;
    $sumMoney = 0;
    for ($j = 0; $j < 100; $j++) {
        if ($albumData[$j]['year_issued'] == $i) {
            $sum = $sum + 1;
            $sumMoney = $sumMoney + $albumData[$j]['cost'];
        }
    }
    $sums[] = $sum;
    $years[] = $i;
    $sumMoneys[] = $sumMoney;
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
    <th>year</th>
    <th>total number of albums</th>
    <th>total money spent</th>
  </tr>
  <?php for ($i=0; $i<17; $i++){
  echo "<tr>"
  . "<td> $years[$i] </td>"
  . "<td> $sums[$i] </td>"
  . "<td> $sumMoneys[$i]</td>"
  . "</tr>";
  } ?>
 
</table>

</body>
</html>
