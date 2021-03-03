<?php

require_once "../class/VeiculoOpcionais.class.php";

$VeiculoOpcionais = new VeiculoOpcionais();

if ($VeiculoOpcionais->consulta_dados()):
    print $VeiculoOpcionais->getRetorno_dados();
else:
    print 0;
endif;