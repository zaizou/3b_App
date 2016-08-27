package dz.ifa.repository.gestion;

import dz.ifa.model.gestion.Compta;
import dz.ifa.model.gestion_utilisateurs.Magasin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;


@Repository
public interface MagasinRepository extends JpaRepository<Magasin,Integer> {
	Magasin save(Magasin magasin);

	@Query("SELECT m FROM Magasin m WHERE (m.nomMagazin) = (:nom)")
	public List<Magasin> getMagasinByNom(@Param("nom") String nom);


	@Query("SELECT m FROM Magasin m WHERE (m.IdMagasin) = (:idMagasin)")
	public List<Magasin> getMagasinById(@Param("idMagasin") Integer idMagasin);

}
