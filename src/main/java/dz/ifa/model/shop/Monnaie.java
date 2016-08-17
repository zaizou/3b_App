package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonBackReference;
import dz.ifa.model.gestion_utilisateurs.Preference;
import org.hibernate.validator.group.GroupSequenceProvider;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table(name = "monnaie")
public class Monnaie {
    @Id
    private String label;
    @Column
    private String nom;
    @Column
    private Double poids;

    @OneToMany(mappedBy = "monnaie",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Prix> prixList;


    public Monnaie() {
    }

    public Monnaie(String label, String nom, Double poids) {
        this.label = label;
        this.nom = nom;
        this.poids = poids;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Double getPoids() {
        return poids;
    }

    public void setPoids(Double poids) {
        this.poids = poids;
    }

    public List<Prix> getPrixList() {
        return prixList;
    }

    public void setPrixList(List<Prix> prixList) {
        this.prixList = prixList;
    }
}
