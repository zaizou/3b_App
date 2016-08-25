package dz.ifa.service.gestion;

import dz.ifa.model.gestion.Compta;
import dz.ifa.model.gestion.Transfert;
import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import dz.ifa.model.gestion_utilisateurs.Notification;
import dz.ifa.model.gestion_utilisateurs.Tache;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;

import javax.jnlp.IntegrationService;
import java.sql.Date;
import java.util.List;

/**
 * Created by Yazid on 18/06/2016.
 */
public interface GestionService {
    public List<Compta> getAllCompta();
    public Compta creerCompta(Compta compta);
    public Integer supprimerCompta(Compta compta);

    public List<Transfert> getAllTransfert();
    public Transfert creerTransfert(Transfert transfert);
    public Integer supprimerTransfert(Transfert transfert);

    public List<Compta> getComptaByDate(Date date);
    public List<Transfert> getTransfertByDate(Date date);

    public List<Compta> getComptaById(Integer id);
    public List<Transfert> getTransfertById(Integer id);




}
