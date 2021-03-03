<?php

require_once "../class/VeiculoOpcionais.class.php";

$VeiculoOpcionais = new VeiculoOpcionais();
$VeiculoOpcionais->setId_veiculo_opcionais($_POST['inputIdVeiculoOpcionais']);
$VeiculoOpcionais->setDescricao($_POST['inputDescricao']);
$VeiculoOpcionais->setStatus($_POST['inputStatus']);

if ($VeiculoOpcionais->salva_dados()):
    print $VeiculoOpcionais->getRetorno_dados();
else:
    print 0;
endif;