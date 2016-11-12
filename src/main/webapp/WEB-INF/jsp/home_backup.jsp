<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8">
    <title>3B Internationnale</title>

    <link href='./3B-Internationle_files/fonts/fonts.googleapis.com-1.css' rel='stylesheet' type='text/css'>
    <link href='./3B-Internationle_files/fonts/fonts.googleapis.com-2.css' rel='stylesheet' type='text/css'>


    <link rel="stylesheet" href="./3B-Internationle_files/css/materialize.css">
    <link href="./3B-Internationle_files/material-design-iconic-font/dist/css/material-design-iconic-font.min.css"
          rel="stylesheet">
    <link rel="stylesheet" href="./3B-Internationle_files/css/app_nat.css">
    <link rel="stylesheet" href="./3B-Internationle_files/css/font-awesome.css">


    <link rel="stylesheet" href="./3B-Internationle_files/css/normalize.css">


    <link rel="stylesheet" href="./3B-Internationle_files/css/reset.css">
    <link rel="stylesheet" href="./3B-Internationle_files/css/style.css">
    <link rel="stylesheet" href="./3B-Internationle_files/css/shop_app_index.css">
    <link rel="stylesheet" href="./3B-Internationle_files/css/special_styles.css">


    <link rel="apple-touch-icon" sizes="57x57" href="./3B-Internationle_files/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./3B-Internationle_files/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./3B-Internationle_files/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./3B-Internationle_files/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./3B-Internationle_files/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./3B-Internationle_files/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./3B-Internationle_files/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./3B-Internationle_files/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./3B-Internationle_files/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="./3B-Internationle_files/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./3B-Internationle_files/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./3B-Internationle_files/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./3B-Internationle_files/favicon/favicon-16x16.png">
    <link rel="manifest" href="./3B-Internationle_files/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./3B-Internationle_files/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">


    <script src="./3B-Internationle_files/modernizr.js"></script>


</head>

<body style="background-color: white">


<!--


