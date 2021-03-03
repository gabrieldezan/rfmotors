<?php

require_once "../class/VeiculoMarcas.class.php";

$VeiculoMarcas = new VeiculoMarcas();

if ($VeiculoMarcas->consulta_dados()):
    print $VeiculoMarcas->getRetorno_dados();
else:
    print 0;
endif;