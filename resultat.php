
<?php
/*
$nom = $_POST['name'];
$Prénom = $_POST['fname'];
$mail = $_POST['mail'];
$comment = $_POST['komment'];

echo "Le nom saisi est : ".$nom."<br>";
echo "Le mail saisi est : ".$mail."<br>";
echo "Le commentaire saisi est : ".$comment."<br>";
*/
?>

<?php include ('connexion.php');
$sql  = $base->query("INSERT INTO `genre` (`description`) 
VALUES ( '".$_POST['descr']."')");

if($sql){
 echo "Enregistré !";
}
else{
	echo "PAS Enregistré !";
}


$base=null;

<?php include ('connexion.php');
$sql  = $base->query("INSERT INTO `films` (`description`) 
VALUES ( '".$_POST['descr']."')");

if($sql){
 echo "Enregistré !";
}
else{
	echo "PAS Enregistré !";
}


$base=null;

<?php include ('connexion.php');
$sql  = $base->query("INSERT INTO `acteur` (`description`) 
VALUES ( '".$_POST['descr']."')");

if($sql){
 echo "Enregistré !";
}
else{
	echo "PAS Enregistré !";
}


$base=null;


<?php include ('connexion.php');
$sql  = $base->query("INSERT INTO `realisateur` (`description`) 
VALUES ( '".$_POST['descr']."')");

if($sql){
 echo "Enregistré !";
}
else{
	echo "PAS Enregistré !";
}


$base=null;