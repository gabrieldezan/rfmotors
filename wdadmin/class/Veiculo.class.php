<?php

require_once "Conexao.class.php";

class Veiculo extends Conexao {
    /* =============== VARIAVEIS =============== */

    private $id_veiculo;
    private $titulo;
    private $ano_fabricacao;
    private $ano_modelo;
    private $km;
    private $placa;
    private $opcionais;
    private $cambio;
    private $combustivel;
    private $valor_fipe;
    private $valor_venda;
    private $observacoes;
    private $status;
    private $id_veiculo_marca;
    private $id_clientes;
    private $retorno_dados;

    /* =============== FUNÇÃO SALVA DADOS =============== */

    public function salva_dados() {
        try {

            $pdo = parent::getDB();

            if ($this->id_veiculo === "") {
                $salva_dados = $pdo->prepare('
                    INSERT INTO veiculo (
                        titulo, 
                        ano_fabricacao, 
                        ano_modelo, 
                        km, 
                        placa, 
                        opcionais,
                        cambio, 
                        combustivel, 
                        valor_fipe, 
                        valor_venda, 
                        observacoes, 
                        status, 
                        id_veiculo_marca, 
                        id_clientes
                    ) VALUES (
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?,
                        ?
                    );
                ');
                $salva_dados->execute(array(
                    "$this->titulo",
                    "$this->ano_fabricacao",
                    "$this->ano_modelo",
                    "$this->km",
                    "$this->placa",
                    "$this->opcionais",
                    "$this->cambio",
                    "$this->combustivel",
                    "$this->valor_fipe",
                    "$this->valor_venda",
                    "$this->observacoes",
                    "$this->status",
                    "$this->id_veiculo_marca",
                    "$this->id_clientes"
                ));
                $this->setRetorno_dados($pdo->lastInsertId());
            } else {
                $salva_dados = $pdo->prepare('
                    UPDATE veiculo SET 
                        titulo = ?,
                        ano_fabricacao = ?,
                        ano_modelo = ?,
                        km = ?,
                        placa = ?,
                        opcionais = ?,
                        cambio = ?,
                        combustivel = ?,
                        valor_fipe = ?,
                        valor_venda = ?,
                        observacoes = ?,
                        status = ?,
                        id_veiculo_marca = ?,
                        id_clientes = ?
                    WHERE 
                        id_veiculo = ?;
                ');
                $salva_dados->execute(array(
                    "$this->titulo",
                    "$this->ano_fabricacao",
                    "$this->ano_modelo",
                    "$this->km",
                    "$this->placa",
                    "$this->opcionais",
                    "$this->cambio",
                    "$this->combustivel",
                    "$this->valor_fipe",
                    "$this->valor_venda",
                    "$this->observacoes",
                    "$this->status",
                    "$this->id_veiculo_marca",
                    "$this->id_clientes",
                    "$this->id_veiculo"
                ));
                $this->setRetorno_dados($this->id_veiculo);
            }
            return true;
        } catch (PDOException $e) {
            echo 'Erro: ' . $e->getMessage();
            return false;
        }
    }

    /* =============== FUNÇÃO CONSULTA DADOS =============== */

    public function consulta_dados() {

        try {
            $pdo = parent::getDB();

            $consulta_dados = $pdo->prepare("
                SELECT
                    v.id_veiculo,
                    vm.descricao AS marca,
                    v.titulo, 
                    v.ano_fabricacao, 
                    v.ano_modelo,
                    v.km,
                    v.placa,
                    SUBSTRING(v.placa, 1, 1) AS placa_resumida,
                    v.opcionais,
                    CASE v.cambio
                        WHEN 1 THEN 'Manual'
                        WHEN 2 THEN 'Automático'
                        WHEN 3 THEN 'Semi-Automático'
                    END AS cambio,
                    CASE v.combustivel
                        WHEN 1 THEN 'Gasolina'
                        WHEN 2 THEN 'Álcool'
                        WHEN 3 THEN 'Flex'
                        WHEN 4 THEN 'Gás Natural'
                        WHEN 5 THEN 'Diesel'
                        WHEN 6 THEN 'Elétrico'
                    END AS combustivel,
                    v.valor_fipe,
                    v.valor_venda,
                    v.observacoes,
                    c.descricao AS cliente,
                    CASE v.status
                        WHEN 1 THEN 'info'
                        WHEN 2 THEN 'success'
                        WHEN 3 THEN 'danger'
                    END AS status_class,
                    CASE v.status
                        WHEN 1 THEN 'À venda'
                        WHEN 2 THEN 'Vendido'
                        WHEN 3 THEN 'Cancelado'
                    END AS status
                FROM
                    veiculo v
                    INNER JOIN clientes c ON v.id_clientes = c.id_clientes
                    INNER JOIN veiculo_marca vm ON v.id_veiculo_marca = vm.id_veiculo_marca
            ");
            $consulta_dados->execute();
            if ($consulta_dados->rowCount() > 0):
                $this->setRetorno_dados(json_encode($consulta_dados->fetchAll()));
                return true;
            else:
                return false;
            endif;
        } catch (PDOException $e) {
            echo 'Erro: ' . $e->getMessage();
            return false;
        }
    }

    /* =============== FUNÇÃO EDITA DADOS =============== */

    public function edita_dados() {

        try {
            $pdo = parent::getDB();

            $edita_dados = $pdo->prepare("
                SELECT
                    titulo, 
                    ano_fabricacao, 
                    ano_modelo, 
                    km, 
                    placa, 
                    opcionais,
                    cambio, 
                    combustivel, 
                    valor_fipe, 
                    valor_venda, 
                    observacoes, 
                    status, 
                    id_veiculo_marca, 
                    id_clientes
                FROM
                    veiculo
                WHERE
                    id_veiculo =  ?
            ");
            $edita_dados->execute(array(
                "$this->id_veiculo"
            ));
            if ($edita_dados->rowCount() > 0):
                $this->setRetorno_dados(json_encode($edita_dados->fetchAll()));
                return true;
            else:
                return false;
            endif;
        } catch (Exception $e) {
            echo 'Erro: ' . $e->getMessage();
            return false;
        }
    }

    /* =============== GETTERS E SETTERS =============== */

    function getId_veiculo() {
        return $this->id_veiculo;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getAno_fabricacao() {
        return $this->ano_fabricacao;
    }

    function getAno_modelo() {
        return $this->ano_modelo;
    }

    function getKm() {
        return $this->km;
    }

    function getPlaca() {
        return $this->placa;
    }

    function getOpcionais() {
        return $this->opcionais;
    }

    function getCambio() {
        return $this->cambio;
    }

    function getCombustivel() {
        return $this->combustivel;
    }

    function getValor_fipe() {
        return $this->valor_fipe;
    }

    function getValor_venda() {
        return $this->valor_venda;
    }

    function getObservacoes() {
        return $this->observacoes;
    }

    function getStatus() {
        return $this->status;
    }

    function getId_veiculo_marca() {
        return $this->id_veiculo_marca;
    }

    function getId_clientes() {
        return $this->id_clientes;
    }

    function getRetorno_dados() {
        return $this->retorno_dados;
    }

    function setId_veiculo($id_veiculo) {
        $this->id_veiculo = $id_veiculo;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setAno_fabricacao($ano_fabricacao) {
        $this->ano_fabricacao = $ano_fabricacao;
    }

    function setAno_modelo($ano_modelo) {
        $this->ano_modelo = $ano_modelo;
    }

    function setKm($km) {
        $this->km = $km;
    }

    function setPlaca($placa) {
        $this->placa = $placa;
    }

    function setOpcionais($opcionais) {
        $this->opcionais = $opcionais;
    }

    function setCambio($cambio) {
        $this->cambio = $cambio;
    }

    function setCombustivel($combustivel) {
        $this->combustivel = $combustivel;
    }

    function setValor_fipe($valor_fipe) {
        $this->valor_fipe = $valor_fipe;
    }

    function setValor_venda($valor_venda) {
        $this->valor_venda = $valor_venda;
    }

    function setObservacoes($observacoes) {
        $this->observacoes = $observacoes;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setId_veiculo_marca($id_veiculo_marca) {
        $this->id_veiculo_marca = $id_veiculo_marca;
    }

    function setId_clientes($id_clientes) {
        $this->id_clientes = $id_clientes;
    }

    function setRetorno_dados($retorno_dados) {
        $this->retorno_dados = $retorno_dados;
    }

}
