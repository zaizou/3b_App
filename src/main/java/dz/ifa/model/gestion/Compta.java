package dz.ifa.model.gestion;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import dz.ifa.model.gestion_utilisateurs.Magasin;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Assou on 25/08/2016.
 */
@Entity
@Table
public class Compta {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer idCompta;
    @Column
    private Date dateCompta;
    @Column
    private String jourCompta;
    @Column
    private Integer jour;
    @Column
    private  Integer mois;
    @Column
    private Integer annee;
    @Column
    private Double montantCompta;
    @Column
    private Double depense;
    @Column
    private String observationCompta;
    @ManyToOne
    @JsonManagedReference
    private Magasin magasin;


    public Compta() {

    }

    public Compta(Date dateCompta, String jourCompta, Double montantCompta, Double depense, String observationCompta, Magasin magasin) {
        this.dateCompta = dateCompta;
        this.jourCompta = jourCompta;
        this.montantCompta = montantCompta;
        this.depense = depense;
        this.observationCompta = observationCompta;
        this.magasin = magasin;
    }

    public Compta(Date dateCompta, String jourCompta, Double montantCompta, Double depense, String observationCompta) {
        this.dateCompta = dateCompta;
        this.jourCompta = jourCompta;
        this.montantCompta = montantCompta;
        this.depense = depense;
        this.observationCompta = observationCompta;
    }

    public Compta(Date dateCompta, Double montantCompta, Double depense, Magasin magasin) {
        this.dateCompta = dateCompta;
        this.montantCompta = montantCompta;
        this.depense = depense;
        this.magasin = magasin;
    }


    public Integer getJour() {
        return jour;
    }

    public void setJour(Integer jour) {
        this.jour = jour;
    }

    public Integer getMois() {
        return mois;
    }

    public void setMois(Integer mois) {
        this.mois = mois;
    }

    public Integer getAnnee() {
        return annee;
    }

    public void setAnnee(Integer annee) {
        this.annee = annee;
    }

    public Magasin getMagasin() {
        return magasin;
    }

    public void setMagasin(Magasin magasin) {
        this.magasin = magasin;
    }

    public Integer getIdCompta() {
        return idCompta;
    }

    public void setIdCompta(Integer idCompta) {
        this.idCompta = idCompta;
    }

    public Date getDateCompta() {
        return dateCompta;
    }

    public void setDateCompta(Date dateCompta) {
        this.dateCompta = dateCompta;
    }

    public String getJourCompta() {
        return jourCompta;
    }

    public void setJourCompta(String jourCompta) {
        this.jourCompta = jourCompta;
    }

    public Double getMontantCompta() {
        return montantCompta;
    }

    public void setMontantCompta(Double montantCompta) {
        this.montantCompta = montantCompta;
    }

    public Double getDepense() {
        return depense;
    }

    public void setDepense(Double depense) {
        this.depense = depense;
    }

    public String getObservationCompta() {
        return observationCompta;
    }

    public void setObservationCompta(String observationCompta) {
        this.observationCompta = observationCompta;
    }
}
