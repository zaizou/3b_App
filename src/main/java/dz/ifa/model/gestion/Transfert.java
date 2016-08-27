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
    @ManyToOne
    @JsonManagedReference
    private Magasin magasin;


    public Transfert() {
    }

    public Transfert(Date dateTransfert, String jourTransfert, Double montantTransfert, String transferant, String observationTransfert, Magasin magasin) {
        this.dateTransfert = dateTransfert;
        this.jourTransfert = jourTransfert;
        this.montantTransfert = montantTransfert;
        this.transferant = transferant;
        this.observationTransfert = observationTransfert;
        this.magasin = magasin;
    }

    public Transfert(Date dateTransfert, Double montantTransfert, String transferant, Magasin magasin) {
        this.dateTransfert = dateTransfert;
        this.montantTransfert = montantTransfert;
        this.transferant = transferant;
        this.magasin = magasin;
    }

    public Magasin getMagasin() {
        return magasin;
    }

    public void setMagasin(Magasin magasin) {
        this.magasin = magasin;
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
