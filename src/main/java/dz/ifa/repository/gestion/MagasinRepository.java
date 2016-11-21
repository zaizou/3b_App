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

	@Query("SELECT m FROM Magasin m WHERE (m.nomDossierStockage) = (:dossier_stockage)")
	public List<Magasin> getMagasinByNomDossierStockage(@Param("dossier_stockage") String dossier_stockage);




	@Query("SELECT m FROM Magasin m WHERE (m.IdMagasin) = (:idMagasin)")
	public List<Magasin> getMagasinById(@Param("idMagasin") Integer idMagasin);

	@Query("SELECT m FROM Magasin m WHERE (m.type) = (:type)")
	public List<Magasin> getMagasinByType(@Param("type") String type);

	@Query("SELECT m FROM Magasin m WHERE (m.ordre) = (:ordre)")
	public List<Magasin> getMagasinByOrdre(@Param("ordre") Integer ordre);


	@Query("SELECT m FROM Magasin m WHERE (m.responsableMagasin.id) = (:idReponsable)")
	public List<Magasin> getMagasinByIdResponsable(@Param("idReponsable") String idReponsable);


	@Query("select new Magasin(m.latitude, m.longitude) from Magasin m where m.nomMagazin = ?1")
	List<Magasin> findMagasinLatLongByNom(String nom);


}
