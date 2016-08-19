package dz.ifa.repository.shop;

import dz.ifa.model.gestion_utilisateurs.Fonctionnalite;
import dz.ifa.model.shop.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleRepository extends JpaRepository<Article,String> {
	Article save(Article article);

	@Query("SELECT c FROM Fonctionnalite c WHERE (c.designation) = (:designation)")
	public List<Fonctionnalite> getFonctionnaliteByDesignation(@Param("designation") String designation);


	@Query("SELECT c FROM Fonctionnalite c WHERE (c.idFonctionnalite) = (:idFonctionnalite)")
	public List<Fonctionnalite> getFonctionnaliteById(@Param("idFonctionnalite") Integer idFonctionnalite);

}
