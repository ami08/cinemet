<?php

try
{
/*        $conn = new PDO('mysql:host='.$PARAM_hote.';dbname='.$PARAM_nom_bd, $PARAM_utilisateur, $PARAM_mot_passe);*/


$base = new PDO('mysql:host=localhost; dbname=cinemet1', 'amin', 'asw123');

}
 
catch(Exception $e)
{
    echo 'Erreur : '.$e->getMessage().'<br />';
    echo 'N° : '.$e->getCode().'<br />';
}
?>