<div id="fb-root"></div>
<script>(function (d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s);
js.id = id;
js.src = "//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.7&appId=1241675209216338";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

-->

<header>


    <div id="topHead" class="modal-fixed-footer row" style="margin-bottom: 0px">

        <div class="offset-l1 offset-s1 col l5 s11 ">
            <div class="col "><i class="topHIc zmdi zmdi-phone"></i>+213.560.06.72</div>
            <div class="col"><i class="topHIc zmdi zmdi-email"></i><a href="mailto:sarl3btrading@yahoo.fr"
                                                                      style="color : #FFFFFF">
                sarl3bTrading@yahoo.fr</a></div>
        </div>
        <div class="offset-s2 offset-l1 col l5 s10 ">
            <ul class=" ">
                    <span><a href="https://www.facebook.com/pages/3B-International-Trading/875526565846772?pnref=lhc"
                             class="topHIc fa fa-facebook"></a></span>
                <span><a href="https://twitter.com/3binternational" class="topHIc fa fa-twitter"></a></span>
                <span><a href="http://www.3b-international.com/web/#" class="topHIc fa fa-google-plus"></a></span>
                <span><a href="http://www.3b-international.com/web/#" class="topHIc fa fa-linkedin"></a></span>
            </ul>
        </div>

    </div>

    <div class="">

        <nav id="headerToobar">
            <div class="nav-wrapper">

                <a href="#" class="brand-logo hide-on-small-and-down " style="margin-left: 100px"><img
                        src="3B-Internationle_files/99.png" width="180" height="60"></a>
                <div class="row"></div>
                <ul id="topMenu" class="right">
                    <li class="main-menu-elem"><a href="" style="color: #0a0a0a">Accueil</a></li>
                    <li class="main-menu-elem"><a href="#section-nos-chaussures" style="color: #0a0a0a">Chaussures</a>
                    </li>
                    <li class="main-menu-elem"><a href="#section-nos-habim" style="color: #0a0a0a">Habillements</a></li>
                    <li class="main-menu-elem"><a href="#nos-marques" style="color: #0a0a0a">Marques</a></li>
                    <li class="main-menu-elem"><a href="#contact" style="color: #0a0a0a">Contact</a></li>
                    <li class="main-menu-elem"><a href="" style="color: #0a0a0a">Shop</a></li>
                    <li class=" main-menu-elem"><a href="/management_gestion_dashboard.html" style="color: #0a0a0a">Management</a>
                    </li>
                </ul>


            </div>
        </nav>
    </div>

</header>


<main class="cd-main-content ">
    <div id="slider-container">
        <div class="cd-slider-wrapper">
            <ul class="cd-slider" data-step1="M1402,800h-2V0h1c0.6,0,1,0.4,1,1V800z"
                data-step2="M1400,800H379L771.2,0H1399c0.6,0,1,0.4,1,1V800z"
                data-step3="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z" data-step4="M-2,800h2V0h-1c-0.6,0-1,0.4-1,1V800z"
                data-step5="M0,800h1021L628.8,0L1,0C0.4,0,0,0.4,0,1L0,800z"
                data-step6="M0,800h1400V0L1,0C0.4,0,0,0.4,0,1L0,800z">
                <li class="visible">
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-1">
                                    <path id="cd-changing-path-1" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-1)"
                                   xlink:href="./3B-Internationle_files/banner-1.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>

                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-2">
                                    <path id="cd-changing-path-2" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-2)"
                                   xlink:href="./3B-Internationle_files/img/banner-2.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>

                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-3">
                                    <path id="cd-changing-path-3" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-3)"
                                   xlink:href="./3B-Internationle_files/img/banner-3.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>

                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-4">
                                    <path id="cd-changing-path-4" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-4)"
                                   xlink:href="./3B-Internationle_files/img/banner-4.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>
                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-5">
                                    <path id="cd-changing-path-5" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-5)"
                                   xlink:href="./3B-Internationle_files/img/banner-5.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>
                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-6">
                                    <path id="cd-changing-path-6" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-6)"
                                   xlink:href="./3B-Internationle_files/img/banner-6.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>
                <li>
                    <div class="cd-svg-wrapper">
                        <svg viewBox="0 0 1400 800">
                            <title>Aimated SVG</title>
                            <defs>
                                <clipPath id="cd-image-7">
                                    <path id="cd-changing-path-7" d="M1400,800H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                </clipPath>
                            </defs>

                            <image height='800px' width="1400px" clip-path="url(#cd-image-7)"
                                   xlink:href="./3B-Internationle_files/img/banner-7.jpg"></image>
                        </svg>
                    </div>
                    <!-- .cd-svg-wrapper -->
                </li>

            </ul>
            <!-- .cd-slider -->

            <ul class="cd-slider-navigation">
                <li><a href="#0" class="next-slide">Next</a></li>
                <li><a href="#0" class="prev-slide">Prev</a></li>
            </ul>
            <!-- .cd-slider-navigation -->

            <ol class="cd-slider-controls">
                <li class="selected"><a href="#0"><em>Item 1</em></a></li>
                <li><a href="#0"><em>Item 2</em></a></li>
                <li><a href="#0"><em>Item 3</em></a></li>
                <li><a href="#0"><em>Item 4</em></a></li>
                <li><a href="#0"><em>Item 5</em></a></li>
                <li><a href="#0"><em>Item 6</em></a></li>
                <li><a href="#0"><em>Item 7</em></a></li>
            </ol>
            <!-- .cd-slider-controls -->
        </div>
        <!-- .cd-slider-wrapper -->
    </div>

    <div class="row container">
        <div class="col m8">
            <div class="">
                <div class="title-section">
                    <h2 align="left">Présentation de 3B Internationl Trading</h2>
                    <br>
                    <p align="justify">Depuis 2005, 3B-international est le symbole de la mode de la chaussure italienne
                        et de l’habillement (sous-vêtements) pour homme, femme et enfant. Diversifiée, de haute qualité
                        et allie joli design à un chaussant et habillement
                        parfait.
                        <br><br>La valeur ajoutée de notre marque est notre réseau de fournisseurs sur lesquels on peut
                        compter (IMAC, PRIMIGI, IGI&amp;CO, …) pour la chaussure italienne et Fronzoni, Opaline et
                        d’autre marques Turque pour l’habillement
                        (sous-vêtements). Avec un grand portfolio de produit et une grande capacité de stockage se
                        basant sur deux super entrepôt centraux l’un situer à Ben-Ammar à la wilaya de Boumerdes (voir
                        <a href="depots.php?depot=1">photos</a>)
                        destiner au chaussures et celui de l’habillement situer à Bab-Ezzouar (voir <a
                                href="depots.php?depot=2">photos</a>) à 13 Km de la capital Alger. Et Dans le but de
                        garder toujours une attention particulière à la durabilité
                        nous présentant et accroitront notre réseau de distribution divergeant sur le territoire
                        algérien , avec une grande capacité de distribution sept (7) grossistes pour l’habillement, et
                        six (6) détaillants pour la chaussure sans
                        oublier les hypermarché tels que Carrefour et Uno Algérie, la diversité de nos point de vente et
                        nombre de nos collaborateur fait de nous un leader dans un segment mode très concurrentiel,
                    </p>
                </div>
            </div>

        </div>
        <div class="col m2">
            <div align="center" style="vertical-align:middle;"><img src="./3B-Internationle_files/3b-logo.png"
                                                                    alt="3B International Trading"
                                                                    title="3B International Trading"></div>
        </div>


    </div>

    <br>
    <br>
    <br>

    <!-- Nos Chaussures -->
    <section id="section-nos-chaussures" class="cd-section">

        <div id="services" class="section-cotent">
            <div class="container">
                <div class="title-section text-center">
                    <h2>Nos chaussures</h2>
                    <span></span>
                    <br>
                    <p align="justify">Un style et un goût à l’italienne, des chaussures caractérisées par une extrême
                        légèreté, flexibles et respirantes, et la garantie de cuirs sélectionnés. Toutes les collections
                        présentent des chaussures pour une utilisation transversale,
                        pratiques, et aux prestations de chaussures de sport, avec un look adapté aussi bien aux
                        situations
                        formelles qu’aux occasions de la vie de tous les jours.</p>
                </div>
                <!-- /.title-section -->

                <br>

                <div class="row">
                    <div class="col m3 s6 " data-wow-delay="0.6s">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-homme.png');"> </i>
                                <!-- <i class="fa fa-male"> </i> -->
                                <h3>Collection homme</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Découvrez notre collection de chaussures pour Homme, derbies, mocassins et baskets, sans
                                oublier nos bestsellers et nos nouveautés. Inspirez-vous de nos tendances et adoptez nos
                                styles. <a href="chaussurres.php?collection=4"
                                           target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div>
                        <!-- /.service-item -->
                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col m3 col s6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-femme.png');"> </i>
                                <h3>Collection femme</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Découvrez nos chaussures pour femme, escarpins, nu-pieds et compensées, sans oublier nos
                                bestsellers et nos nouveautés. Inspirez-vous de nos tendances femme et adoptez nos
                                styles.
                                <a href="chaussurres.php?collection=3" target="_parent"> sur ce lien <i
                                        class="fa fa-link"></i></a>
                            </div>
                        </div>
                        <!-- /.service-item -->
                    </div>
                    <!-- /.col-md-3 -->
                    <div class="col m3 col s6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-enfant.png');"> </i>
                                <h3>Collection enfant</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Découvrez toutes nos chaussures pour fille et garçon, de 3 à 15 ans, dans une large
                                gamme de
                                pointures et de largeurs. La bonne pointure enfant, pour des pieds sains. <a
                                    href="chaussurres.php?collection=2" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div>
                        <!-- /.service-item -->
                    </div>
                    <!-- /.col-md-3 -->
                    <div class="col m3 col s6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-bebe.png');"> </i>
                                <h3>Collection bébé</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Découvrez toutes nos chaussures pour bébé, de 0 à 24 mois, dans une large gamme de
                                couleurs,
                                modèle et pointures. Le bon choix de la chaussure bébé, pour des pieds sains. <a
                                    href="chaussurres.php?collection=1" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div>
                        <!-- /.service-item -->
                    </div>
                    <!-- /.col-md-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </div>

        <div class="row" align="center">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_1.png" class="img-circle img-responsive"
                 title="Des chaussures légeres et flexible" alt="Light and flexible quality">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_2.png" class="img-circle img-responsive"
                 title="Des chaussures en vraie cuire" alt="Verra PELLE quality">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_3.png" class="img-circle img-responsive"
                 title="Des chaussures respirantes" alt="Breathable quality">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_4.png" class="img-circle img-responsive"
                 title="Des chaussures comfortable" alt="Comfortable quality">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_5.png" class="img-circle img-responsive"
                 title="Des chaussures anti-choc" alt="Shock Absorber quality">
            <img src="./3B-Internationle_files/img/icones/qualite_chaussure_6.png" class="img-circle img-responsive"
                 title="Des chaussures impermiable" alt="Waterproof quality">
        </div>
    </section>

    <section id="section-nos-magasins-dist" class="cd-section">


        <div class="container title-section text-center">
            <h2 align="center">Nos magasins de distribution</h2>
            <p align="justify">Un ensemble de magasin réparti sur le territoire national pour être plus prêt, avec une
                collection de chaussures riche adapté à votre look. N’hésitez pas à nous rendre visite et découvrir
                notre
                collection souple, confortable et pratique à
                Alger, Annaba, Bejaia et Oran.</p>
            <p>
            </p>
        </div>

        <br>
        <br>


        <div id="magasins" class="row text-center container">
            <c:set var="magasins_count" scope="page" value="${0}"/>
            <c:set var="opened_rows" scope="page" value="${0}"/>

            <c:forEach begin="1" end="${magasinsHauts.size()}" varStatus="loop">
            <c:if test="${magasins_count % 3 == 0}">
            <c:set var="opened_rows" value="${opened_rows + 1}" scope="page"/>

            <c:if test="${magasins_count > 0}">
        </div>
        </c:if>
        <div class="row">
            </c:if>

            <c:set var="magasins_count" value="${magasins_count + 1}" scope="page"/>


            <div class="col m4 s6">
                <div class="product-type-container" data-type="member-haut-${magasins_count}">
                    <a>
                        <div class="product-type-overlay">
                            <div class="product-type-info">
                                <i class="fa fa-search fa-2x gold-text"></i>
                                <h3 class="gold-text text-uppercase">Alger</h3>
                                <p class="text-uppercase white-text">34 Avenue Colonel Lotfi<br>Bab El-Oued</p>
                                <p class="text-uppercase white-text">Tél : +213.561.74.34.12</p>
                            </div>
                        </div>
                    </a>
                    <img src="./3B-Internationle_files/img/magasins/bab-eloued.png" alt="Product Type 1"
                         class="img-princip product-type-img product-type-img-responsive">
                </div>
            </div>


            </c:forEach>


        </div>
        </div>


    </section>

    <br>

    <!--Nos Habillements -->

    <div id="services2" class="section-cotent">
        <div class="container">
            <section id="section-nos-habim" class="cd-section">
                <div class="title-section text-center">
                    <h2>Nos habillements</h2>
                    <span></span>
                    <br>
                    <p align="justify">Au fil des saisons, la gamme de produits s'agrandit, avec de nombreux modèles,
                        sportifs, classiques, ou élégantes mais toujours avec un soupçon de fantaisie... et beaucoup
                        d'idées
                        pour les femmes et les hommes aussi bien pour les petits garçons que pour les petites
                        filles.</p>
                    <p>
                    </p></div> <!-- /.title-section -->
                <br>
                <br>
                <br>
                <br>
                <!-- Nos Habillements habim -->

                <div class="row" style="margin-top: -65px;">
                    <div class="col m3 s6">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-homme.png');"> </i>
                                <!-- <i class="fa fa-male"> </i> -->
                                <h3>Collection homme</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Découvrez une collection prêt-à-porter mode à travers une offre de riche et multiple
                                dans la
                                tendance. Des collections toujours attentives aux tendances et conçues pour toutes les
                                occasions: travail, cérémonie, sport et loisirs. Nos nouveautés prêt à porter sont entre
                                vos
                                mains. <a href="habillements.php?collection=1" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div> <!-- /.service-item -->
                    </div> <!-- /.col-md-3 -->
                    <div class="col m3 s6">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <!-- <i class="fa fa-female"></i> -->
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-femme.png');"> </i>
                                <h3>Collection femme</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Retrouvez les dernières nouveautés de la tendance mode prêt à porter féminine. Restez au
                                top
                                de la mode femme ! Découvrez nos nouveautés prêt à porter avec des vêtements qui vous
                                ressemblent : multiples, joyeux, colorés et toujours différents. <a
                                    href="habillements.php?collection=1" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div> <!-- /.service-item -->
                    </div> <!-- /.col-md-3 -->
                    <div class="col m3 s6">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <!--<i class="fa fa-users"></i>-->
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-enfant.png');"> </i>
                                <h3>Collection enfant</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Une collection de vêtements fonctionnels, tendance, colorés et vifs, toujours pratiques
                                pour
                                bouger sans contraintes, et des accessoires en mesure de satisfaire toutes les exigences
                                jusqu’à 15 ans, dès les premiers mois, pour jouer et bouger en toute saison. <a
                                    href="habillements.php?collection=1" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div> <!-- /.service-item -->
                    </div> <!-- /.col-md-3 -->
                    <div class="col m3 s6">
                        <div class="service-item">
                            <div class="service-header" align="center">
                                <!-- <i class="fa fa-child"></i>
                                 <i class="fa fa-heart"></i>
                                 <i class="fa fa-linux"></i> -->
                                <i class="fa "
                                   style="background-image: url('./3B-Internationle_files/img/icones/logo-bebe.png');"> </i>
                                <h3>Collection bébé</h3>
                            </div>
                            <div class="service-description" align="justify">
                                Par ce que chaque bébé est unique et que chaque âge a ses propres exigences. Une
                                collection
                                de vêtements souples, confortables, pratiques et réalisés avec des matériaux de qualité,
                                conçus en pensant exclusivement au bien-être de votre bébé (de 6 à 24 mois). <a
                                    href="habillements.php?collection=1" target="_parent"> sur ce lien <i
                                    class="fa fa-link"></i></a>
                            </div>
                        </div> <!-- /.service-item -->
                    </div> <!-- /.col-md-3 -->
                </div> <!-- /.row -->


            </section>


            <section id="section-nos-magasins" class="cd-section">

                <!-- Nos Magasis de Distribution magdist  -->
                <div class="">
                    <div class="row text-center">
                        <div class="container title-section text-center">
                            <p>&nbsp;</p>
                            <h2 align="center">Nos magasins de distribution</h2>
                            <p align="justify">Un ensemble de magasin pour être plus prêt, avec une collection
                                d'habillements riche adapté à votre look. N’hésitez pas à nous rendre visite et
                                découvrir
                                notre collection souple, confortable et pratique.</p>
                            <p>
                            </p></div>

                        <br>
                        <br>
                        <br>

                        <div id="magasins_dist" class="row text-center">

                            <div id="magasins_d" class="row text-center ">
                                <c:set var="magasins_count" scope="page" value="${0}"/>
                                <c:set var="opened_rows" scope="page" value="${0}"/>

                                <c:forEach begin="1" end="${magasinsBas.size()  }" varStatus="loop">
                                <c:if test="${magasins_count % 2 == 0}">
                                <c:set var="opened_rows" value="${opened_rows + 1}" scope="page"/>

                                <c:if test="${magasins_count > 0}">
                            </div>
                            </c:if>
                            <div class="row">
                                </c:if>

                                <c:set var="magasins_count" value="${magasins_count + 1}" scope="page"/>


                                <c:if test="${magasinsBas.size() <= 2 }">
                                <div class="col m6 s6">

                                    </c:if>

                                    <c:if test="${magasinsBas.size() > 2}">
                                    <div class="col m4 s6">

                                        </c:if>


                                        <div class="product-type-container" data-type="member-bas-${magasins_count}">
                                            <a>
                                                <div class="product-type-overlay">
                                                    <div class="product-type-info">
                                                        <i class="fa fa-search fa-2x gold-text"></i>
                                                        <h3 class="gold-text text-uppercase">Alger</h3>
                                                        <p class="text-uppercase white-text">34 Avenue Colonel Lotfi<br>Bab
                                                            El-Oued</p>
                                                        <p class="text-uppercase white-text">Tél : +213.561.74.34.12</p>
                                                    </div>
                                                </div>
                                            </a>
                                            <img src="./3B-Internationle_files/img/magasins/bab-eloued.png"
                                                 alt="Product Type 1"
                                                 class="img-princip product-type-img product-type-img-responsive">
                                        </div>
                                    </div>


                                    </c:forEach>


                                </div>
                            </div>


                            <div class="row">
                                <div class="col m6 s6">
                                    <div class="product-type-container" data-type="member-7">
                                        <a href="depots.php?depot=2">
                                            <div class="product-type-overlay">
                                                <div class="product-type-info">
                                                    <i class="fa fa-search fa-2x gold-text"></i>
                                                    <h3 class="gold-text text-uppercase">Alger</h3>
                                                    <p class="text-uppercase white-text">Bab-Azzoune</p>
                                                    <p class="text-uppercase white-text">Tél : +213.###.##.##.##</p>
                                                </div>
                                            </div>
                                        </a>
                                        <img src="3B-Internationle_files/img/magdist/bab-azzoune-.jpg"
                                             alt="Product Type 1"
                                             class="product-type-img product-type-img-responsive">
                                        <br>
                                        <p>Vente au détail</p>
                                    </div>
                                </div>
                                <div class="col m6 s6">
                                    <div class="product-type-container" data-type="member-8">
                                        <a href="depots.php?depot=2">
                                            <div class="product-type-overlay">
                                                <div class="product-type-info">
                                                    <i class="fa fa-search fa-2x gold-text"></i>
                                                    <h3 class="gold-text text-uppercase">Bab-Ezzouar</h3>
                                                    <p class="text-uppercase white-text">N° 26, Lot F.Boushaki<br>Bab-Ezzouar,
                                                        Alger</p>
                                                    <p class="text-uppercase white-text">Tél : +213.23.83.20.24</p>
                                                </div>
                                            </div>
                                        </a>
                                        <img src="3B-Internationle_files/img/magdist/babez-.jpg" alt="Product Type 2"
                                             class="product-type-img product-type-img-responsive">
                                        <br>
                                        <p>Vente au gros</p>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </div>
                </div> <!-- /.container -->
            </section>

        </div> <!-- /.container -->


        <section id="nos-marques" class="section-cotent">

            <div id="portfolio" class="section-content">
                <div class="container">
                    <div class="title-section text-center">
                        <h2>Nos Marques</h2>
                        <span></span>
                    </div>

                    <br>
                    <br>

                    <div class="row">
                        <div class="col m4 s6">
                            <div class="portfolio-thumb">
                                <img src="./3B-Internationle_files/img/marques/imac.png" alt="IMAC">
                                <div class="overlay">
                                    <div class="inner">
                                        <h4><a data-rel="lightbox"
                                               href="./3B-Internationle_files/img/marques/imac-detail.jpg">IMAC made in
                                            Italy</a></h4>
                                        <span><a href="http://www.imac-italia.it" style="color : #ffffff"
                                                 target="_blank">www.imac-italia.it</a></span>
                                    </div>
                                </div> <!-- /.overlay -->
                            </div> <!-- /.portfolio-thumb -->
                        </div> <!-- /.col-md-3 -->
                        <div class="col m4 s6">
                            <div class="portfolio-thumb">
                                <img src="./3B-Internationle_files/img/marques/primigi.png" alt="PRIMIGI">
                                <div class="overlay">
                                    <div class="inner">
                                        <h4><a data-rel="lightbox"
                                               href="./3B-Internationle_files/img/marques/primigi-detail.jpg">PRIMIGI
                                            made
                                            in Italy</a></h4>
                                        <span><a href="http://www.primigi.it/fr" style="color : #ffffff"
                                                 target="_blank">www.primigi.it/fr</a></span>
                                    </div>
                                </div> <!-- /.overlay -->
                            </div> <!-- /.portfolio-thumb -->
                        </div> <!-- /.col-md-3 -->
                        <div class="col m4 s6">
                            <div class="portfolio-thumb">
                                <img src="./3B-Internationle_files/img/marques/igieco.png" alt="IGI&amp;CO">
                                <div class="overlay">
                                    <div class="inner">
                                        <h4><a data-rel="lightbox"
                                               href="./3B-Internationle_files/img/marques/igieco-detail.jpg">IGI&amp;CO
                                            made in Italy</a></h4>
                                        <span><a href="http://www.igieco.it/fr" style="color : #ffffff" target="_blank">www.igieco.it/fr</a></span>
                                    </div>
                                </div> <!-- /.overlay -->
                            </div> <!-- /.portfolio-thumb -->
                        </div> <!-- /.col-md-3 -->
                    </div> <!-- /.row -->
                    <div class="row">
                        <div class="col m4 s6">
                            <div class="portfolio-thumb">
                                <img src="./3B-Internationle_files/img/marques/opaline.png" alt="OPALINE">
                                <div class="overlay">
                                    <div class="inner">
                                        <h4><a data-rel="lightbox"
                                               href="./3B-Internationle_files/img/marques/opaline-detail.png">OPALINE</a>
                                        </h4>
                                        <span><a href="http://www.opaline.com.tn" style="color : #ffffff"
                                                 target="_blank">www.opaline.com.tn</a></span>
                                    </div>
                                </div> <!-- /.overlay -->
                            </div> <!-- /.portfolio-thumb -->
                        </div> <!-- /.col-md-3 -->
                        <div class="col m4 s6">
                            <div class="portfolio-thumb">
                                <img src="./3B-Internationle_files/img/marques/franzoni.png" alt="FRANZONI">
                                <div class="overlay">
                                    <div class="inner">
                                        <h4><a data-rel="lightbox"
                                               href="./3B-Internationle_files/img/marques/franzoni-detail.png">FRANZONI</a>
                                        </h4>
                                        <span><a href="http://www.franzonicalza.it" style="color : #ffffff"
                                                 target="_blank">www.franzonicalza.it</a></span>
                                    </div>
                                </div> <!-- /.overlay -->
                            </div> <!-- /.portfolio-thumb -->
                        </div> <!-- /.col-md-3 -->

                    </div> <!-- /.row -->

                </div> <!-- /.container -->
            </div>

        </section>


    </div>

    <br>
    <br>
    <br>

    <section id="nous-contacter" class="section-cotent">
        <div id="contact" class="section-cotent">

            <div class="container">
                <div class="title-section text-center">
                    <h2>Nous contacter</h2>
                    <span></span>
                    <br>
                    <br>
                </div> <!-- /.title-section -->
                <div class="row">
                    <div class="col m7 s6" style="padding-right: 100px">
                        <form method="post" action="mail.php" name="contactform">
                            <h4 class="titre-section">Envoyez nous votre message</h4>
                            <br>
                            <div class="contact-form">
                                <p class="full-row">
                                    <label for="name-id">Nom:</label>
                                    <input type="text" id="name-id" name="name-id">
                                </p>
                                <p class="full-row">
                                    <label for="email-id">E-mail:</label>
                                    <input type="text" id="email-id" name="email-id">
                                </p>
                                <p class="full-row">
                                    <label for="subject-id">Objet:</label>
                                    <input type="text" id="subject-id" name="subject-id">
                                </p>
                                <p class="full-row">
                                    <label for="message">Message:</label>
                                    <textarea class="materialize-textarea" name="message" id="message"
                                              rows="6"></textarea>
                                </p>
                                <br>
                                <input class="mainBtn" type="submit" name="btn-send-email" value="Envoyer">
                            </div>
                        </form>
                    </div> <!-- /.col-md-3 -->
                    <div class="col m5 s6">
                        <h4 class="widget-title">Adresse</h4>
                        <div class="map-holder">
                            <div class="google-map-canvas" id="map-canvas"
                                 style="height: 250px; position: relative; background-color: rgb(229, 227, 223); overflow: hidden;">
                                <div class="gm-style"
                                     style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;">
                                    <div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;">
                                        <div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0); will-change: transform;">
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
                                                    <div aria-hidden="true"
                                                         style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
                                                        <div style="width: 256px; height: 256px; position: absolute; left: 142px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; position: absolute; left: 142px; top: 240px;"></div>
                                                        <div style="width: 256px; height: 256px; position: absolute; left: -114px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; position: absolute; left: -114px; top: 240px;"></div>
                                                        <div style="width: 256px; height: 256px; position: absolute; left: 398px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; position: absolute; left: 398px; top: 240px;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
                                                <div style="position: absolute; left: 0px; top: 0px; z-index: -1;">
                                                    <div aria-hidden="true"
                                                         style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 142px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 142px; top: 240px;"></div>
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -114px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -114px; top: 240px;"></div>
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 398px; top: -16px;"></div>
                                                        <div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 398px; top: 240px;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="position: absolute; z-index: 0; left: 0px; top: 0px;">
                                                <div style="overflow: hidden; width: 444px; height: 250px;"><img
                                                        src="https://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i8536179&amp;2i6546192&amp;2e1&amp;3u16&amp;4m2&amp;1u444&amp;2u250&amp;5m5&amp;1e0&amp;5sfr-FR&amp;6sus&amp;10b1&amp;12b1&amp;token=50917"
                                                        style="width: 446px; height: 250px;"></div>
                                            </div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
                                                <div aria-hidden="true"
                                                     style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
                                                    <div style="position: absolute; left: 142px; top: -16px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33345!3i25571!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=31861"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                    <div style="position: absolute; left: 142px; top: 240px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33345!3i25572!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=67882"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                    <div style="position: absolute; left: -114px; top: -16px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33344!3i25571!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=71582"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                    <div style="position: absolute; left: -114px; top: 240px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33344!3i25572!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=107603"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                    <div style="position: absolute; left: 398px; top: -16px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33346!3i25571!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=123211"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                    <div style="position: absolute; left: 398px; top: 240px; transition: opacity 200ms ease-out;">
                                                        <img src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i16!2i33346!3i25572!4i256!2m3!1e0!2sm!3i365035389!3m9!2sfr-FR!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=28161"
                                                             draggable="false" alt=""
                                                             style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%; transition-duration: 0.3s; opacity: 0; display: none;"
                                             class="gm-style-pbc"><p class="gm-style-pbt">Utilisez deux doigts pour
                                            déplacer
                                            la carte</p></div>
                                        <div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; height: 100%;"></div>
                                        <div style="position: absolute; left: 0px; top: 0px; z-index: 4; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
                                        </div>
                                    </div>
                                    <div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
                                        <a target="_blank"
                                           href="https://maps.google.com/maps?ll=36.723241,3.171271&amp;z=16&amp;t=m&amp;hl=fr-FR&amp;gl=US&amp;mapclient=apiv3"
                                           title="Cliquez ici pour afficher cette zone sur Google&nbsp;Maps"
                                           style="position: static; overflow: visible; float: none; display: inline;">
                                            <div style="width: 66px; height: 26px; cursor: pointer;"><img
                                                    src="https://maps.gstatic.com/mapfiles/api-3/images/google4.png"
                                                    draggable="false"
                                                    style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;">
                                            </div>
                                        </a></div>
                                    <div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 72px; top: 36px;">
                                        <div style="padding: 0px 0px 10px; font-size: 16px;">Données cartographiques
                                        </div>
                                        <div style="font-size: 13px;">Données cartographiques ©2016 Google</div>
                                        <div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;">
                                            <img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png"
                                                 draggable="false"
                                                 style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                        </div>
                                    </div>
                                    <div class="gmnoprint"
                                         style="z-index: 1000001; position: absolute; right: 278px; bottom: 0px; width: 126px;">
                                        <div draggable="false" class="gm-style-cc"
                                             style="-webkit-user-select: none; height: 14px; line-height: 14px;">
                                            <div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                                <div style="width: 1px;"></div>
                                                <div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
                                            </div>
                                            <div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                                <a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer;">Données
                                                    cartographiques</a><span style="display: none;">Données cartographiques ©2016 Google</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;">
                                        <div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">
                                            Données cartographiques ©2016 Google
                                        </div>
                                    </div>
                                    <div class="gmnoprint gm-style-cc" draggable="false"
                                         style="z-index: 1000001; -webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 165px; bottom: 0px;">
                                        <div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                            <div style="width: 1px;"></div>
                                            <div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
                                        </div>
                                        <div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                            <a href="https://www.google.com/intl/fr-FR_US/help/terms_maps.html"
                                               target="_blank"
                                               style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Conditions
                                                d'utilisation</a></div>
                                    </div>
                                    <div style="width: 25px; height: 25px; overflow: hidden; display: none; margin: 10px 14px; position: absolute; top: 0px; right: 0px;">
                                        <img src="https://maps.gstatic.com/mapfiles/api-3/images/sv5.png"
                                             draggable="false"
                                             class="gm-fullscreen-control"
                                             style="position: absolute; left: -52px; top: -86px; width: 164px; height: 112px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;">
                                    </div>
                                    <div draggable="false" class="gm-style-cc"
                                         style="-webkit-user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
                                        <div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                            <div style="width: 1px;"></div>
                                            <div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
                                        </div>
                                        <div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                            <a target="_new"
                                               title="Signaler à Google une erreur dans la carte routière ou les images"
                                               href="https://www.google.com/maps/@36.7232408,3.1712709,16z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
                                               style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Signaler
                                                une erreur cartographique</a></div>
                                    </div>
                                    <div class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
                                         draggable="false"
                                         controlwidth="28" controlheight="93"
                                         style="margin: 10px; -webkit-user-select: none; position: absolute; bottom: 108px; right: 28px;">
                                        <div class="gmnoprint" controlwidth="28" controlheight="55"
                                             style="position: absolute; left: 0px; top: 38px;">
                                            <div draggable="false"
                                                 style="-webkit-user-select: none; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 28px; height: 55px;">
                                                <div title="Zoom avant"
                                                     style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;">
                                                    <div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;">
                                                        <img src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png"
                                                             draggable="false"
                                                             style="position: absolute; left: 0px; top: 0px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;">
                                                    </div>
                                                </div>
                                                <div style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; background-color: rgb(230, 230, 230); top: 0px;"></div>
                                                <div title="Zoom arrière"
                                                     style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;">
                                                    <div style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;">
                                                        <img src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png"
                                                             draggable="false"
                                                             style="position: absolute; left: 0px; top: -15px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gm-svpc" controlwidth="28" controlheight="28"
                                             style="background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; position: absolute; left: 0px; top: 0px;">
                                            <div style="position: absolute; left: 1px; top: 1px;"></div>
                                            <div style="position: absolute; left: 1px; top: 1px;">
                                                <div aria-label="Contrôle de Pegman dans Street View"
                                                     style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;">
                                                    <img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
                                                         draggable="false"
                                                         style="position: absolute; left: -147px; top: -26px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                </div>
                                                <div aria-label="Pegman est au-dessus de la carte."
                                                     style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;">
                                                    <img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
                                                         draggable="false"
                                                         style="position: absolute; left: -147px; top: -52px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                </div>
                                                <div aria-label="Contrôle de Pegman dans Street View"
                                                     style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;">
                                                    <img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
                                                         draggable="false"
                                                         style="position: absolute; left: -147px; top: -78px; width: 215px; height: 835px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gmnoprint" controlwidth="28" controlheight="0"
                                             style="display: none; position: absolute;">
                                            <div title="Faire pivoter le plan à 90°"
                                                 style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; cursor: pointer; background-color: rgb(255, 255, 255); display: none;">
                                                <img src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png"
                                                     draggable="false"
                                                     style="position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                            </div>
                                            <div class="gm-tilt"
                                                 style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);">
                                                <img src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png"
                                                     draggable="false"
                                                     style="position: absolute; left: -141px; top: -13px; width: 170px; height: 54px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gmnoprint"
                                         style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;">
                                        <div class="gm-style-mtc" style="float: left;">
                                            <div draggable="false" title="Afficher un plan de ville"
                                                 style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 22px; font-weight: 500;">
                                                Plan
                                            </div>
                                            <div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 39px; text-align: left; display: none;">
                                                <div draggable="false" title="Afficher le relief sur la carte"
                                                     style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;">
                                                <span role="checkbox"
                                                      style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div
                                                        style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img
                                                        src="https://maps.gstatic.com/mapfiles/mv/imgs8.png"
                                                        draggable="false"
                                                        style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;"></div></span><label
                                                        style="vertical-align: middle; cursor: pointer;">Relief</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gm-style-mtc" style="float: left;">
                                            <div draggable="false" title="Afficher les images satellite"
                                                 style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; border-left: 0px; min-width: 40px;">
                                                Satellite
                                            </div>
                                            <div style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 39px; text-align: left; display: none;">
                                                <div draggable="false"
                                                     title="Afficher les images satellite avec le nom des rues"
                                                     style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;">
                                                <span role="checkbox"
                                                      style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div
                                                        style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img
                                                        src="https://maps.gstatic.com/mapfiles/mv/imgs8.png"
                                                        draggable="false"
                                                        style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;"></div></span><label
                                                        style="vertical-align: middle; cursor: pointer;">Légendes</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.map-holder -->
                        <div class="contact-info">
                            <p>3B International Trading</p>
                            <span><i class="fa fa-home"></i><a href="depots.php?depot=2">Siège sociale</a> : N° 26, Lot F.Boushaki, Bab-Ezzouar - Alger</span>
                            <span><i class="fa fa-phone"></i>+213.23.83.20.24 / Fax : +213.23.83.29.55</span>
                            <span><i class="fa fa-exchange"></i><a href="depots.php?depot=1">Dépôt centrale</a> : Ben-Ammar, Hammadi - Boumerdes</span>
                            <span><i class="fa fa-phone"></i>+213.561.73.36.77 / +213.561.73.40.79</span>
                        <span><i class="fa fa-envelope"></i><a href="mailto:sarl3btrading@yahoo.fr"
                                                               style="color : #777">sarl3bTrading@yahoo.fr</a></span>
                        </div>
                    </div> <!-- /.col-md-3 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->

        </div>
    </section>

    <br>

    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col m8 s8 ">
                    <p>Copyright © 2015 3B Internationale</p>
                </div> <!-- /.col-md-6 -->
                <div class="col m4 s4 ">
                    <div class="go-top">
                        <a href="#" id="go-top">
                            <i class="fa fa-angle-up"></i>
                            Top
                        </a>
                    </div>
                </div> <!-- /.col-md-6 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div>


