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
        <meta property="og:url" content="<?php echo "https://" . $_SERVER['HTTP_HOST'] . URL . "404" ?>"/>
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
        
        <div class="container">
            <div class="row">
                <div class="col-12" style="margin-top: 250px;">
                    <center>
                        <img class="img-responsive" src="<?php echo URL . "wdadmin/uploads/informacoes_gerais/" . $voResultadoConfiguracoes->logo_principal ?>" alt="<?php echo $voResultadoConfiguracoes->titulo ?>" title="<?php echo $voResultadoConfiguracoes->titulo ?>">
                        <br/>
                        <br/>
                        <br/>
                        <h1>404</h1>
                        <h4 style="color:#e9560d">Página não encontrada</h4>
                        <br/>
                        <br/>
                        <a href="<?php echo URL ?>" class="btn-blue scrool">Voltar a Página Inicial</a>
                    </center>
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
        <script type="text/javascript">
            $("#preloader").fadeOut("slow");
        </script>

    </body>

</html>