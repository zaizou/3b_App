<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card section-create" style="display:none" >
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Fiche Magasin
                    <small>Création d'un Magasin</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login compte-create-submit">Créer le Magasin
                </button>
                <button class="btn btn-login btn-danger compte-create_cancel">Annuler</button>


            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#"
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

                        <div class="row" >
                            <div class="col-sm-4" >
                                <div class="fg-line"  >
                                    <input id="creat_input_nom" placeholder="Nom du Magasin"
                                           class="form-control compte">
                                </div>
                            </div>

                            <div class="col-sm-6" >
                                <select  class="selectpicker" title="Wilaya" id="wilaya-select"
                                         data-live-search="true" >
                                </select>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-6" >
                                <select  class="selectpicker" title="Responsable" id="responsable-select"
                                         data-live-search="true" >
                                </select>
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
                                    <input id="latitudeInput" placeholder="Latitude"
                                           class="form-control compte">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="fg-line">
                                    <input id="longitudeInput" placeholder="Longitude"
                                           class="form-control compte">
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-sm-8">
                                <div class="fg-line">
                                    <input id="addressInput" placeholder="Addresse"
                                           class="form-control compte">
                                </div>
                            </div>


                        </div>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-sm-offset-1 col-sm-9 " id="mapSelector" style="height: 400px;"></div>
                            <span class="col-sm-3"></span>
                        </div>


                        <br/>


                    </div>
                </div>
            </div>




        </div>
    </div>
</div>