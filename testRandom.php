<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$input = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");

$rand_keys = array_rand($input, 3);
$genre1 = $input[$rand_keys[0]] . "\n";
$genre2 = $input[$rand_keys[1]] . "\n";
$genre3 = $input[$rand_keys[2]] . "\n";

$genre = $genre1 . ", " . $genre2 . ", " . $genre3;

echo $genre;
//echo $Genere;

echo rand(1, 200);

echo "<br>";

$start = strtotime("01 January 2000");

//End point of our date range.
$end = strtotime("29 December 2017");

//Custom range.
$timestamp = mt_rand($start, $end);

//Print it out.
echo date("Y-m-d", $timestamp);

echo "<br>";

$input2 = array("Jaber", "Ibra", "mom", "dad", "sis", "bro", "littleBro");
$rand_keys2 = array_rand($input2, 2);
$purchased_by = $input2[$rand_keys2[0]] . "\n";
echo $purchased_by;