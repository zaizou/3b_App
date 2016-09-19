package dz.ifa.controller.gestion;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import dz.ifa.model.gestion_utilisateurs.Wilaya;
import dz.ifa.repository.gestion.MagasinRepository;
import dz.ifa.repository.gestion.WilayaRepository;
import dz.ifa.service.gestion.MagasinService;
import dz.ifa.service.gestion_utilisateurs.GestionUtilisateursService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Assou on 27/08/2016.
 */
@Controller
public class GestionMagasinsController {

    @Autowired
    private MagasinService magasinService;
    @Autowired
    private GestionUtilisateursService gestionUtilisateursService;
    @Autowired
    private WilayaRepository wilayaRepository;
    @Autowired
    private MagasinRepository magasinRepository;


    @RequestMapping(
            value = {"/gestion_dashboard"},
            method = {RequestMethod.GET}
    )
    public String getDashboard(Model model) {
        List<Magasin> magasins = magasinService.getAllMagasins();
        if (magasins == null)
            magasins = new ArrayList<Magasin>();
        model.addAttribute("listMagasins", magasins);
        return "dashboard";
    }


    @RequestMapping(
            value = {"/gestion_magasins_magasins"},
            method = {RequestMethod.GET}
    )
    public String getMagasins(Model model) {
        List<Magasin> magasins = magasinService.getAllMagasins();
        if (magasins == null)
            magasins = new ArrayList<Magasin>();

        model.addAttribute("listMagasins", magasins);
        return "gestion_magasins";
    }


    @RequestMapping(
            value = {"/wilayas_list.json"},
            method = {RequestMethod.GET}
    )
    public List<Wilaya> getWilayasList() {
        List<Wilaya> wilayas = wilayaRepository.findAll();
        if (wilayas == null)
            wilayas = new ArrayList<>();
        return wilayas;
    }

    @RequestMapping(value = "/gestion_magasins_get_magasin.html", method = RequestMethod.GET)
    public String getMagasin(@RequestParam("id_magasin") Integer id_magasin, Model model) {
        List<Magasin> magasins = magasinService.getMagasinById(id_magasin);
        if (magasins.size() == 0) {
            System.out.println("Magasin inexistant");
            return "404";
        }
        System.out.println("Magasin Existe   " + magasins.get(0).getNomMagazin());

        model.addAttribute("magasin", magasins.get(0));
        return "gestion_magasins_pages/magasin_detail";
    }


    @RequestMapping(
            value = {"/gestion_magasin_magasin_create"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postMagasin(@RequestParam("nom") String nom,
                              @RequestParam(value = "wilaya", required = false) String wilaya,
                              @RequestParam("responsable") String responsable,
                              @RequestParam(value = "latitude", required = false) Double latitude,
                              @RequestParam(value = "longitude", required = false) Double longitude,
                              @RequestParam(value = "addresse", required = false) String addresse
    ) {


        try {

            int matriculeW = Integer.parseInt(wilaya);
            List<Wilaya> wilayas=wilayaRepository.getWilayaByMatricule(matriculeW);
            if(wilayas.size()==0 || wilayas.get(0)==null)
                return "105"; /// Wilaya n'existe pas


            if (magasinService.getMagasinByIdResponsable(responsable).size() > 0)
                //pas de responsable de plusieurs magasins
                return "101";
            Magasin magasin;
            List<Utilisateur> utilisateurs = gestionUtilisateursService.getUtilisateurByIdUtilisateur(responsable);
            if (utilisateurs == null || utilisateurs.size() == 0)
                return "102";

            if (longitude == null || latitude == null || addresse == null)
                magasin = new Magasin(nom, utilisateurs.get(0));

            magasin = new Magasin(nom, addresse, latitude, longitude, utilisateurs.get(0));
            magasin.setWilayaMagasin(wilayas.get(0));
            if (magasinService.creerMagasin(magasin) != null)
                return "100";
            else return "103";

        } catch (Exception e) {
            e.printStackTrace();
            return "104"; ///Format incorrect du Matricule Wilaya
        }

    }





    @RequestMapping(
            value = {"/gestion_magasin_magasin_edit"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postMagasin(@RequestParam("idMagasin") Integer idMagasin,
                              @RequestParam("nomMagasin") String nomMagasin,
                              @RequestParam("ancienResponsable") String ancienResponsable,
                              @RequestParam("responsable") String responsable,
                              @RequestParam("wilayaMagasin") String wilaya,
                              @RequestParam(value = "latitudeMag", required = false) Double latitude,
                              @RequestParam(value = "longitudeMag", required = false) Double longitude,
                              @RequestParam(value = "adresseMag", required = false) String addresse
    ) {


        try {

            int matriculeW = Integer.parseInt(wilaya);
            List<Wilaya> wilayas=wilayaRepository.getWilayaByMatricule(matriculeW);
            if(wilayas.size()==0 || wilayas.get(0)==null)
                return "105"; /// Wilaya n'existe pas


            if (magasinService.getMagasinByIdResponsable(responsable).size() > 0 && ancienResponsable==responsable)
                //pas de responsable de plusieurs magasins
                return "101";


            Magasin magasin;
            List<Utilisateur> utilisateurs = gestionUtilisateursService.getUtilisateurByIdUtilisateur(responsable);
            if (utilisateurs == null || utilisateurs.size() == 0)
                return "102";

            if (longitude == null || latitude == null || addresse == null)
                magasin = new Magasin(nomMagasin, utilisateurs.get(0));

            magasin = new Magasin(nomMagasin, addresse, latitude, longitude, utilisateurs.get(0));
            magasin.setWilayaMagasin(wilayas.get(0));
            magasin.setIdMagasin(idMagasin);
            if (magasinService.creerMagasin(magasin) != null)
                return "100";
            else return "103";

        } catch (Exception e) {
            e.printStackTrace();
            return "104"; ///Format incorrect du Matricule Wilaya
        }

    }














    @RequestMapping(
            value = {"/gestion_magasin_magasin_create_remove"},
            method = {RequestMethod.POST}
    )
    @ResponseBody
    public String postRemoveMagasin(@RequestParam("nom_magasin") Integer nom_magasin ) {

        List<Magasin> magasins=magasinRepository.getMagasinById(nom_magasin);
        if(magasins.size()==0 || magasins.get(0)==null)
            return "102";
        Magasin magasin=magasins.get(0);
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("------------------------");
        System.out.println("Suppression du Magasin "+magasin.getNomMagazin());

        Integer result= magasinService.supprimerMagasin(magasin);
        if(result !=null){
            System.out.println("Utilisateur Removed "+result);
            return "100";
        }
        else
            return "101";

    }






}
