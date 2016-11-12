package dz.ifa.service.gestion;

import dz.ifa.model.gestion.Compta;
import dz.ifa.model.gestion_utilisateurs.Magasin;
import dz.ifa.repository.gestion.MagasinRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Assou on 27/08/2016.
 */
public interface MagasinService {

    public List<Magasin> getAllMagasins();
    public Magasin creerMagasin(Magasin magasin);

    public List<Magasin> getMagasinByType(String type);
    public List<Magasin> getMagasinByOrdre(Integer ordre);


    public Integer supprimerMagasin(Magasin magasin);
    public List<Magasin> getMagasinByNom(String nom);
    public List<Magasin> getMagasinById(Integer idMagasin);
    public List<Magasin> getMagasinByIdResponsable(String idResponsable);



}
