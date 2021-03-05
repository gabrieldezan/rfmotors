$(document).ready(function () {

    vsUrl = $("#vsUrl").val();

    /*ALTERA TITULO DA PAGINA*/
    $(this).attr("title", "WD Admin - Cadastro de Veiculos");

    monta_select("selectClientes", "id_clientes", "descricao", "clientes", "", "descricao", "", false, false, false);
    monta_select("selectMarcas", "id_veiculo_marca", "descricao", "veiculo_marca", "", "descricao", "", false, false, false);
    monta_select("selectOpcionais", "descricao", "descricao", "veiculo_opcionais", "", "descricao", "", false, false, false);

    $('#inputKM').mask("9.999.999", {reverse: true});
    $("#inputPlaca").change(function () {
        $(this).val($(this).val().toUpperCase());
    });
    $("#inputPlaca").mask('AAA-9Z99', {
        translation: {
            'Z': {
                pattern: /[A-Za-z0-9]/, optional: true
            }
        }
    });
    $('#inputValorFipe').mask("000.000.000.000.000,00", {reverse: true});
    $('#inputValorVenda').mask("000.000.000.000.000,00", {reverse: true});

    $("#form_veiculo").on('submit', (function (e) {

        Loading();

        $("#inputOpcionais").val($("#selectOpcionais").val());

        e.preventDefault();
        $.ajax({
            url: vsUrl + "controllers/SalvaDadosVeiculo.php",
            type: "POST",
            async: true,
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            success: function (data) {
                if (data > 0) {
                    $("#inputIdVeiculo").val() === "" ? AtualizaIdUrl(data) : "";
                    $("#inputIdVeiculo").val(data);
                    $('#informacoes_whatsapp').removeClass("disabled");
                    CloseLoading();
                    Sucesso();
                } else {
                    CloseLoading();
                    Aviso();
                }
            },
            error: function () {
                CloseLoading();
                Erro();
            }
        });
        return false;
    }));

    /*CHAMA FUNÇÃO PARA VERIFICAR EDIÇÃO OU CADASTRO*/
    verifica_edicao();

});

/*FUNÇÃO QUE VERIFICA SE EXISTE UM ID*/
function verifica_edicao() {

    /*PEGA ID*/
    var id = $("#inputIdVeiculo").val();

    /*CASO EXISTA O ID, EXECUTA A FUNÇÃO DE EDIÇÃO*/
    if (id !== "") {
        edita_veiculo(id);
        $('#informacoes_whatsapp').removeClass("disabled");
    } else {
        CloseLoading();
    }
}

/*CARREGA DADOS DO USUÁRIO SELECIONADO*/
function edita_veiculo(viIdVeiculo) {

    $.ajax({
        url: vsUrl + "controllers/RetornaVeiculoSelecionado.php",
        type: "POST",
        dataType: "json",
        async: false,
        data: ({
            viIdVeiculo: viIdVeiculo
        }),
        success: function (data) {
            if (data !== 0) {
                $("#inputCliente").val(data[0].cliente);
                $("#selectMarcas").val(data[0].id_veiculo_marca);
                $("#inputTitulo").val(data[0].titulo);
                $("#inputAnoFabicacao").val(data[0].ano_fabricacao);
                $("#inputAnoModelo").val(data[0].ano_modelo);
                $("#inputKM").val(data[0].km);
                $("#inputPlaca").val(data[0].placa);
                $("#inputOpcionais").val(data[0].opcionais);
                $.each(data[0].opcionais.split(","), function (i, e) {
                    $("#selectOpcionais option[value='" + e + "']").prop("selected", true);
                });
                $("#selectCambio").val(data[0].cambio);
                $("#selectCombustivel").val(data[0].combustivel);
                $("#inputValorFipe").val(data[0].valor_fipe);
                $("#inputValorVenda").val(data[0].valor_venda);
                $("#inputObservacoes").val(data[0].observacoes);
                $("#inputStatus").val(data[0].status);
                CloseLoading();
            } else {
                AvisoPersonalizado("Dados não encontrados!");
                $("#inputIdVeiculo").val("");
            }
            CloseLoading();
        },
        error: function () {
            CloseLoading();
            Erro();
        }
    });
}