/*Projet Comptable et Budgétaire functions*/
var compteEditMode = false;
var compteSelected = false;
var selectedCompte = -1;
var compteCreationMode = false;
var compteShowingMode = false;


var data_section = {
    code_section: 1,
    designation: "exploitation"
};


function prepareGMAPS_view() {
    $('#mapSelector').locationpicker({
        location: {latitude: 36.718863059742844, longitude: 3.183347702026367},
        radius:0,
        enableAutocomplete: true,
        inputBinding: {
            latitudeInput: $('#latitudeInput'),
            longitudeInput: $('#longitudeInput'),
            locationNameInput: $('#addressInput')
        }
    });
}

//Initialisation du tableau contenant les sections
$(document).ready(function () {


    //Initialisation
    $.getJSON('gestion_utilisateurs_utilisateurs_list.json', {
        ajax: 'true'
    }, function (result) {
        var htln = "";
        console.log("loggin the result");
        console.log(result);
        for (var i = 0; i < result.utilisateurList.length; i++) {
            console.log("Section " + i);
            console.log("Code Strcuture " + result.utilisateurList[i].codeStructure);
            console.log("Designation" + result.utilisateurList[i].nom);
            htln += '<option value=';
            htln += "" + result.utilisateurList[i].id;
            htln += '>';
            htln += "" + result.utilisateurList[i].nom+" "+result.utilisateurList[i].prenom;
            htln += '</option>';
        }
        $("#responsable-select")
            .html(htln)
            .selectpicker('refresh');

    }).done(function () {
        console.log("apres success");
    })
        .fail(function () {
            console.log("error dans la requete d'ajout de responsables");
        })
        .always(function () {
            console.log("complete toujours succes ou erreur");
        });



    //Initialisation
    $.getJSON('wilayas_list.json', {
        ajax: 'true'
    }, function (result) {
        var htln = "";
        console.log("loggin the result");
        console.log(result);
        for (var i = 0; i < result.wilayaList.length; i++) {
            htln += '<option value=';
            htln += "" + result.wilayaList[i].matriculeWilaya;
            htln += '>';
            htln += "" + result.wilayaList[i].matriculeWilaya+" - "+result.wilayaList[i].intituleWilaya;
            htln += '</option>';
        }
        $("#wilaya-select")
            .html(htln)
            .selectpicker('refresh');

    }).done(function () {
            console.log("apres success");
        })
        .fail(function () {
            console.log("error dans la requete d'ajout de responsables");
        })
        .always(function () {
            console.log("complete toujours succes ou erreur");
        });












    var grid = $("#data-table-command").bootgrid({
        css: {
            icon: 'zmdi icon',
            iconColumns: 'zmdi-view-module',
            iconDown: 'zmdi-expand-more',
            iconRefresh: 'zmdi-refresh',
            iconUp: 'zmdi-expand-less'
        },
        formatters: {
            "commands": function (column, row) {
                return "<button type=\"button\" class=\"showingInfos btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-assignment\"></span></button> " +
                    "<button type=\"button\" class=\"compte-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
                ;
            }
        },


    }).on("loaded.rs.jquery.bootgrid", function () {








        grid.find('button.compte-suppr.extern').on("click", function (e) {
            var rows = Array();
            rows[0] = $(this).data("row-id");
            var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
            afficherSupprChapitre(idUtilisateur, rows);

        }).end().find("button.showingInfos").on("click", function (e) {
            var rows = Array();
            rows[0] = $(this).data("row-id");
            var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
            window.location.replace("gestion_utilisateurs_get_utilisateur.html?id_utilisateur="+idUtilisateur);

        });
    });


    //Click le bouton creer une section
    $('button.section-create').on('click', function () {
        compteCreationMode = true;
        compteEditMode = false;
        compteShowingMode = false;
        afficherSection();
        prepareGMAPS_view();
    });


//Click le bouton affichage d'une section
    $('button.showingInfos').on('click', function () {
        selectedCompte = $(this.closest('tr')).attr('data-row-id');
        compteShowingMode = true;
        compteCreationMode = false;
        compteEditMode = false;
        afficherSection();
    });


    //Click sur le bouton modifier (interne)
    $('button.compte-mod').on('click', function () {
        compteEditMode = true;
        compteShowingMode = false;
        compteCreationMode = false;
        afficherSection();
    });


    $('button.compte-create-submit').on('click', function () {
        afficherCreateChapitreMessage();
    });


    $('button.compte-mod-save').on('click', function () {
        afficherModifAccountMessage();
    });


//Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click', function () {

    });

    //Click sur le bouton  créer un chapitre
    $('button.rubrique-create-submit').on('click', function () {
        afficherCreateChapitreMessage();

    });


    $('button.rubrique-create_cancel').on('click', function () {
        $("input.rubrique").val("");
        $('.card.section-detail').css('display', '');
        $('.card.rubrique-create').css('display', 'none');
    });

    $('a.rubrique-return').on('click', function () {
        //$( "input.chapitre" ).prop( "readonly", true );
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.rubrique-create').css('display', 'none');
        compteShowingMode = true;
    });


    function afficherCreateChapitre() {

        //$( "input.compte" ).prop( "readonly", false );
        $('.card.section-detail').css('display', 'none');
        $('.card.rubrique-create').css('display', '');
        $('.card.rubrique-create').addClass('animated fadeInLeft');
        compteShowingMode = false;

    }


    function afficherSection() {
        //affichage uniquement
        if (compteShowingMode) {
            $("input.compte").prop("readonly", true);
            $('button.compte-mod-save').css('display', 'none');
            $('button.compte-mod').css('display', '');
            $('button.compte-suppr').css('display', '');
            $('.card.section-detail').css('display', '');
        }
        if (compteEditMode) {
            $("input.compte").prop("readonly", false);
            $('button.compte-mod-save').css('display', '');
            $('button.compte-mod').css('display', 'none');
            $('button.compte-suppr.intern').css('display', 'none');
            $('.card.section-detail').css('display', '');
        }
        if (compteCreationMode)
            $('.card.section-create').css('display', '');


        $('.card.list-sections').css('display', 'none');

    }

