<?php

require_once "../class/Veiculo.class.php";

$Veiculo = new Veiculo();

if ($Veiculo->consulta_dados()):
    print $Veiculo->getRetorno_dados();
else:
    print 0;
endif;