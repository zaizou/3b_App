package dz.ifa.controller;

import dz.ifa.model.gestion_utilisateurs.ImageMagasin;
import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.model.gestion_utilisateurs.Wilaya;
import dz.ifa.repository.gestion.ImageMagasinRepository;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.codec.Utf8;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 * Created by Assou on 13/11/2016.
 */

@Controller
public class FileUploadController {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    ImageMagasinRepository imageMagasinRepository;



/*

    @RequestMapping(
            value = {"/management_get_magasin_images.json"},
            method = {RequestMethod.GET}
    )
    public List<Wilaya> getImagesList() {
        List<Wilaya> wilayas = wilayaRepository.findAll();
        if (wilayas == null)
            wilayas = new ArrayList<>();
        return wilayas;
    }
*/



    @RequestMapping(value = "/uploadfile.html", method = RequestMethod.POST)
    public
    @ResponseBody
    ResponseEntity handleFileUpload(@RequestParam MultipartFile file,@RequestParam String name,@RequestParam String  dossier) {
        System.out.println("we are in the method");
        System.out.println("the name of the file is :");
        System.out.println(dossier);
        String foldername=dossier;// .replaceAll("[^\\x00-\\x7F]", "");
        //foldername=name.replaceAll(" ", "");
        //System.out.println("::"+foldername);

        if (!file.isEmpty()) {
            System.out.println("entered");
            try {

                String uploadsDir = "/uploads/"+foldername;
                String originalfilename=file.getOriginalFilename();
                String realPathtoUploads = request.getServletContext().getRealPath(uploadsDir);
                if (!new File(realPathtoUploads).exists()) {
                    new File(realPathtoUploads).mkdir();
                }
                String filename="/"+( imageMagasinRepository.count() +1 ) ;
                String orgName = file.getOriginalFilename().split("\\.(?=[^\\.]+$)")[1];
                String filePath = realPathtoUploads +filename+"."+orgName;
                File dest = new File(filePath);
                file.transferTo(dest);
                imageMagasinRepository.save(new ImageMagasin(uploadsDir+filename+"."+orgName, originalfilename,name,file.getSize(),dossier));

            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
        else
            System.out.println("file is empty");


         return null;

    }

}
