package dz.ifa.controller.vitrine;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yazid on 04/08/2016.
 */
@Controller
public class ShopController {


    @RequestMapping(
            value = {"/shop"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model) {
        //model.addAttribute("listFonctionnalites", fonctionnalites);
        return "shop";
    }


}
