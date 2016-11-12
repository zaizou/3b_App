package dz.ifa.service.gestion;

import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.repository.gestion.MagasinRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Assou on 27/08/2016.
 */
@Service("MagasinService")
public class MagasinImpl implements MagasinService {

    @Autowired
    private MagasinRepository magasinRepository;

    public List<Magasin> getAllMagasins() {
        return magasinRepository.findAll();
    }

    public Magasin creerMagasin(Magasin magasin) {
        return magasinRepository.save(magasin);
    }

    public Integer supprimerMagasin(Magasin magasin) {
        try{
            magasinRepository.delete(magasin);
            return magasin.getIdMagasin();
        }
        catch (Exception e){
            System.out.println("Error deleting the Magasin element : \n"+magasin.getNomMagazin());
            e.printStackTrace();
            return null;
        }
    }

    public List<Magasin> getMagasinByNom(String nom) {
        return magasinRepository.getMagasinByNom(nom);
    }

    public List<Magasin> getMagasinById(Integer idMagasin) {
        return magasinRepository.getMagasinById(idMagasin);
    }

    public List<Magasin> getMagasinByType(String type) {
        return magasinRepository.getMagasinByType(type);
    }
    public List<Magasin> getMagasinByOrdre(Integer ordre) {
        return magasinRepository.getMagasinByOrdre(ordre);
    }









    public List<Magasin> getMagasinByIdResponsable(String idResponsable) {
        return magasinRepository.getMagasinByIdResponsable(idResponsable);
    }
}
