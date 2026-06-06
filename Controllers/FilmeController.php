<?php

require_once "Models/Filme.php";

class FilmeController
{
    private $filme;

    public function __construct($db)
    {
        $this->filme = new Filme($db);
    }

    public function listar()
    {
        return $this->filme->listar();
    }
}