<div class="row page-titles">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">Cadastro de Veículos</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo URL ?>wdadmin/inicio">Home</a></li>
            <li class="breadcrumb-item"><a href="<?php echo URL ?>wdadmin/veiculo">Veículos</a></li>
            <li class="breadcrumb-item active">Cadastro</li>
        </ol>
    </div>
</div>

<div class="container-fluid">

    <div class="row">
        <div class="col-12">
            <div class="card text-center">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#cadastro" role="tab">
                                <span class="hidden-sm-up"><i class="far fa-edit" aria-hidden="true"></i></span>
                                <span class="hidden-xs-down"><i class="far fa-edit" aria-hidden="true"></i>&nbsp;Cadastro</span>
                            </a>
                        </li>
                        <li class="botao_novo">
                            <a class="btn btn-info btn-sm" href="<?php echo URL ?>wdadmin/veiculo/cadastro">
                                <span class="hidden-sm-up"><i class="fas fa-plus" aria-hidden="true"></i></span>
                                <span class="hidden-xs-down"><i class="fas fa-plus" aria-hidden="true"></i>&nbsp;Novo</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <div class="tab-content">

                        <!--PAINEL CADASTRO-->
                        <div class="tab-pane p-20 active" id="cadastro" role="tabpanel">
                            <form id="form_veiculo" method="post" enctype="multipart/form-data">
                                <input type="hidden" id="inputIdVeiculo" name="inputIdVeiculo" value="<?php echo $id ?>" />
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Cliente *</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control form-control-sm" id="inputCliente" name="inputCliente" placeholder="ex.: João da Silva" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Marca *</label>
                                    <div class="col-sm-2">
                                        <select class="form-control form-control-sm" id="selectMarcas" name="selectMarcas" required></select>
                                    </div>
                                    <label class="col-sm-1 col-form-label col-form-label-sm text-right">Título *</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control form-control-sm" id="inputTitulo" name="inputTitulo" placeholder="ex.: Civic LXS 1.8" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Ano Fabricação *</label>
                                    <div class="col-sm-2">
                                        <input type="number" class="form-control form-control-sm" id="inputAnoFabicacao" name="inputAnoFabicacao" placeholder="ex.: 2010" max="<?php echo date("Y") ?>" required>
                                    </div>
                                    <label class="col-sm-4 col-form-label col-form-label-sm text-right">Ano Modelo *</label>
                                    <div class="col-sm-2">
                                        <input type="number" class="form-control form-control-sm" id="inputAnoModelo" name="inputAnoModelo" placeholder="ex.: 2010" max="<?php echo date("Y") ?>" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">KM *</label>
                                    <div class="col-sm-2">
                                        <input type="tel" class="form-control form-control-sm" id="inputKM" name="inputKM" placeholder="ex.: 120.000" required>
                                    </div>
                                    <label class="col-sm-4 col-form-label col-form-label-sm text-right">Placa *</label>
                                    <div class="col-sm-2">
                                        <div class="input-group input-group-sm">
                                            <input type="text" class="form-control form-control-sm" id="inputPlaca" name="inputPlaca" placeholder="ex.: AAA-0000" style="text-transform:uppercase" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Opcionais *</label>
                                    <input type="hidden" id="inputOpcionais" name="inputOpcionais">
                                    <div class="col-sm-3">
                                        <select class="form-control form-control-sm" id="selectOpcionais" name="selectOpcionais" multiple required></select>
                                        <small class="fileHelp">Utilize o Ctrl para selecionar mais de uma opção.</small>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label col-form-label-sm text-right">Câmbio *</label>
                                            <div class="col-sm-8">
                                                <select class="form-control form-control-sm" id="selectCambio" name="selectCambio" required>
                                                    <option value="1">Manual</option>
                                                    <option value="2">Automático</option>
                                                    <option value="3">Semi-Automático</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label col-form-label-sm text-right">Combustível *</label>
                                            <div class="col-sm-8">
                                                <select class="form-control form-control-sm" id="selectCombustivel" name="selectCombustivel" required>
                                                    <option value="1">Gasolina</option>
                                                    <option value="2">Álcool</option>
                                                    <option value="3">Flex</option>
                                                    <option value="4">Gás Natural</option>
                                                    <option value="5">Diesel</option>
                                                    <option value="6">Elétrico</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Valor Fipe *</label>
                                    <div class="col-sm-2">
                                        <input type="tel" class="form-control form-control-sm" id="inputValorFipe" name="inputValorFipe" placeholder="ex.: 0,00" required>
                                    </div>
                                    <label class="col-sm-4 col-form-label col-form-label-sm text-right">Valor Venda *</label>
                                    <div class="col-sm-2">
                                        <input type="tel" class="form-control form-control-sm" id="inputValorVenda" name="inputValorVenda" placeholder="ex.: 0,00" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Observações *</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control form-control-sm" id="inputObservacoes" name="inputObservacoes" placeholder="ex.: Veículo bem alinhado e em excelente estado" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-3 col-form-label col-form-label-sm text-right">Status *</label>
                                    <div class="col-sm-8">
                                        <select class="form-control form-control-sm" id="inputStatus" name="inputStatus">
                                            <option value="1">À venda</option>
                                            <option value="2">Vendido</option>
                                            <option value="3">Cancelado</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row text-right">
                                    <div class="col-sm-11">
                                        <button id="botao_salvar" type="submit" class="btn btn-success btn-sm"><i class="fas fa-save" aria-hidden="true"></i>&nbsp;Salvar</button>
                                        <button id="informacoes_whatsapp" type="button" class="btn btn-outline-info btn-sm disabled" onclick="abre_modal_visualizar_veiculo_whatsapp($('#inputIdVeiculo').val());" data-toggle="tooltip" title="Visualizar informações para WhatsApp"><i class="far fa-eye fa-fw" aria-hidden="true"></i>&nbsp;Visualizar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="<?php echo URL ?>wdadmin/scripts/veiculo-cadastro.js"></script>