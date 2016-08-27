package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Prix {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer idPrix;
    @Column
    private Double valeur;
    @ManyToOne
    @JsonManagedReference
    Monnaie monnaie;

    public Prix() {
    }

    public Prix(Double valeur, Monnaie monnaie) {
        this.valeur = valeur;
        this.monnaie = monnaie;
    }

    public Integer getIdPrix() {
        return idPrix;
    }

    public void setIdPrix(Integer idPrix) {
        this.idPrix = idPrix;
    }

    public Double getValeur() {
        return valeur;
    }

    public void setValeur(Double valeur) {
        this.valeur = valeur;
    }

    public Monnaie getMonnaie() {
        return monnaie;
    }

    public void setMonnaie(Monnaie monnaie) {
        this.monnaie = monnaie;
    }
}
