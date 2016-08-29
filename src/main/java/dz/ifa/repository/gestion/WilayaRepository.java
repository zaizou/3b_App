package dz.ifa.repository.gestion;

import com.sun.deploy.net.proxy.WIExplorerAutoProxyHandler;
import dz.ifa.model.gestion_utilisateurs.Wilaya;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Assou on 29/08/2016.
 */
@Repository
public interface WilayaRepository  extends JpaRepository<Wilaya,Integer> {
    Wilaya save(Wilaya wilaya);

    @Query("SELECT w FROM Wilaya w WHERE (w.matriculeWilaya) = (:matr)")
    public List<Wilaya> getWilayaByMatricule(@Param("matr") Integer matr);


    @Query("SELECT w FROM Wilaya w WHERE (w.intituleWilaya) = (:intitule)")
    public List<Wilaya> getWilayaByIntitule(@Param("intitule") String intitule);
}