</main>


<c:set var="magasins_count" scope="page" value="${0}"/>
<c:set var="opened_rows" scope="page" value="${0}"/>
<c:set var="opened_rows" value="${opened_rows + 1}" scope="page"/>

<c:forEach begin="1" end="${magasinsHauts.size()  }" varStatus="loop">
    <c:set var="magasins_count" scope="page" value="${magasins_count+1}"/>
    <div class="cd-member-bio member-haut-${magasins_count}">
        <div class="cd-member-bio-pict">
            <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
        </div>
        <!-- cd-member-bio-pict -->

        <div class="cd-bio-content">
            <br>
            <br>
            <div class="title-section text-center" id="mag-bab-lwed" style="margin-bottom: 30px;">
                <h2>Bab El-Oued, Alger</h2>
                <span></span>
            </div>

            <div class="col m4 col s6">
                <h4 class="widget-title">Comfort Footwear</h4>
                <br>
                <div class="contactMagasin-info">
                    <span><i class="fa fa-home topHIc"></i>34 Avenue Colonel Lotfi - Bab El-Oued, Alger</span><br><br>
                    <span><i class="fa fa-phone topHIc"></i>+213.561.74.34.12</span>
                </div>

                <br>

                <div class="title-section text-center" style="margin-bottom: 30px;">
                    <h2>Carte</h2>
                    <span></span>
                </div>
                <div class="container" id="map-zone" style="height: 300px">
                    <iframe width="500" height="300" frameborder="0" style="border:0"
                            src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJDbEvcKyzjxIREYKWUeD50ug&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                            allowfullscreen></iframe>
                </div>


                <br>

            </div>


            <div class="mag-photos">

                <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                    <h2>Photos du Magasin</h2>
                    <span></span>
                </div>

                <div class="container-mag">
                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                    </div>

                    <div class="row">
                        <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                    </div>

                </div>


            </div>


        </div>
        <!-- cd-bio-content -->
    </div>


