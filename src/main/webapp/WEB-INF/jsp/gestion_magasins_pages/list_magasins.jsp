<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Magasins
            <small>Gestion des Magasins.</small>
        </h2>
    </div>
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un nouveau Magasin
            </button>
        </div>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command"      class="table table-condensed table-hover table-striped bootgrid-table" aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th data-column-id="id" data-identifier="true" data-type="numeric" data-width="7%"></th>
                <th data-column-id="id_mag" class="text-left" >Id Magasin</th>
                <th data-column-id="nom" class="text-left" >Nom Magasin</th>
                <th data-column-id="wilaya" class="text-left" >Wilaya</th>
                <th data-column-id="responsable" class="text-left" >Responsable</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
            </tr>
            </thead>
            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listMagasins.size() >0}">
                <c:forEach begin="0" end="${listMagasins.size()-1}" varStatus="loop">
                    <tr data-row-id="${loop.index}" class="147">
                        <td class="text-left" style="">${loop.index+1}</td>
                        <td class="text-left" style="">${listMagasins.get(loop.index).getIdMagasin()}</td>
                        <td class="text-left" style="">${listMagasins.get(loop.index).getNomMagazin()}</td>
                        <td class="text-left" style="">${listMagasins.get(loop.index).getWilayaMagasin().getIntituleWilaya()}</td>
                        <td class="text-left" style="">${listMagasins.get(loop.index).getResponsableMagasin().getNom()} ${listMagasins.get(loop.index).getResponsableMagasin().getPrenom()}</td>
                    </tr>

                </c:forEach>
            </c:if>

            </tbody>



        </table>

    </div>


</div>