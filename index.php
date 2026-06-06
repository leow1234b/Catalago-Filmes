<?php

require_once "Config/database.php";
require_once "Controllers/FilmeController.php";

$db = (new Database())->conectar();

$controller = new FilmeController($db);

$filmes = $controller->listar();

include "Views/filmes.php";