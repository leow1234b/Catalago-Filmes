<!DOCTYPE html>
<html>
<head>
    <title>Catálogo de Filmes</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-5">

<h1>Catálogo de Filmes</h1>

<table class="table table-striped">

<tr>
    <th>ID</th>
    <th>Título</th>
    <th>Gênero</th>
    <th>Ano</th>
    <th>Sinopse</th>
</tr>

<?php while($filme = $filmes->fetch(PDO::FETCH_ASSOC)) { ?>

<tr>
    <td><?= $filme['id'] ?></td>
    <td><?= htmlspecialchars($filme['titulo']) ?></td>
    <td><?= htmlspecialchars($filme['genero']) ?></td>
    <td><?= $filme['ano'] ?></td>
    <td><?= htmlspecialchars($filme['sinopse']) ?></td>
</tr>

<?php } ?>

</table>

</div>

</body>
</html>