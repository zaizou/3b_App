/**
 * Created by Yazid on 16/09/2016.
 */


var storeName="";
var state;
var manager="";
var longitude;
var latitude;
var address="";

$(document).ready(function () {
    $("input.compte").prop("readonly", true);
    storeName=$("#creat_input_nom").attr('placeholder');
    state=$("#wilaya_magasin").attr('placeholder');
    manager=$("#resp_magasin").attr("placeholder");
    latitude=$("#latitudeInput").attr("placeholder");
    longitude=$("#longitudeInput").attr("placeholder");
    address=$("#addressInput").attr("placeholder");

    $('button.compte-mod').on('click', function () {
        $("input.compte").prop("readonly", false);
        $("shown_info").css('display', 'none');
        $("hidden_edit").css('display', '');
        prepareSelectFromJSON();
        $(this).css('display','none');
        $("button.compte-mod-save").css('display','');
    });


    $("#creat_input_nom").on('change',function () {
        storeName=$(this).val();
    });
    $("#wilaya-select").on('change',function () {
        state=$(this).val();
    });
    $("#responsable-select").on('change',function () {
        manager=$(this).val();
    });
    $("#latitudeInput").on('change',function () {
        latitude=$(this).val();
    });
    $("#longitudeInput").on('change',function () {
        longitude=$(this).val();
    });$("#addressInput").on('change',function () {
        address=$(this).val();
    });





    function prepareSelectFromJSON() {



        //Initialisation
        $.getJSON('gestion_utilisateurs_utilisateurs_list.json', {
            ajax: 'true'
        }, function (result) {
            var htln = "";
            for (var i = 0; i < result.utilisateurList.length; i++) {
                htln += '<option value=';
                htln += "" + result.utilisateurList[i].id;
                htln += '>';
                htln += "" + result.utilisateurList[i].nom + " " + result.utilisateurList[i].prenom;
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
            var matricule = "";
            for (var i = 0; i < result.wilayaList.length; i++) {
                if (result.wilayaList[i].matriculeWilaya < 10)
                    matricule = "0" + result.wilayaList[i].matriculeWilaya;
                else
                    matricule = "" + result.wilayaList[i].matriculeWilaya;
                htln += '<option value=';
                htln += "" + result.wilayaList[i].matriculeWilaya;
                htln += '>';
                htln += "" + matricule + " - " + result.wilayaList[i].intituleWilaya;
                htln += '</option>';
                matricule = "";
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


    }





});