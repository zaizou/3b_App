/*Projet Comptable et Budgétaire functions*/
var rows = new Array();
var rowsTransfert = new Array();
var startingRow=4;
var selectedSheet;
var startingDate="1/1/00";
var endingDate="31/12/99";
var currentSheet;







//Initialisation du tableau contenant les sections
$(document).ready(function () {



    $("#sheetName").on("keyup",function (e) {
            selectedSheet=$(this).val();
    });



    $("#fromDate").on("dp.change",function (e) {
        $('#toDate').data("DateTimePicker").minDate(e.date);
        startingDate=moment(e.date).format("MM/DD/YY");
    });

    $("#toDate").on('dp.change',function (e) {
        endingDate=moment(e.date).format("MM/DD/YY");
    });



    $("#data-table-command").bootgrid({
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
        }

    });



    $("#data-table-command-transferts").bootgrid({
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
        }

    });


}).on("loaded.rs.jquery.bootgrid", function () {


    var excelDocument=new ExcelPlus();
      excelDocument.openLocal({
        "labelButton":"Open an Excel file"
    },function () {
        appendDataTables(excelDocument);
        //$("#loadBtn").css('display','');
        $("#clearBtn").css('display','');
        $("#sendBtn").css('display','');
    });



  $("#sendBtn").on("click",function () {

    });

    $("#clearBtn").on("click",function () {
        viderTablesConfirmation();
    });




    function appendDataTables(){
        console.log(excelDocument.getSheetNames());
        currentSheet = excelDocument.selectSheet(selectedSheet);
        //console.table(records);
        var data;
        var record;
        var i=0,j=0;
        record = currentSheet.read("A"+(i+startingRow)+":"+"K"+(i+startingRow));
        var canAdd=false;

        while (record[0][0]!=null){

            record = currentSheet.read("A"+(i+startingRow)+":"+"K"+(i+startingRow));

            if(moment(record[0][0]).isAfter(startingDate)){
                canAdd=true;
                console.log("We can add the element");
            }

            if(moment(record[0][0]).isAfter(endingDate)){
                console.log("Break invoked");
                break;
            }

            if(record[0][0]=="TOTAL")
                canAdd=false;

            if(canAdd){
                rows [j] = {
                    "id": j+1,
                    "date_trans": moment(record[0][0],"MM/DD/YY").format("DD/MM/YYYY"),
                    "jour_trans": record[0][1],
                    "montant_trans": record[0][2],
                    "depense_trans": record[0][3],
                    "observation_trans": record[0][4]
                };

                rowsTransfert[j]= {
                    "id": j+1,
                    "date_transf":moment(record[0][6],"MM/DD/YY").format("DD/MM/YYYY"),
                    "jour_transf": record[0][7],
                    "montant_transf": record[0][8],
                    "transf": record[0][9],
                    "obser_transf": record[0][10]
                };

                //console.log(rows[j]);
                j++
            }

            i++;
        }
        $("#data-table-command").bootgrid("append", rows);
        $("#data-table-command-transferts").bootgrid("append", rowsTransfert);

        $("#sendBtn").css('display','');

    }

    function viderTablesConfirmation() {

        swal({
                title: 'Etes Vous Sure ?',
                text: "Voulez vous vraiment vider les tables",
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
                if(isConfirm){
                    $("#data-table-command").bootgrid("clear");
                    $("#data-table-command-transferts").bootgrid("clear");

                    $("#loadBtn").css('display','none');
                    $("#clearBtn").css('display','none');
                    $("#sendBtn").css('display','none');

                }
            }


            );


    }







    $("#data-table-command").find('button.compte-suppr.extern').on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        afficherSupprChapitre(idUtilisateur, rows);

    }).end().find("button.showingInfos").on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        window.location.replace("nommenclatures_get_chapitre.html?code_chapitre="+idUtilisateur);
        //alert("you pressed edit on row " + $(this).data("row-id"));
    });




    function handleDuChanged(){
        // ,

    }

    function handleAuChanged(){


    }










});
















