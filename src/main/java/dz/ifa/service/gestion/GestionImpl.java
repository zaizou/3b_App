package dz.ifa.service.gestion;

import dz.ifa.model.gestion.Compta;
import dz.ifa.model.gestion.Transfert;
import dz.ifa.repository.gestion.ComptaRepository;
import dz.ifa.repository.gestion.TransfertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

/**
 * Created by Assou on 25/08/2016.
 */
@Service("GestionService")
public class GestionImpl implements GestionService {

    @Autowired
    private ComptaRepository comptaRepository;
    @Autowired
    private TransfertRepository transfertRepository;


    @Override
    public List<Compta> getAllCompta() {
        return comptaRepository.findByOrderByDateComptaAsc();
    }

    @Override
    public Compta creerCompta(Compta compta) {
        return comptaRepository.save(compta);
    }

    @Override
    public Integer supprimerCompta(Compta compta) {
        try{
            comptaRepository.delete(compta);
            return compta.getIdCompta();
        }
        catch (Exception e){
            System.out.println("Error deleting the compta element : \n"+compta.toString());
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Transfert> getAllTransfert() {
        return transfertRepository.findByOrderByDateTransfertAsc();
    }

    @Override
    public Transfert creerTransfert(Transfert transfert) {
        return transfertRepository.save(transfert);
    }

    @Override
    public Integer supprimerTransfert(Transfert transfert) {
        try{
            transfertRepository.delete(transfert);
            return transfert.getIdTransfert();
        }
        catch (Exception e){
            System.out.println("Error deleting the transfert element : \n"+transfert.toString());
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public List<Compta> getComptaByDate(Date date) {
        return comptaRepository.getComptaByDate(date);
    }

    @Override
    public List<Transfert> getTransfertByDate(Date date) {
        return transfertRepository.getTransfertByDate(date);
    }

    @Override
    public List<Compta> getComptaById(Integer id) {
        return comptaRepository.getComptaById(id);
    }

    @Override
    public List<Transfert> getTransfertById(Integer id) {
        return transfertRepository.getTransfertById(id);
    }


}
