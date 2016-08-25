package dz.ifa.repository.gestion;

import dz.ifa.model.gestion.Transfert;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;


@Repository
public interface TransfertRepository extends JpaRepository<Transfert,Date> {
	Transfert save(Transfert transfert);

	@Query("SELECT c FROM Transfert c WHERE (c.dateTransfert) = (:date)")
	public List<Transfert> getTransfertByDate(@Param("date") Date date);


	@Query("SELECT c FROM Transfert c WHERE (c.idTransfert) = (:idTrans)")
	public List<Transfert> getTransfertById(@Param("idTrans") Integer idTrans);

}
