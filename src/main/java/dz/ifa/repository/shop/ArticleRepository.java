package dz.ifa.repository.shop;

import dz.ifa.model.shop.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleRepository extends JpaRepository<Article,Integer> {
	Article save(Article article);

	@Query("SELECT a FROM Article a WHERE (a.model) = (:model)")
	public List<Article> getArticleByModel(@Param("model") String model);


	@Query("SELECT a FROM Article a WHERE (a.idArticle) = (:idArticle)")
	public List<Article> getArticleById(@Param("idArticle") Integer idArticle);

}
