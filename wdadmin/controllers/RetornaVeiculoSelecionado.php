<?php

require_once "../class/Veiculo.class.php";

$Veiculo = new Veiculo();
$Veiculo->setId_veiculo($_POST['viIdVeiculo']);

if ($Veiculo->edita_dados()):
    print $Veiculo->getRetorno_dados();
else:
    print 0;
endif;