<?php

class Dao {

    private $servername;
    private $username;
    private $password;
    private $dbname;
    private $connection;

    //construct
    public function __construct($host, $user, $pass, $db) {
        $this->servername = $host;
        $this->username = $user;
        $this->password = $pass;
        $this->dbname = $db;
    }

    public function insertMockAlbumData() {

        $this->openConnection();
        
        $truncateSql = "TRUNCATE TABLE Family_albums";
        $stmt = $this->connection->prepare($truncateSql);
        $stmt->execute();
        
        for ($i = 1; $i < 101; $i++) {
            $input = array("rock", "pop", "hiphop", "rap", "techno", "country", "house");
            $rand_keys = array_rand($input, 3);
            $genre1 = $input[$rand_keys[0]] . "\n";
            $genre2 = $input[$rand_keys[1]] . "\n";
            $genre3 = $input[$rand_keys[2]] . "\n";
            $genre = $genre1 . " " . $genre2 . " " . $genre3;

            $input2 = array("Jaber", "Ibra", "mom", "dad", "sis", "bro", "littleBro");
            $rand_keys2 = array_rand($input2, 2);
            $purchased_by = $input2[$rand_keys2[0]] . "\n";

            $no_tracks = rand(1, 200);
            $year_issued = rand(2000, 2017);
            $start = strtotime("01 January 2000");
            $end = strtotime("29 December 2017");
            $timestamp = mt_rand($start, $end);
            $purchase_date = date("Y-m-d", $timestamp);
            $cost = rand(5, 100);

            $sql = "insert into Family_albums "
                    . "(title, artist, no_tracks, year_issued, genres, purchase_date, cost, purchased_by)"
                    . " values('title$i','artist$i','$no_tracks','$year_issued','$genre','$purchase_date','$cost','$purchased_by')";

            $stmt = $this->connection->prepare($sql);
            $stmt->execute();
        }
    }
    
    public function getAllData() {
        $this->openConnection();
        $sql =    "SELECT title, artist, no_tracks, year_issued, genres, purchase_date, cost, purchased_by FROM Family_albums ORDER BY year_issued";
        
        $stmt = $this->connection->prepare($sql);
        $stmt->execute();
        $row = $stmt->fetchAll();
        return $row;
    }
    
    public function getByFamilyMember() {
        $this->openConnection();
        $sql =    "SELECT title, artist, no_tracks, year_issued, genres, purchase_date, cost, purchased_by FROM Family_albums ORDER BY purchased_by";
        
        $stmt = $this->connection->prepare($sql);
        $stmt->execute();
        $row = $stmt->fetchAll();
        return $row;
    }

    

    

    public function openConnection() {
        $dsn = "mysql:host=" . $this->servername . ";dbname=" . $this->dbname;
        $username = $this->username;
        $password = $this->password;
        /* $options = array(
          PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
          ); */
        try {
            $this->connection = new PDO($dsn, $username, $password);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo "connection successful";
        } catch (PDOException $e) {
            echo "connection failed" . $e->getMessage();
        }

        /* $this->connection = new mysqli($this->servername,$this->username,$this->password,$this->dbname);
          if($this->connection->connect_errno){
          echo "Connection failed badly. I mean really Bad!";
          die;
          } */
    }

    public function closeConnection() {
        $this->connection = null;
    }

}

$db = new Dao("localhost", "root", "addpeople", "packnet");
