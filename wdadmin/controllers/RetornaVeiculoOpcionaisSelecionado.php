<?php

require_once "../class/VeiculoOpcionais.class.php";

$VeiculoOpcionais = new VeiculoOpcionais();
$VeiculoOpcionais->setId_veiculo_opcionais($_POST['viIdVeiculoOpcionais']);

if ($VeiculoOpcionais->edita_dados()):
    print $VeiculoOpcionais->getRetorno_dados();
else:
    print 0;
endif;