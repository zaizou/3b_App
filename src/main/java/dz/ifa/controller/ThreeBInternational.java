package dz.ifa.controller;

import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.service.gestion.MagasinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yazid on 02/08/2016.
 */
@Controller
public class ThreeBInternational  {
    @Autowired
    private MagasinService magasinService;



    @RequestMapping(
            value = {"/home.html"},
            method = {RequestMethod.GET}
    )
    public String getNomenclaturesComptables(Model model) {

        System.out.println("Hello from there");

        List<Magasin> magasinsHaut=magasinService.getMagasinByOrdre(0);
        if(magasinsHaut==null)
            magasinsHaut=new ArrayList<>();
        List<Magasin> magasinsBas=magasinService.getMagasinByOrdre(1);
        if(magasinsBas==null)
            magasinsBas=new ArrayList<>();

        System.out.println("Magasins Haut Count : "+magasinsHaut.size());


        model.addAttribute("magasinsHauts", magasinsHaut);
        model.addAttribute("magasinsBas", magasinsBas);
        return "home";
    }



}
