package dz.ifa.repository.gestion;

import dz.ifa.model.gestion_utilisateurs.ImageMagasin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ImageMagasinRepository extends JpaRepository<ImageMagasin,Integer> {
	ImageMagasin save(ImageMagasin imageMagasin);

	@Query("SELECT m FROM ImageMagasin m WHERE (m.nomMagasin) = (:nom)")
	public List<ImageMagasin> getImageMagasinByNomMagasin(@Param("nom") String nom);


	@Query("SELECT m FROM ImageMagasin m WHERE (m.id) = (:idImageMagasin)")
	public List<ImageMagasin> getImageMagasinById(@Param("idImageMagasin") Integer idImageMagasin);


}
