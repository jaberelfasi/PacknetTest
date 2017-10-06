<?php

require __Dir__ . '/Dao.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//this method generated the mock data
//$db->insertMockAlbumData();

$albumData = $db->getAllData();

//print_r($albumData);
//echo $albumData[0]['year_issued'];
//echo $albumData[1]['year_issued'];
//echo $albumData[2]['year_issued'];
//echo $albumData[3]['year_issued'];
//echo $albumData[4]['year_issued'];
//this code calculates how many albums for each year
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

echo "the total amount of albums per year";
echo "<pre>";
print_r($sums);
echo "</pre>";

echo  "years";
echo "<pre>";
print_r($years);
echo "</pre>";

echo "the total amound of money spent per year";
echo "<pre>";
print_r($sumMoneys);
echo "</pre>";