</c:forEach>




<div class="cd-member-bio member-2">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>

        <div class="row">
            <div class="title-section text-center" id="alger-centre" style="margin-bottom: 30px;">
                <h2>Alger Centre</h2>
                <span></span>
            </div>
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>43 Rue Larbi Ben M'hidi - Alger Centre</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.73.40.23</span>
            </div>


            <iframe width="300" height="300" src="https://www.youtube.com/embed/YWRdHZuQmhE" frameborder="0"
                    allowfullscreen></iframe>
        </div>

    </div>
    <div class="title-section text-center" style="margin-bottom: 30px;">
        <h2>Carte</h2>
        <span></span>
    </div>
    <div class="container" style="height: 300px">
        <iframe width="500" height="300" frameborder="0" style="border:0"
                src="https://www.google.com/maps/embed/v1/place?q=place_id:Ei00MyBSdWUgTGFyYmkgQmVuIE0naGlkaSwgQWxnZXIgQ3RyZSwgQWxnw6lyaWU&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                allowfullscreen></iframe>
    </div>
    <br>
    <br>

    <div class="mag-photos">

        <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
            <h2>Photos du Magasin</h2>
            <span></span>
        </div>

        <div class="container-mag">
            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
            </div>

            <div class="row">
                <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
            </div>

        </div>


    </div>


