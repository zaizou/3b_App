<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card section-detail" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Detail Nomenclature Comptable
                    <small>Affichage des informations sur la Nomenclature</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login compte-mod-save" style="display:none">Enregistrer les
                    Modifications
                </button>
                <button class="btn btn-login compte-mod">Modifier</button>
                <button class="btn btn-login btn-danger compte-suppr intern">Supprimer la Nomenclature</button>


            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#"
                   class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i
                        class="zmdi zmdi-arrow-left"></i></a>
            </div>

        </div>
    </div>


    <div class="card-contenu section-detail">
        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
            <div class="panel panel-collapse">
                <div class="panel-heading active" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                           aria-expanded="true" aria-controls="collapseOne" class="">
                            Informations sur la Nomenclature
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne"
                     aria-expanded="true">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Numéro</label>
                                <input  id="edit_input_classes" placeholder="   6" class="form-control compte">
                            </div>
                            <div class="col-sm-8">
                                <label>Désignation</label>
                                <input id="edit_input_nom" placeholder="    Exploitation" class="form-control compte">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                           href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Liste des Comptes Budgétaires
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">

                        <div class="m-sm-10 ">
                            <button class="m-l-20 btn  btn-success  intern waves-effect chapitre-create">Ajouter un Nouveau Chapitre</button>
                        </div>

                        <table id="chapitre-data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
                            <!--l'entete du tableau' -->
                            <thead>
                            <tr>
                                <th class="text-left" data-column-id="id">Code_Chapitre</th>
                                <th data-column-id="CompteLabel" class="text-left" style="">Désignation</th>
                                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
                            </tr>
                            </thead>

                            <script>
                                alert(""+selectedSection);
                                print("helov^oqzbvôuqsbdvpcsdiyqvcp_yzibdiklrydxcugbhj,klliytcouvh dqsipohvzdz");

                            </script>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>