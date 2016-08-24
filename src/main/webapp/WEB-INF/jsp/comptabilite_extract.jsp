<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:import url="./header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="./sidebar.jsp"></c:import>
<!-- L'interface principale -->


<section id="main">
    <!--Le contenu central -->
    <section id="content">
        <div class="container">

            <div class="card ">
                <!--L'entete de la page' -->
                <div class="card-header">
                    <h2>Chapitres
                        <small>Affichage des Chapitres.</small>
                    </h2>
                </div>

                <div class="card-body">
                    <sec:authorize access="hasAnyAuthority('ROLE_NOMENCLATEUR', 'ROLE_ADMIN')">
                        <div class="m-sm-10 ">
                            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un nouveau
                                Chapitre
                            </button>
                        </div>
                    </sec:authorize>


                    <!--Le tableau qui affiche la liste des comptes -->
                    <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table"
                           aria-busy="false">
                        <!--l'entete du tableau' -->
                        <thead>
                        <tr>
                            <th data-column-id="id" data-identifier="true" data-type="numeric">Id</th>
                            <th data-column-id="code_chapitre"   >Code Chapitre</th>
                            <th data-column-id="CompteLabel" class="text-left" >Désignation</th>
                            <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
                        </tr>
                        </thead>

                        <!--Les lignes du tableau -->
                        <tbody>
                        <c:if test="${listChapitres.size()>0}">
                            <c:forEach begin="0" end="${listChapitres.size()-1}" varStatus="loop">
                                <tr data-row-id="${loop.index}">
                                    <td class="text-left" style="">${loop.index+1}</td>
                                    <td class="text-left " style="">${listChapitres.get(loop.index).getCodeChapitre()}</td>
                                    <td class="text-left" style="">${listChapitres.get(loop.index).getDesignation()}</td>
                                </tr>

                            </c:forEach>
                        </c:if>
                        </tbody>
                    </table>

                </div>


            </div>


        </div>
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
<script type="text/javascript" src="js/jquerymy-1.2.4.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/functions_chapitres.js"></script>

</body>

</html>