</div>
<!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-3">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="alger2" style="margin-bottom: 30px;">
            <h2>Dely Brahim, Alger</h2>
            <span></span>
        </div>
        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>Bois descard 01 N° 15 - Dely Brahim, Alger</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.74.33.51</span>
            </div>


            <div class="title-section text-center" style="margin-bottom: 30px;">
                <h2>Carte</h2>
                <span></span>
            </div>
            <div class="container" style="height: 300px">
                <iframe width="500" height="300" frameborder="0" style="border:0"
                        src="https://www.google.com/maps/embed/v1/place?q=Bois+descard+01+N°+15+-+Dely+Brahim,+Alger&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                        allowfullscreen></iframe>
            </div>
            <br>
            <br>

        </div>

        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>


    </div>
    <!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-4">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="Annaba" style="margin-bottom: 30px;">
            <h2>07 rue Tarek Ibn Ziad, Annaba</h2>
            <span></span>
        </div>

        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>07 rue Tarek Ibn Ziad - Wilaya de Annaba</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.73.86.33</span>
            </div>


            <div class="title-section text-center" style="margin-bottom: 30px;">
                <h2>Carte</h2>
                <span></span>
            </div>
            <div class="container" style="height: 300px">
                <iframe width="500" height="300" frameborder="0" style="border:0"
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJGcOsJLwH8BIR2AV7UCScstg&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                        allowfullscreen></iframe>
            </div>
            <br>
            <br>

        </div>


        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>

    </div>
    <!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-5">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="bejaia" style="margin-bottom: 30px;">
            <h2>Naciria, Bejaia</h2>
            <span></span>
        </div>

        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>Cité 162 logements EPLF - Naciria, Bejaia</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.73.91.02</span>
            </div>


            <div class="title-section text-center" style="margin-bottom: 30px;">
                <h2>Carte</h2>
                <span></span>
            </div>
            <div class="container" style="height: 300px">
                <iframe width="500" height="300" frameborder="0" style="border:0"
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ-Qmv9K3M8hIRYp876Bf3b-U&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                        allowfullscreen></iframe>
            </div>
            <br>
            <br>

        </div>


        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>

    </div>
    <!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-6">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="oran" style="margin-bottom: 30px;">
            <h2>Place des victoires, Oran</h2>
            <span></span>
        </div>

        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>75 Rue L'arbie Ben M'hidi (Ex: Rue d'arzew) Place des victoires, Oran</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.73.91.94</span>
            </div>


            <div class="title-section text-center" style="margin-bottom: 30px;">
                <h2>Carte</h2>
                <span></span>
            </div>
            <div class="container" style="height: 300px">
                <iframe width="500" height="300" frameborder="0" style="border:0"
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJFcVB21CIfg0RNMzu_IE5WZ4&key=AIzaSyAPxdVHyy-XjsleaF_oeWrmAOJBkhdkWrI"
                        allowfullscreen></iframe>
            </div>
            <br>
            <br>


        </div>


        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>

    </div>
    <!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-7">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="Annaba" style="margin-bottom: 30px;">
            <h2>Place des victoires, Oran</h2>
            <span></span>
        </div>

        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>34 Avenue Colonel Lotfi - Bab El-Oued, Alger</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.74.34.12</span>
            </div>


            <div class="" id="mapSelector" style="height: 400px;"></div>

        </div>


        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>

    </div>
    <!-- cd-bio-content -->
</div>
<div class="cd-member-bio member-8">
    <div class="cd-member-bio-pict">
        <img src="img/member-bio-img-1.jpg" alt="Member Bio image">
    </div>
    <!-- cd-member-bio-pict -->

    <div class="cd-bio-content">
        <br>
        <br>
        <div class="title-section text-center" id="Annaba" style="margin-bottom: 30px;">
            <h2>Place des victoires, Oran</h2>
            <span></span>
        </div>

        <div class="col m4 col s6">
            <h4 class="widget-title">Comfort Footwear</h4>
            <br>
            <div class="contactMagasin-info">
                <span><i class="fa fa-home topHIc"></i>34 Avenue Colonel Lotfi - Bab El-Oued, Alger</span><br><br>
                <span><i class="fa fa-phone topHIc"></i>+213.561.74.34.12</span>
            </div>


            <div class="" id="mapSelector" style="height: 400px;"></div>

        </div>

        <div class="mag-photos">

            <div class="title-section text-center" style="margin-bottom: 30px;font-size: large">
                <h2>Photos du Magasin</h2>
                <span></span>
            </div>

            <div class="container-mag">
                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(1).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(2).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(3).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(4).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(5).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(6).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(7).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(8).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(9).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(10).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(11).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(12).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(13).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(14).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(15).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(16).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(17).jpg">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(18).jpg">
                </div>

                <div class="row">
                    <img src="3B-Internationle_files/img/nos-magasins-dist/mag-bab-lwed/bab-eloued%20(19).jpg">
                </div>

            </div>


        </div>

    </div>
    <!-- cd-bio-content -->
</div>
<a href="#0" class="cd-member-bio-close">Close</a>


<script src="./3B-Internationle_files/jquery-1.10.2.min.js"></script>
<script src="./3B-Internationle_files/materialize.js"></script>
<script src="./3B-Internationle_files/js/snap.svg-min.js"></script>
<script src="./3B-Internationle_files/js/main_index.js"></script>


</body>


</html>