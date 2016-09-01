package dz.ifa.controller.gestion;

import com.fasterxml.jackson.databind.util.JSONPObject;
import dz.ifa.model.gestion.*;
import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.service.gestion.GestionService;
import dz.ifa.service.gestion.MagasinService;
import dz.ifa.service.gestion_utilisateurs.GestionUtilisateursService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
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
    @Autowired
    private GestionUtilisateursService gestionUtilisateursService;
    @Autowired
    private MagasinService magasinService;


    @RequestMapping(
            value = {"/comptabilite_extraction"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model, Principal principal)
    {
        System.out.println("printing the name of principal");
        String name=principal.getName();
        System.out.println(name);

        List<Utilisateur> utilisateurs=gestionUtilisateursService.getUtilisateurByIdUtilisateur(name);
        if(utilisateurs==null || utilisateurs.size()==0 || utilisateurs.get(0).getMagasin()==null)
            return "405";

        model.addAttribute("magasin",utilisateurs.get(0).getMagasin());
        return "comptabilite_extract";
    }




    @RequestMapping(
            value = {"/comptabilite_extraction_send.json"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
        public String postCreateComptaTransfert(@RequestBody Comptab[] comptas) {

        System.out.println("In The COntroller");
        if(comptas==null){
            System.out.println("comptas is null   ");
            return "comptas is null   ";
        }

        Integer idMagasin=comptas[comptas.length-1].getIdCompta();
        List<Magasin> magasins=magasinService.getMagasinById(idMagasin);
        if(magasins==null ||magasins.size()==0)
            return "102";


        SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date date;
        java.sql.Date dateSql;
        Compta compta;

        for(int i=0;i<comptas.length-1;i++){
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
                        comptas[i].getObservationCompta(),magasins.get(0)));
                if(compta==null)
                    return "101";
            } catch (ParseException e) {
                e.printStackTrace();
            }


        }

        return "100";

    }


    @RequestMapping(
            value = {"/comptabilite_extraction_transferts_send.json"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
        public String postCreateTransferts(@RequestBody TransfertO[] transferts) {

        System.out.println("In The COntroller");
        if(transferts==null){
            System.out.println("comptas is null   ");
            return "200 ";
        }

        Integer idMagasin=transferts[transferts.length-1].getIdTransfert();
        System.out.println("l'id du magasin is :"+idMagasin);
        List<Magasin> magasins=magasinService.getMagasinById(idMagasin);
        if(magasins==null ||magasins.size()==0)
            return "202";


        SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date date;
        java.sql.Date dateSql;
        Transfert transfert;

        for(int i=0;i<transferts.length-1;i++){
            System.out.println("Trabnsfert : "+i);
            System.out.println("Date "+transferts[i].getDateTransfert());
            System.out.println("Montant "+transferts[i].getMontantTransfert());
            System.out.println("Depense "+transferts[i].getTransferant());
            try {
                date=dateFormatter.parse(transferts[i].getDateTransfert());
                dateSql=new java.sql.Date(date.getTime());
                transfert=gestionService.creerTransfert(new Transfert(dateSql,transferts[i].getJourTransfert(),
                        transferts[i].getMontantTransfert(),transferts[i].getTransferant(),transferts[i].getObservationTransfert(),magasins.get(0)));
                if(transfert==null)
                    System.out.println("Transfert not stocked at :" +i +"Date : "+transferts[i].getDateTransfert());
            } catch (ParseException e) {
                e.printStackTrace();
            }


        }

        return "100";

    }




}
