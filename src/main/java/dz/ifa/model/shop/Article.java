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



    @Id
    private Integer idArticle;

    public Integer getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(Integer idArticle) {
        this.idArticle = idArticle;
    }
}
