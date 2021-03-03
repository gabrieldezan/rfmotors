$(document).ready(function () {

    vsUrl = $("#vsUrl").val();

    $(this).attr("title", "WD Admin - Veículos");

    $('#div_tabela').hide();
    $('#div_aviso').hide();

    carrega_veiculo();

    CloseLoading();
});

/*PESQUISA O GRUPO*/
function carrega_veiculo() {

    Loading();

    $.ajax({
        url: vsUrl + "controllers/RetornaVeiculo.php",
        type: "POST",
        dataType: "json",
        async: false,
        success: function (data) {
            if (data !== 0) {
                $("#tabela_veiculo tbody").html("");
                var table = $('#tabela_veiculo').DataTable({
                    "language": {
                        "url": vsUrl + "assets/plugins/datatables/Portuguese-Brasil.json"
                    },
                    "lengthMenu": [[10, 25, 50, 100, 250, -1], [10, 25, 50, 100, 250, "Todos"]],
                    dom: 'Blfrtip',
                    buttons: [
                        {
                            extend: 'copy',
                            text: '<i class="far fa-copy fa-fw"></i> Copiar',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                }
                            }
                        },
                        {
                            extend: 'excel',
                            text: '<i class="far fa-file-excel fa-fw"></i> Excel',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                }
                            }
                        },
                        {
                            extend: 'pdfHtml5',
                            text: '<i class="far fa-file-pdf fa-fw"></i> PDF',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                }
                            },
                            orientation: 'landscape',
                            pageSize: 'LEGAL'
                        },
                        {
                            extend: 'print',
                            text: '<i class="far fas fa-print fa-fw"></i> Imprimir',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                }
                            },
                            orientation: 'landscape',
                            pageSize: 'LEGAL'
                        },
                        {
                            text: '<i class="fas fa-plus"></i> Novo',
                            action: function () {
                                window.location.href = "veiculo/cadastro";
                            }
                        }
                    ],
                    fixedHeader: false,
                    colReorder: false,
                    responsive: false,
                    "processing": true,
                    data: data,
                    "columns": [
                        {"data": "id_veiculo"},
                        {"data": "marca"},
                        {"data": "titulo"},
                        {"data": "ano_fabricacao"},
                        {"data": "ano_modelo"},
                        {"data": "placa"},
                        {"data": "valor_venda"},
                        {"data": "cliente"},
                        {
                            "render": function (data, type, row) {
                                return "<span class=\"label label-" + row.status_class + "\">" + row.status + "</span>";
                            }
                        },
                        {
                            "render": function (data, type, row) {
                                return "\n\
                                    <a href=\"veiculo/cadastro/" + row.id_veiculo + "\" class=\"btn btn-sm btn-outline-secondary\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Editar " + row.titulo + "\"><i class=\"fas fa-edit\"></i></a>&nbsp;\
                                    <button type=\"button\" class=\"btn btn-outline-info btn-sm\" onclick=\"abre_modal_visualizar_veiculo('" + row.marca + "', '" + row.titulo + "', '" + row.ano_fabricacao + "', '" + row.ano_modelo + "', '" + row.km + "', '" + row.placa_resumida + "', '" + row.opcionais + "', '" + row.cambio + "', '" + row.combustivel + "', '" + row.valor_fipe + "', '" + row.valor_venda + "', '" + row.observacoes + "');\" data-toggle=\"tooltip\" title=\"Visualizar " + row.titulo + "\"><i class=\"far fa-eye fa-fw\" aria-hidden=\"true\"></i></button>\
                                ";
                            }
                        }
                    ],
                    'columnDefs': [
                        {
                            "targets": 0,
                            "className": "text-center"
                        },
                        {
                            "targets": 3,
                            "className": "text-center"
                        },
                        {
                            "targets": 4,
                            "className": "text-center"
                        },
                        {
                            "targets": 5,
                            "className": "text-center"
                        },
                        {
                            "targets": 6,
                            "className": "text-center"
                        },
                        {
                            "targets": 8,
                            "className": "text-center"
                        },
                        {
                            "targets": 9,
                            "className": "text-center"
                        }
                    ],
                    "order": [[0, "desc"]],
                    "drawCallback": function (settings) {
                        $('[data-toggle="tooltip"]').tooltip();
                    }
                });
                $('#div_aviso').hide();
                $('#div_tabela').show();
            } else {
                $('#div_tabela').hide();
                $('#div_aviso').show();
            }
        },
        error: function () {
            $("#tabela_veiculo tbody").html("");
            Erro();
        }
    });
}