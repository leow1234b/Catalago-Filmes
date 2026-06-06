<?php

class Filme
{
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function listar()
    {
        $sql = "SELECT * FROM filmes";

        $stmt = $this->conn->prepare($sql);
        $stmt->execute();

        return $stmt;
    }
}