<?php

require_once "../class/VeiculoMarcas.class.php";

$VeiculoMarcas = new VeiculoMarcas();
$VeiculoMarcas->setId_veiculo_marca($_POST['inputIdVeiculoMarcas']);
$VeiculoMarcas->setDescricao($_POST['inputDescricao']);
$VeiculoMarcas->setStatus($_POST['inputStatus']);

if ($VeiculoMarcas->salva_dados()):
    print $VeiculoMarcas->getRetorno_dados();
else:
    print 0;
endif;