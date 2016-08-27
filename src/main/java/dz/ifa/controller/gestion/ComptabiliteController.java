package dz.ifa.controller.gestion;

import com.fasterxml.jackson.databind.util.JSONPObject;
import dz.ifa.model.gestion.*;
import dz.ifa.service.gestion.GestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Assou on 23/08/2016.
 */
@Controller
public class ComptabiliteController {

    @Autowired
    private GestionService gestionService;



    @RequestMapping(
            value = {"/comptabilite_extraction"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model) {
        return "comptabilite_extract";
    }




    @RequestMapping(
            value = {"/comptabilite_extraction_send.json"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
        public String postCreateComptaTransfert(@RequestBody Comptab[] comptas) {

        //data: {list_compta: rowsComptabilite, list_transfert: rowsTransfert}

/*
        System.out.println("The comptas is :"+comptas.getDateCompta());
        System.out.println("The comptas is :"+comptas.getMontantCompta());
        System.out.println("The comptas is :"+comptas.getIdCompta());
        System.out.println("The comptas is :"+comptas.getObservationCompta());
  */
        System.out.println("In The COntroller");
        if(comptas==null){
            System.out.println("comptas is null   ");
            return "comptas is null   ";
        }

        SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date date;
        java.sql.Date dateSql;
        Compta compta;
/*
        for(int i=0;i<comptas.length;i++){
            System.out.println("Compta : "+i);
            System.out.println("Date "+comptas[i].getDateCompta());
            System.out.println("Montant "+comptas[i].getMontantCompta());
            System.out.println("Depense "+comptas[i].getDepense());
            try {
                date=dateFormatter.parse(comptas[i].getDateCompta());
                dateSql=new java.sql.Date(date.getTime());
                compta=gestionService.creerCompta(new Compta(dateSql,comptas[i].getJourCompta(),
                        comptas[i].getMontantCompta(),
                        comptas[i].getDepense(),
                        comptas[i].getObservationCompta()));
                if(compta==null)
                    return "101";
            } catch (ParseException e) {
                e.printStackTrace();
            }


        }

        */


/*
        if(comptas.getListCompta()==null){
            System.out.println("comptas list is null");
            return "comptas list is null";
        }



        System.out.println("Ok");
        for(int i=0;i<comptas.getListCompta().size();i++){
            System.out.println("Compta n :"+i);
            System.out.println(""+comptas.getListCompta().get(i).getDateCompta());
            System.out.println(""+comptas.getListCompta().get(i).getMontantCompta());
        }
        */
/*
        for (int j=0;j<transferts.getListTranfert().size();j++){
            System.out.println("Transfert n :"+j);
            System.out.println(""+transferts.getListTranfert().get(j).getDateTransfert());
            System.out.println(""+transferts.getListTranfert().get(j).getMontantTransfert());
        }

        */
        return "100";

    }




}
