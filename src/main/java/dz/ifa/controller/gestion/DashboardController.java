package dz.ifa.controller.gestion;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Assou on 19/08/2016.
 */

@Controller
public class DashboardController {


    @RequestMapping(
            value = {"/gestion_dashboard"},
            method = {RequestMethod.GET}
    )
    public String getFonctionnalites(Model model) {
        return "dashboard";
    }
}
