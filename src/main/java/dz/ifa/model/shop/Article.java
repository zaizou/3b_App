package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Article {

    @Column
    private String model;
    @ElementCollection
    private List<String> imageUrl;
    @Column
    private String type;  //Chaussure //Habillellement

    @Column
    private String categorie;

    @OneToOne
    @JsonManagedReference
    private Prix prixArticle;
    @ManyToOne
    @JsonManagedReference
    private Marque marqueArticle;
    @ManyToMany
    @JsonManagedReference
    private List<Couleur> couleurs;

    @OneToMany
    @JsonManagedReference
    private List<Article> relatedArticles;

    @ManyToMany
    @JsonManagedReference
    private List<Mesure> mesure;


    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer idArticle;


    public Article() {
    }




    public List<Mesure> getMesure() {
        return mesure;
    }

    public void setMesure(List<Mesure> mesure) {
        this.mesure = mesure;
    }

    public Integer getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(Integer idArticle) {
        this.idArticle = idArticle;
    }


    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public List<String> getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(List<String> imageUrl) {
        this.imageUrl = imageUrl;
    }

    public List<Article> getRelatedArticles() {
        return relatedArticles;
    }

    public void setRelatedArticles(List<Article> relatedArticles) {
        this.relatedArticles = relatedArticles;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }



    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public Prix getPrixArticle() {
        return prixArticle;
    }

    public void setPrixArticle(Prix prixArticle) {
        this.prixArticle = prixArticle;
    }

    public Marque getMarqueArticle() {
        return marqueArticle;
    }

    public void setMarqueArticle(Marque marqueArticle) {
        this.marqueArticle = marqueArticle;
    }

    public List<Couleur> getCouleurs() {
        return couleurs;
    }

    public void setCouleurs(List<Couleur> couleurs) {
        this.couleurs = couleurs;
    }
}