//Click sur le bouton de retour
    $('a.btn-login.section-return-btn').on('click', function () {
        if (compteEditMode || compteShowingMode)
            $('.card.section-detail').css('display', 'none');
        if (compteCreationMode)
            $('.card.section-create').css('display', 'none');

        $('.card.list-sections').css('display', '');
    });


///Click sur le Bouton annuler de l'interface ceer une nouvelle section
    $('button.compte-create_cancel').on('click', function () {
        //alert("code section : "+data_section.code_section+"\ndesignation :"+data_section.designation);
        $("input.compte").val("");
        compteCreationMode = false;
        $('.card.section-create').css('display', 'none');
        $('.card.list-sections').css('display', '');


    });

    function afficherModifAccountMessage() {
        var codeChap = $('#edit_input_classes ').val();
        var designationChap = $('#edit_input_nom').val();
        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous valider la modification du compte ?",
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Valider",
            confirmButtonColor: "#ec6c62"
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "nomenclatures_chapitre_edit.html",
                    data: {code_chapitre: codeChap, designation: designationChap},
                    success: function (data) {
                        if (data == 100)
                            swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                        else
                            swal("Erreur", "Le Compte n'est pas modifié", "error");

                    }
                }
            )
                .done(function (data) {
                    swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                })
                .error(function (data) {
                    swal("Erreur", "Le Compte n'est pas modifié", "error");
                });
        });
    }

    function afficherCreateChapitreMessage() {


        var in_nom = $("#creat_input_nom").val();
        var wilaya = $("#wilaya-select").val();
        var responsable = $("#responsable-select").val();
        var lati = $("#latitudeInput").val();
        var longi= $("#longitudeInput").val();
        var address = $("#addressInput").val();


        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous vraiment Ajouter ce Magasin ?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Confirmer",
            confirmButtonClass: "btn  btn-success waves-effect",
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "gestion_magasin_magasin_create.html",
                    data: {
                        nom: in_nom,
                        wilaya: wilaya,
                        responsable:responsable,
                        latitude: lati,
                        longitude: longi,
                        addresse: address,
                    }
                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100") {
                        swal("Succès!", "Le Magasin est ajouté avec Succès", "success");
                        window.location.replace("gestion_utilisateurs_utilisateurs.html");
                    }
                    else if (JSON.parse(data) == "602")
                        swal("Erreur", "le Magasin Existe déja ", "error");
                    else if (JSON.parse(data) == "101")
                        swal("Erreur", "Interdit d'affecter un responsable à plusieurs magasins ", "error");

                })
                .error(function (data) {
                    swal("Erreur", "Le Magasin n'est pas ajouté", "error");
                });
        });
    }

    function afficherSupprChapitre(idUtilisateur, selectedRow) {
        swal({
                title: 'Ete Vous Sure ?',
                text: "Voulez vous vraiment supprimer Ce Chapitre!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                confirmButtonText: 'Oui, Confirmer!',
                cancelButtonText: 'Annuler',
                confirmButtonClass: 'btn btn-danger',
                cancelButtonClass: 'btn',
                buttonsStyling: false,
                closeOnConfirm: true,

            },
            function (isConfirm) {


                if (isConfirm)

                    $.ajax(
                        {
                            type: "POST",
                            dataType: 'json',
                            url: "gestion_utilisateurs_utilisateur_remove.html",
                            data: {id_utilisateur: idUtilisateur},
                        }
                    ).done(function (data) {
                        if (JSON.parse(data) == "100") {

                            $('#data-table-command').bootgrid("remove", selectedRow);
                            swal("Succès!", "L'Utilisateur est supprimé avec Succès", "success");
                        }

                        else
                            swal("Erreur", "Utilisateur non  Supprimé", "error");
                    })
                        .error(function (data) {
                            swal("Erreur", "Utilisateur non  Supprimé", "error");
                        });

            });


    }

});