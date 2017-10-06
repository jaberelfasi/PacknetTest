<?php

require __Dir__ . '/Dao.php';
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//this method generated the mock data
//this will empty the database and generate new records
$db->insertMockAlbumData();

$albumData = $db->getAllData();
$albumsByFam = $db->getByFamilyMember();

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

echo "years";
echo "<pre>";
print_r($years);
echo "</pre>";

echo "the total amound of money spent per year";
echo "<pre>";
print_r($sumMoneys);
echo "</pre>";


echo $albumData[0]['genres'];
echo "<br>";
echo $albumData[1]['genres'];
echo "<br>";
echo $albumData[2]['genres'];
echo "<br>";
echo $albumData[3]['genres'];
echo "<br>";
echo $albumData[4]['genres'];
echo "<br>";

$array = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");
for ($i = 0; $i < sizeof($array); $i++) {
    echo $array[$i] . "<br>";
}
var_dump($array);


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

echo "the total amount of albums per genre";
echo "<pre>";
print_r($sums_array);
echo "</pre>";

echo "genres";
echo "<pre>";
print_r($genres_array);
echo "</pre>";


echo "<pre>";
print_r($albumsByFam);
echo "/<pre>";

$input2 = array("Jaber", "Ibra", "mom", "dad", "sis", "bro", "littleBro");
//$array = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");
$sums_array = array();
$genres_array = array();
for ($i = 0; $i < sizeof($input2); $i++) {
    $sum = 0;
    for ($j = 0; $j < 100; $j++) {
        //echo $array[$i];
//        if (preg_match('/$array[$i]/',$albumData[$j]['genres'], $matches_out)) {
//            echo "found";
//            $sum=$sum+1;
//            
//        } 
        if (strpos($albumData[$j]['genres'], $input2[$i]) !== false) {
            //echo 'true';
            //echo "<br>";
            $sum=$sum+1;
        }
    }
    $sums_array[] = $sum;
    $genres_array[] = $input2[$i];
}

