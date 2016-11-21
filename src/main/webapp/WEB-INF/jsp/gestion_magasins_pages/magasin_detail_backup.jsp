<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lan="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/jquery.bootgrid.min.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    <title></title>
</head>
<body>
<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
<c:import url="../header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="../sidebar.jsp"></c:import>
<!-- L'interface principale -->


<section id="main">
    <!--Le contenu central -->
    <section id="content">
        <div class="container">

            <c:if test="${magasin!=null}">

            <div class="card section-create">
                <!--L'entete de la page' -->

                <div class="card-header">
                    <div class="row">
                        <div class="col-sm-9">
                            <h2>Fiche Magasin
                                <small>Les Informations d'un Magasin</small>
                            </h2>

                            <button class="btn btn-login compte-mod-save" style="display:none">Enregistrer les
                                Modifications
                            </button>
                            <button class="btn btn-login compte-mod">Modifier le Magasin</button>


                        </div>
                        <div class="col-sm-3" dir="rtl">
                            <a href="management_gestion_magasins_magasins.html"
                               class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i
                                    class="zmdi zmdi-arrow-left"></i></a>
                        </div>


                    </div>
                </div>


                <div class="card-contenu ">
                    <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                       aria-expanded="false" aria-controls="collapseOne">
                                        Identification du Magasin
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_nom" placeholder="${magasin.getNomMagazin()}"
                                                       class="form-control compte">
                                            </div>

                                            <div style="display: none">
                                                <input id="idMag" value="${magasin.idMagasin}"/>
                                            </div>

                                        </div>

                                        <div class="col-sm-6">
                                            <div class="shown_info" id="wila_magasin">
                                                <div class="fg-line">
                                                    <input id="wilaya_magasin"
                                                           placeholder="${magasin.getWilayaMagasin().getIntituleWilaya()}"
                                                           class="form-control compte">
                                                </div>
                                            </div>

                                            <div class="hidden_edit" id="wilaya_sel" style="display: none">
                                                <select class="selectpicker" title="Wilaya" id="wilaya-select"
                                                        data-live-search="true">
                                                </select>
                                            </div>

                                        </div>

                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-sm-6">

                                            <div class="shown_info" id="responsable">
                                                <div class="fg-line">
                                                    <input id="resp_magasin"
                                                           placeholder="${magasin.getResponsableMagasin().getNom()}   ${magasin.getResponsableMagasin().getPrenom()}"
                                                           class="form-control compte">
                                                </div>
                                            </div>

                                            <div class="fg-line" style="display: none">
                                                <input id="resp_magasin_id"
                                                       placeholder="${magasin.getResponsableMagasin().getId()}"
                                                       class="form-control compte">
                                            </div>


                                            <div class="hidden_edit" id="responsable_sel" style="display: none">
                                                <select class="selectpicker" title="Responsable" id="responsable-select"
                                                        data-live-search="true">
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">


                                        <br>

                                        <div class="shown_info" id="mag_detail">

                                            <div class="col-sm-4">
                                                <input id="magasin_type"
                                                       placeholder="${magasin.getType()}"
                                                       class="form-control compte">
                                            </div>

                                            <div class="col-sm-4">
                                                <input id="magasin_ordre"
                                                       placeholder="${magasin.getOrdre()}"
                                                       class="form-control compte">
                                            </div>

                                        </div>


                                        <div class="hidden_edit" id="detail_mag" style="display: none">

                                            <div class="col-sm-4">
                                                <select class="selectpicker" title="Type du Magasin" id="type-select">
                                                    <option value="detail">Détail</option>
                                                    <option value="gros">Gros</option>

                                                </select>
                                            </div>

                                            <div class="col-sm-4">
                                                <select class="selectpicker" title="Ordre du Magasin" id="ordre-select">
                                                    <option value="0">En Haut</option>
                                                    <option value="1">En Bas</option>
                                                </select>
                                            </div>
                                        </div>


                                    </div>


                                </div>
                            </div>
                        </div>


                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                                       aria-expanded="false" aria-controls="collapseThree">
                                        Coordonnées
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="latitudeInput" placeholder="${magasin.getLatitude()}"
                                                       class="form-control compte">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="longitudeInput" placeholder="${magasin.getLongitude()}"
                                                       class="form-control compte">
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="fg-line">
                                                <input id="addressInput" placeholder="${magasin.getAdresseMagasin()}"
                                                       class="form-control compte">
                                            </div>
                                        </div>


                                    </div>
                                    <br>
                                    <br>
                                    <div class="hidden_edit" class="row" style="display: none">
                                        <div class="col-sm-offset-1 col-sm-9 " id="mapSelector"
                                             style="height: 400px;"></div>
                                        <span class="col-sm-3"></span>
                                    </div>


                                    <br/>


                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            </c:if>

    </section>


</section>

<script type="text/javascript" src="js/promise.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.js"></script>

<script type="text/javascript" src="js/waves.min.js"></script>
<script type="text/javascript" src="js/typeahead.bundle.js"></script>
<script type="text/javascript" src="js/sweetalert2.min.js"></script>
<!--Bibliotheque pour le sidebar -->
<script type="text/javascript" src="js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.updated.min.js"></script>
<script type="text/javascript" src="js/sugar.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/locationpicker.jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyAUtsGVCuVLk9MrJvg0hV0PXcR7h-zLZ8I"
        type="text/javascript"></script>
<script type="text/javascript" src="js/functions_gestion_magasins_show.js"></script>

</body>

</html>