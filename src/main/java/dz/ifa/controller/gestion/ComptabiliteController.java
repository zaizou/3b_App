package dz.ifa.controller.gestion;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Assou on 23/08/2016.
 */
@Controller
public class ComptabiliteController {




    @RequestMapping(
            value = {"/comptabilite_extraction"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model) {
        return "comptabilite_extract";
    }


}
