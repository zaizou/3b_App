/*Projet Comptable et Budgétaire functions*/



$(document).ready(function(){






    });

    $("#excelFile").on('change',function (e) {

        /* DO SOMETHING WITH workbook HERE */



    });








//Initialisation du tableau contenant les sections
$(document).ready(function () {

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


    var ep=new ExcelPlus();
    ep.openLocal({
        "labelButton":"Open an Excel file"
    },function() {
        // show the content of the first sheet
        //var records=ep.selectSheet("An2016").read("A4:E4");
        var currentSheet = ep.selectSheet("An");
        //console.table(records);
        var data;
        var rows = new Array();
        var startingRow=4;
        var startingDate="3/10/15";
        var endingDate="3/18/15";
        var record;
        var i=0,j=0;
        record = currentSheet.read("A"+(i+startingRow)+":"+"E"+(i+startingRow));
        var canAdd=false;

        while (record[0][0]!=null){
            record = currentSheet.read("A"+(i+startingRow)+":"+"E"+(i+startingRow));
            if(record[0][0]==startingDate )
                canAdd=true;
            if(record[0][0]==endingDate)
                break;


            console.log(record[0][0]);
          /*  if(record[0][0]=="TOTAL")
                alert("its a total");*/
            if(canAdd){
                rows [j] = {
                    "id": j+1,
                    "date_trans": record[0][0],
                    "jour_trans": record[0][1],
                    "montant_trans": record[0][2],
                    "depense_trans": record[0][3],
                     "observation_trans": record[0][4]
                };
                console.log(rows[j]);
                j++
            }

            i++;
        }
        $("#data-table-command").bootgrid("append", rows);



    /*    for (i = 0; i < 10; i++) {
            var record = currentSheet.read("A"+(i+startingRow)+":"+"E"+(i+startingRow));
            if(record[0][0]=="TOTAL")
                alert("its a total");
            rows [i] = {
                "id": i,
                "date_trans": record[0][0],
                "jour_trans": record[0][1],
                "montant_trans": record[0][2],
                "depense_trans": record[0][3],
                "observation_trans": record[0][4]
            };
        }

        $("#data-table-command").bootgrid("append", rows);

        */

    });


    $("#data-table-command").find('button.compte-suppr.extern').on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        afficherSupprChapitre(idUtilisateur, rows);

    })
        .end().find("button.showingInfos").on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        window.location.replace("nommenclatures_get_chapitre.html?code_chapitre="+idUtilisateur);
        //alert("you pressed edit on row " + $(this).data("row-id"));
    });

















});
















