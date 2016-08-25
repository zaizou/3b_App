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
public class Transfert {
    @Id
    private Integer idTransfert;
    @Column
    private Date dateTransfert;
    @Column
    private String jourTransfert;
    @Column
    private Double montantTransfert;
    @Column
    private String transferant;
    @Column
    private String observationTransfert;


    public Transfert() {
    }

    public Transfert(Date dateTransfert, Double montantTransfert) {
        this.dateTransfert = dateTransfert;
        this.montantTransfert = montantTransfert;
    }

    public Integer getIdTransfert() {
        return idTransfert;
    }

    public void setIdTransfert(Integer idTransfert) {
        this.idTransfert = idTransfert;
    }

    public Date getDateTransfert() {
        return dateTransfert;
    }

    public void setDateTransfert(Date dateTransfert) {
        this.dateTransfert = dateTransfert;
    }

    public String getJourTransfert() {
        return jourTransfert;
    }

    public void setJourTransfert(String jourTransfert) {
        this.jourTransfert = jourTransfert;
    }

    public Double getMontantTransfert() {
        return montantTransfert;
    }

    public void setMontantTransfert(Double montantTransfert) {
        this.montantTransfert = montantTransfert;
    }

    public String getTransferant() {
        return transferant;
    }

    public void setTransferant(String transferant) {
        this.transferant = transferant;
    }

    public String getObservationTransfert() {
        return observationTransfert;
    }

    public void setObservationTransfert(String observationTransfert) {
        this.observationTransfert = observationTransfert;
    }
}
