<?php

require_once "../class/Veiculo.class.php";

$Veiculo = new Veiculo();
$Veiculo->setCliente($_POST['inputCliente']);
$Veiculo->setId_veiculo($_POST['inputIdVeiculo']);
$Veiculo->setTitulo($_POST['inputTitulo']);
$Veiculo->setAno_fabricacao($_POST['inputAnoFabicacao']);
$Veiculo->setAno_modelo($_POST['inputAnoModelo']);
$Veiculo->setKm($_POST['inputKM']);
$Veiculo->setPlaca($_POST['inputPlaca']);
$Veiculo->setOpcionais($_POST['inputOpcionais']);
$Veiculo->setCambio($_POST['selectCambio']);
$Veiculo->setCombustivel($_POST['selectCombustivel']);
$Veiculo->setValor_fipe($_POST['inputValorFipe']);
$Veiculo->setValor_venda($_POST['inputValorVenda']);
$Veiculo->setObservacoes($_POST['inputObservacoes']);
$Veiculo->setStatus($_POST['inputStatus']);
$Veiculo->setId_veiculo_marca($_POST['selectMarcas']);

if ($Veiculo->salva_dados()):
    print $Veiculo->getRetorno_dados();
else:
    print 0;
endif;