package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.*;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Article {

    @Column
    private String model;
    @Column
    private String imageUrl;
    @Column
    private String type;  //Chaussure //Habillellement
    @Column Double pointure;
    @Column
    private String categorie;

    @OneToOne
    @JsonManagedReference
    private Prix prixArticle;
    @ManyToOne
    @JsonManagedReference
    private Marque marqueArticle;
    @ManyToOne
    @JsonManagedReference
    private Couleur couleur;

    @Id
    private Integer idArticle;


    public Article() {
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

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Double getPointure() {
        return pointure;
    }

    public void setPointure(Double pointure) {
        this.pointure = pointure;
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

    public Couleur getCouleur() {
        return couleur;
    }

    public void setCouleur(Couleur couleur) {
        this.couleur = couleur;
    }











}
