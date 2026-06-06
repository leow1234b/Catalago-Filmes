

<?php

class Database
{
    private $host = "127.0.0.1";
    private $dbname = "catalogo_filmes";
    private $user = "root";
    private $pass = "";

    public function conectar()
    {
        try {

            $pdo = new PDO(
                "mysql:host=$this->host;port=3307;dbname=$this->dbname;charset=utf8",
                $this->user,
                $this->pass
            );

            return $pdo;

        } catch(PDOException $e) {

            die("Erro: " . $e->getMessage());

        }
    }
}