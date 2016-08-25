package dz.ifa.model.gestion;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

/**
 * Created by Assou on 25/08/2016.
 */
@Entity
@Table
public class Compta {
    @Id
    private Integer idCompta;
    @Column
    private Date dateCompta;
    @Column
    private String jourCompta;
    @Column
    private Double montantCompta;
    @Column
    private Double depense;
    @Column
    private String observationCompta;


    public Compta() {

    }

    public Compta(Date dateCompta, Double montantCompta, Double depense) {
        this.dateCompta = dateCompta;
        this.montantCompta = montantCompta;
        this.depense = depense;
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
