package dz.ifa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yazid on 02/08/2016.
 */
@Controller
public class ThreeBInternational {

    @RequestMapping(
            value = {"/3b_international"},
            method = {RequestMethod.GET}
    )
    public String getNomenclaturesComptables() {
        return "3b_international";
    }



}
