<?php

require_once "../class/Veiculo.class.php";

$Veiculo = new Veiculo();
$Veiculo->setId_veiculo($_POST['vsIdVeiculo']);

if ($Veiculo->informacoes_whatsapp()):
    print $Veiculo->getRetorno_dados();
else:
    print 0;
endif;