package dz.ifa.repository.gestion;

import dz.ifa.model.gestion.Compta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;


@Repository
public interface ComptaRepository extends JpaRepository<Compta,Integer> {
	Compta save(Compta compta);

	@Query("SELECT c FROM Compta c WHERE (c.dateCompta) = (:date)")
	public List<Compta> getComptaByDate(@Param("date") Date date);

/*
	@Query("SELECT c FROM Compta c WHERE (c.annee)  BETWEEN (:anneeDebut) AND (:anneeFin)= ")
	public List<Compta> getComptaByDate(@Param("moisDebut") Integer  moisDebut,@Param("moisFin") Integer  moisFin,@Param("anneeDebut") Integer  anneeDebut,@Param("anneeFin") Integer  anneeFin);
*/


	@Query("SELECT c FROM Compta c WHERE (c.magasin.IdMagasin) =  (:idMagasin) AND   (c.dateCompta)   BETWEEN (:dateDebut) AND (:dateFin)")
	public List<Compta> getComptaBetweenDates(@Param("idMagasin") Integer idMagasin,@Param("dateDebut") Date dateDebut,@Param("dateFin") Date dateFin);



	public List<Compta> findByOrderByDateComptaAsc();

	@Query("SELECT c FROM Compta c WHERE (c.idCompta) = (:idComp)")
	public List<Compta> getComptaById(@Param("idComp") Integer idComp);

}
