package dz.ifa.controller.gestion;

import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.service.gestion.MagasinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Assou on 27/08/2016.
 */
@Controller
public class GestionMagasinsController {

    @Autowired
    private MagasinService magasinService;

    @RequestMapping(
            value = {"/gestion_magasins_magasins"},
            method = {RequestMethod.GET}
    )
    public String getUtilisateurs(Model model) {
        List<Magasin> magasins = magasinService.getAllMagasins();
        if (magasins == null)
            magasins = new ArrayList<>();
        model.addAttribute("listMagasins", magasins);
        return "gestion_magasins";
    }


    @RequestMapping(value = "/gestion_magasins_get_magasin.html", method = RequestMethod.GET)
    public String getUtilisateur(@RequestParam("id_magasin") Integer id_magasin, Model model) {
        List<Magasin> magasins=magasinService.getMagasinById(id_magasin);
        if(magasins.size()==0){
            System.out.println("Magasin inexistant");
            return "404";
        }
        System.out.println("Magasin Existe   "+magasins.get(0).getNomMagazin());

        model.addAttribute("magasin", magasins.get(0));
        return "gestion_magasins_pages/magasin_detail";
    }




}
