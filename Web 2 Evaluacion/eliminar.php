﻿<?php
	if(isset($_POST["btn-form"])){
		$servidor = "localhost";
		$usuari = "root";
		$password = "";
		$db = "futbol";

		$codi = $_POST['codi'];



		
		$conn = new mysqli($servidor, $usuari, $password, $db);
		
		if ($conn->connect_error) {
			die("Connexió KO: " . $conn->connect_error);
		} else {
				$sql = "DELETE from equips WHERE codi='".$codi."';";

				if ($conn->query($sql) === TRUE) {
					echo "Registre eliminat amb èxit";
				} else {
					echo "Error: " . $sql . "<br>" . $conn->error;
				}

			$conn->close();
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="../../favicon.ico">

		<title>AW Pancho Fraquelli Steinhardt</title>

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

		<style>.carousel-item{
					height: 750px;
				}</style>
	</head>
  <body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="index.html">AW Pancho Fraquelli Steinhardt</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Mostrar
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="mostrar1.php">Mostrar 1</a>
							<a class="dropdown-item" href="mostrar2.php">Mostrar 2</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="insertar.php">Insertar</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="modificar.php">Modificar</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="eliminar.php">Eliminar</a>
					</li>

				</ul>
			</div>
		</nav>
			<style> form{
						margin: 10px 300px 0px 300px;
					}
			</style>

			<form action="eliminar.php" method="POST">
				<div class="form-group">
					<label>Codigo</label>
					<input type="text" name="codi" class="form-control" placeholder="Codigo del equipo a eliminar" required>
					</div>
					<button type="submit" name="btn-form" class="btn btn-danger">Eliminar</button>
			</form>
			<style>
			footer .glyphicon {
			  font-size: 20px;
			  margin-bottom: 20px;
			  color: #f4511e;
			}
			</style>
			<style>
			footer {
			padding: 25px;
			background: -moz-linear-gradient(top, rgba(0,0,0,0) 22%, rgba(0,0,0,0.65) 32%, rgba(0,0,0,0.65) 70%, rgba(0,0,0,0.65) 94%, rgba(255,255,255,0.65) 97%, rgba(255,255,255,0.65) 98%, rgba(255,255,255,0.65) 100%); /* FF3.6-15 */
			background: -webkit-linear-gradient(top, rgba(0,0,0,0) 22%,rgba(0,0,0,0.65) 32%,rgba(0,0,0,0.65) 70%,rgba(0,0,0,0.65) 94%,rgba(255,255,255,0.65) 97%,rgba(255,255,255,0.65) 98%,rgba(255,255,255,0.65) 100%); /* Chrome10-25,Safari5.1-6 */
			background: linear-gradient(to bottom, rgba(0,0,0,0) 22%,rgba(0,0,0,0.65) 32%,rgba(0,0,0,0.65) 70%,rgba(0,0,0,0.65) 94%,rgba(255,255,255,0.65) 97%,rgba(255,255,255,0.65) 98%,rgba(255,255,255,0.65) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
			}
			</style>

			<footer class="container-fluid text-center">
				<a href="#myPage" title="To Top">
					<span class="glyphicon glyphicon-chevron-up"></span>
				</a>
				<p><br><br>AW Pancho Fraquelli Steinhardt - <a href="index.html" title="Visit Home">Home</a></p> 
			</footer>
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  </body>
</html>