<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="shortcut icon" href="<?php echo URL . "wdadmin/uploads/informacoes_gerais/" . $voResultadoConfiguracoes->favicon ?>"/>
        <meta name="description" content="<?php echo $voResultadoConfiguracoes->descricao ?>">
        <meta name="author" content="Web Dezan - Agência Digital">
        <meta name="robots" content="index, follow" />
        <meta name="googlebot" content="index, follow" />
        <meta property="og:url" content="<?php echo "https://" . $_SERVER['HTTP_HOST'] . URL ?>"/>
        <meta property="og:type" content="website"/>
        <meta property="og:title" content="<?php echo $voResultadoConfiguracoes->titulo ?>"/>
        <meta property="og:description" content="<?php echo $voResultadoConfiguracoes->descricao ?>"/>
        <meta property="og:image" content="<?php echo "https://" . $_SERVER['HTTP_HOST'] . URL . "wdadmin/uploads/informacoes_gerais/" . $voResultadoConfiguracoes->logo_principal ?>"/>
        <meta property="og:site_name" content="<?php echo $voResultadoConfiguracoes->nome_empresa ?>"/>
        <title><?php echo $voResultadoConfiguracoes->titulo ?></title>
        <style type="text/css">.preloader{width:100%;height:100%;left:0;top:0;position:fixed;z-index:99999;background-color:#fff;overflow:hidden}.reverse-spinner{position:absolute;left:50%;top:50%;margin-top:-50px;margin-left:-50px;height:100px;width:100px;border:4px solid transparent;border-top-color:#e9560d;border-left-color:#e9560d;border-radius:50%;-webkit-animation:spin 1.5s linear infinite;animation:spin 1.5s linear infinite}.reverse-spinner::before{position:absolute;top:15px;left:15px;right:15px;bottom:15px;content:"";border:4px solid transparent;border-top-color:#000;border-left-color:#000;border-radius:50%;-webkit-animation:spinBack 1s linear infinite;animation:spinBack 1s linear infinite}@-webkit-keyframes spin{from{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes spin{from{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@-webkit-keyframes spinBack{from{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(-720deg);transform:rotate(-720deg)}}@keyframes spinBack{from{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(-720deg);transform:rotate(-720deg)}}</style>
    </head>

    <body>

        <?php // LOADER ?>
        <div id="preloader" class="preloader">
            <div class="reverse-spinner"></div>
        </div>

        <?php /* HEADER */ ?>
        <header class="header">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="<?php echo URL . "#inicio" ?>">
                            <img src="<?php echo URL . "wdadmin/uploads/informacoes_gerais/" . $voResultadoConfiguracoes->logo_principal ?>" title="<?php echo $voResultadoConfiguracoes->titulo ?>" alt="<?php echo $voResultadoConfiguracoes->titulo ?>" class="img-fluid">
                        </a>
                        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="navbar-collapse collapse" id="navbarCollapse">
                            <ul class="navbar-nav ml-auto">
                                <li><a href="<?php echo URL . "#inicio" ?>">Início</a></li>
                                <li><a href="<?php echo URL . "#como-funciona" ?>">Como Funciona</a></li>
                                <li><a href="<?php echo URL . "#vantagens" ?>">Vantagens</a></li>
                                <li><a href="<?php echo URL . "#clientes" ?>">Clientes</a></li>
                                <li><a href="<?php echo URL . "#depoimentos" ?>">Depoimentos</a></li>
                                <li><a href="<?php echo URL . "#sobre" ?>">Sobre</a></li>
                                <li class="discover-link"><a href="<?php echo URL . "#contato" ?>" class="external discover-btn">Agende sua Avaliação</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </nav>
        </header>

        <?php /* HOME */ ?>
        <section class="home-section" id="inicio">
            <div class="container">
                <div class="row">
                    <?php
                    $vsSqlQueroVender = "SELECT titulo, texto, imagem, link FROM informacoes WHERE id_informacoes = 1 AND id_conteudo_personalizado = 1";
                    $vrsExecutaQueroVender = mysqli_query($Conexao, $vsSqlQueroVender) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                    while ($voResultadoQueroVender = mysqli_fetch_object($vrsExecutaQueroVender)) {
                        ?>
                        <div class="col-md-5 padding-top-80">
                            <h1><?php echo $voResultadoQueroVender->titulo ?></h1>
                            <?php echo $voResultadoQueroVender->texto ?>
                            <a href="<?php echo $voResultadoQueroVender->link ?>" class="btn-blue scrool">Quero vender agora</a>
                        </div>
                        <div class="col-md-7">
                            <img src="<?php echo URL . "wdadmin/uploads/informacoes/" . $voResultadoQueroVender->imagem ?>" class="hero-image width-100" title="<?php echo $voResultadoQueroVender->titulo ?>" alt="<?php echo $voResultadoQueroVender->titulo ?>">
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </section>

        <?php /* COMO FUNCIONA */ ?>
        <section class="section-grey section-top-border section-bottom-border" id="como-funciona">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 class="section-title">Como funciona</h2>
                        <p class="section-subtitle">Em três passos te explicamos como seu veículo é vendido de forma rápida e segura.</p>
                    </div>
                    <?php
                    $vsSqlComoFunciona = "SELECT titulo, texto, imagem FROM informacoes WHERE id_conteudo_personalizado = 2 ORDER BY id_informacoes";
                    $vrsExecutaComoFunciona = mysqli_query($Conexao, $vsSqlComoFunciona) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                    while ($voResultadoComoFunciona = mysqli_fetch_object($vrsExecutaComoFunciona)) {
                        ?>
                        <div class="col-md-4">
                            <div class="main-services">
                                <img src="<?php echo URL . "wdadmin/uploads/informacoes/" . $voResultadoComoFunciona->imagem ?>" class="width-100" alt="pic">
                                <h3><?php echo $voResultadoComoFunciona->titulo ?></h3>
                                <?php echo $voResultadoComoFunciona->texto ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </section>

        <?php /* VANTAGENS */ ?>
        <section class="section-white section-bottom-border" id="vantagens">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center padding-bottom-10">
                        <h2 class="section-title">Vantagens</h2>
                        <p class="section-subtitle">Confira as vantagens de vender seu veículo com a <?php echo $voResultadoConfiguracoes->nome_empresa ?>.</p>
                    </div>
                </div>
                <div class="row">
                    <?php
                    $vsSqlVantagens = "SELECT titulo, texto, icone FROM informacoes WHERE id_conteudo_personalizado = 3 ORDER BY id_informacoes";
                    $vrsExecutaVantagens = mysqli_query($Conexao, $vsSqlVantagens) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                    while ($voResultadoVantagens = mysqli_fetch_object($vrsExecutaVantagens)) {
                        ?>
                        <div class="col-md-4">
                            <div class="feature-box wow fadeIn">
                                <i class="<?php echo $voResultadoVantagens->icone ?>"></i>
                                <h4><?php echo $voResultadoVantagens->titulo ?></h4>
                                <?php echo $voResultadoVantagens->texto ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </section>

        <?php /* CLIENTES */ ?>
        <section class="section-blue" id="clientes">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 class="section-title white-text">Clientes</h2>
                        <p class="section-subtitle white">Últimos clientes que venderam seus veículos com a <?php echo $voResultadoConfiguracoes->nome_empresa ?>.</p>
                    </div>
                    <div class="col-md-12 padding-top-20">
                        <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                                <?php
                                $vsSqlClientesID = "SELECT id_galeria_imagem FROM galeria_imagem WHERE id_galeria_grupo = 1 ORDER BY id_galeria_imagem";
                                $vrsExecutaClientesID = mysqli_query($Conexao, $vsSqlClientesID) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                                while ($voResultadoClientesID = mysqli_fetch_object($vrsExecutaClientesID)) {
                                    ?>
                                    <li data-target="#carouselIndicators" data-slide-to="<?php echo $voResultadoClientesID->id_galeria_imagem ?>"></li>
                                    <?php
                                }
                                ?>
                            </ol>
                            <div class="carousel-inner">
                                <?php
                                $vsSqlClientes = "SELECT titulo, imagem1 FROM galeria_imagem WHERE id_galeria_grupo = 1 ORDER BY id_galeria_imagem LIMIT 8 DESC";
                                $vrsExecutaClientes = mysqli_query($Conexao, $vsSqlClientes) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                                while ($voResultadoClientes = mysqli_fetch_object($vrsExecutaClientes)) {
                                    ?>
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-sm-12 text-center">
                                                <img src="<?php echo URL . "wdadmin/uploads/galeria_imagens/" . $voResultadoClientes->imagem1 ?>" title="<?php echo $voResultadoClientes->titulo ?>" alt="<?php echo $voResultadoClientes->titulo ?>" class="gallery-show">
                                            </div>
                                        </div>
                                    </div>
                                    <?php
                                }
                                ?>
                            </div>
                            <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Anterior</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Próximo</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <?php /* DEPOIMENTOS */ ?>
        <section class="section-grey medium-paddings section-bottom-border" id="depoimentos">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 mx-auto padding-bottom-40">
                        <div id="carouselIndicators2" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators testimonials-indicators">
                                <li data-target="#carouselIndicators2" data-slide-to="0" class="active"></li>
                                <?php
                                $vsSqlDepoimentosID = "SELECT id_depoimentos FROM depoimentos ORDER BY id_depoimentos";
                                $vrsExecutaDepoimentosID = mysqli_query($Conexao, $vsSqlDepoimentosID) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                                while ($voResultadoDepoimentosID = mysqli_fetch_object($vrsExecutaDepoimentosID)) {
                                    ?>
                                    <li data-target="#carouselIndicators2" data-slide-to="<?php echo $voResultadoClientesID->id_depoimentos ?>"></li>
                                    <?php
                                }
                                ?>
                            </ol>
                            <div class="carousel-inner">
                                <?php
                                $vsSqlDepoimentos = "SELECT c.descricao, c.imagem, d.texto FROM depoimentos d INNER JOIN clientes c ON c.id_clientes = d.id_clientes";
                                $vrsExecutaDepoimentos = mysqli_query($Conexao, $vsSqlDepoimentos) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                                while ($voResultadoDepoimentos = mysqli_fetch_object($vrsExecutaDepoimentos)) {
                                    ?>
                                    <div class="carousel-item">
                                        <div class="testim-inner">
                                            <img src="<?php echo URL . "wdadmin/uploads/clientes/" . $voResultadoDepoimentos->imagem ?>" title="<?php echo $voResultadoDepoimentos->titulo ?>" alt="<?php echo $voResultadoDepoimentos->titulo ?>" class="testim-img">
                                            <p><?php echo $voResultadoDepoimentos->texto ?></p>
                                            <h6><?php echo $voResultadoDepoimentos->descricao ?></h6>
                                        </div>
                                    </div>
                                    <?php
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <?php /* SOBRE */ ?>
        <section class="section-white" id="sobre">
            <div class="container">
                <div class="row">
                    <?php
                    $vsSqlSobre = "SELECT titulo, imagem, texto, link FROM informacoes WHERE id_conteudo_personalizado = 4";
                    $vrsExecutaSobre = mysqli_query($Conexao, $vsSqlSobre) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                    while ($voResultadoSobre = mysqli_fetch_object($vrsExecutaSobre)) {
                        ?>
                        <div class="col-md-6 padding-top-20 benefits">
                            <h3><?php echo $voResultadoSobre->titulo ?></h3>
                            <?php echo $voResultadoSobre->texto ?>
                            <a href="<?php echo $voResultadoSobre->link ?>" class="btn-blue scrool">Vamos fazer negócio?</a>
                        </div>
                        <div class="col-md-6">
                            <img src="<?php echo URL . "wdadmin/uploads/informacoes/" . $voResultadoSobre->imagem ?>" class="hero-image width-100 box-shadow" title="<?php echo $voResultadoSobre->titulo ?>" alt="<?php echo $voResultadoSobre->titulo ?>">
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </section>

        <?php /* CONTATO */ ?>
        <section class="section-white" id="contato">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h4>Entre em contato</h4>
                        <form id="form_contato" class="contact" method="post">
                            <input type="hidden" id="vsUrl" name="vsUrl" value="<?php echo URL ?>">
                            <input type="hidden" id="vsEmailContato" name="vsEmailContato" value="<?php echo EMAIL_CONTATO ?>">
                            <input type="hidden" id="vsNomeEmpresa" name="vsNomeEmpresa" value="<?php echo $voResultadoConfiguracoes->nome_empresa ?>">
                            <input class="contact-input white-input" id="vsNome" name="vsNome" placeholder="Seu Nome*" type="text" required>
                            <input class="contact-input white-input" id="vsEmail" name="vsEmail" placeholder="Seu E-mail*" type="email" required>
                            <input class="contact-input white-input" id="vsTelefone" name="vsTelefone" placeholder="Seu Telefone*" type="tel" required>
                            <textarea class="contact-commnent white-input" id="vsMensagem" name="vsMensagem" rows="2" cols="20" placeholder="Sua Mensagem..."></textarea>
                            <button id="botao_enviar_mensagem" class="contact-submit" type="submit">Enviar Mensagem</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <h4>Como nos encontrar</h4>
                        <?php
                        $vsSqlEndereco = "SELECT endereco, cidade, estado, mapa FROM enderecos WHERE id_enderecos = 1";
                        $vrsExecutaEndereco = mysqli_query($Conexao, $vsSqlEndereco) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                        while ($voResultadoEndereco = mysqli_fetch_object($vrsExecutaEndereco)) {
                            ?>
                            <div class="contact-maps">
                                <?php echo $voResultadoEndereco->mapa ?>
                            </div>
                            <p class="contact-info"><i class="fas fa-map-marker-alt"></i> <?php echo $voResultadoEndereco->endereco . " - " . $voResultadoEndereco->cidade . " - " . $voResultadoEndereco->estado ?></p>
                            <?php
                        }
                        ?>
                        <p class="contact-info"><i class="fas fa-envelope"></i> <a href="<?php echo "mailto:" . $voResultadoConfiguracoes->email ?>"><?php echo $voResultadoConfiguracoes->email ?></a></p>
                        <p class="contact-info"><i class="fas fa-phone"></i><a href="<?php echo "tel:55" . str_replace(array("(", ")", "-", " "), "", $voResultadoConfiguracoes->celular1) ?>"><?php echo $voResultadoConfiguracoes->celular1 ?></a></p>
                        <p class="contact-info"><i class="fab fa-whatsapp"></i><a href="<?php echo "https://api.whatsapp.com/send?l=pt_BR&phone=55" . str_replace(array("(", ")", "-", " "), "", $voResultadoConfiguracoes->whatsapp) ?>"><?php echo $voResultadoConfiguracoes->whatsapp ?></a></p>
                    </div>
                </div>
            </div>
        </section>

        <?php /* FOOTER */ ?>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p><?php echo "Copyright © " . date('Y') . ". " . $voResultadoConfiguracoes->nome_empresa ?>.</p>
                        <ul class="footer_social">
                            <li>
                                <a href="<?php echo "https://api.whatsapp.com/send?l=pt_BR&phone=55" . str_replace(array("(", ")", "-", " "), "", $voResultadoConfiguracoes->whatsapp) ?>">
                                    <i class="fab fa-whatsapp"></i>
                                </a>
                            </li>
                            <?php
                            $vsSqlRedesSociais = "SELECT titulo, link, icone FROM redes_sociais ORDER BY id_redes_sociais";
                            $vrsExecutaRedesSociais = mysqli_query($Conexao, $vsSqlRedesSociais) or die("Erro ao efetuar a operação no banco de dados! <br> Arquivo:" . __FILE__ . "<br>Linha:" . __LINE__ . "<br>Erro:" . mysqli_error($Conexao));
                            while ($voResultadoRedesSociais = mysqli_fetch_object($vrsExecutaRedesSociais)) {
                                ?>
                                <li>
                                    <a target="blank" href="<?php echo $voResultadoRedesSociais->link ?>">
                                        <i class="<?php echo $voResultadoRedesSociais->icone ?>"></i>
                                    </a>
                                </li>
                                <?php
                            }
                            ?>
                        </ul>
                        <a href="https://webdezan.com.br" target="_blank">
                            <img src="<?php echo URL . "images/wd.png" ?>" class="img-fluid" title="Web Dezan - Agência Digital" alt="Web Dezan - Agência Digital" />
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <?php /* BOOTSTRAP */ ?>
        <link href="<?php echo URL . "css/bootstrap.min.css" ?>" rel="stylesheet">
        <?php /* CSS */ ?>
        <link href="<?php echo URL . "css/style.min.css" ?>" rel="stylesheet">
        <link href="<?php echo URL . "css/animate.min.css" ?>" rel="stylesheet">
        <link href="<?php echo URL . "css/style-magnific-popup.min.css" ?>" rel="stylesheet">
        <?php /* FONTAWESOME */ ?>
        <link rel="stylesheet" href="<?php echo URL . "css/all.min.css" ?>">
        <?php /* FONTES */ ?>
        <link href="https://fonts.googleapis.com/css?family=Dosis:500,600" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300i,400,400i,600,700" rel="stylesheet">

        <?php /* SCRIPTS */ ?>
        <script src="<?php echo URL . "js/jquery-3.3.1.min.js" ?>"></script>
        <script src="<?php echo URL . "js/bootstrap.min.js" ?>"></script>
        <script src="<?php echo URL . "js/jquery.scrollTo-min.js" ?>"></script>
        <script src="<?php echo URL . "js/jquery.magnific-popup.min.js" ?>"></script>
        <script src="<?php echo URL . "js/jquery.nav.min.js" ?>"></script>
        <script src="<?php echo URL . "js/wow.min.js" ?>"></script>
        <script src="<?php echo URL . "js/plugins.min.js" ?>"></script>
        <script src="<?php echo URL . "js/owl.carousel.min.js" ?>"></script>
        <script src="<?php echo URL . "js/custom.min.js" ?>"></script>
        <script src="<?php echo URL . "wdadmin/js/jquery.mask.min.js" ?>" rel="stylesheet"></script>
        <script src="<?php echo URL . "wdadmin/assets/plugins/sweetalert/sweetalert.min.js" ?>"></script>
        <script src="<?php echo URL . "wdadmin/js/contato.min.js" ?>"></script>
        <link href="<?php echo URL . "wdadmin/assets/plugins/sweetalert/sweetalert.min.css" ?>" rel="stylesheet">
        <script type="text/javascript">
            $("#carouselIndicators2 .carousel-item:first").addClass("active");
            $("#carouselIndicators .carousel-item:first").addClass("active");
            $("#preloader").fadeOut("slow");
        </script>

    </body>
</html>