<?php

require_once "../class/VeiculoMarcas.class.php";

$VeiculoMarcas = new VeiculoMarcas();
$VeiculoMarcas->setId_veiculo_marca($_POST['viIdVeiculoMarcas']);

if ($VeiculoMarcas->edita_dados()):
    print $VeiculoMarcas->getRetorno_dados();
else:
    print 0;
endif;